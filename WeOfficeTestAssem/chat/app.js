/* 설치한 express 모듈 불러오기 */
const express = require('express');

/* 설치한 socket.io 모듈 불러오기 */
const socket = require('socket.io');

/* Node.js 기본 내장 모듈 불러오기 */
const http = require('http');

/* Node.js 기본 내장 모듈 불러오기 */
const fs = require('fs');

const bodyParser = require('body-parser');

/* express 객체 생성 */
const app = express();

/* express http 서버 생성 */
const server = http.createServer(app);

/* 생성된 서버를 socket.io에 바인딩 */
const io = socket(server);

 /* redis와 session설정 */
const redis = require('redis');
//const session = require('express-session');
//const redisStore = require('connect-redis');
// //redis session
var client = redis.createClient();

/* 오라클db 모듈 불러오기 */
const oracledb = require('oracledb');

/* db연결정보 불러오기 */
const dbConfig = require('./static/db/config/dbConfig');
const { SSL_OP_PKCS1_CHECK_1 } = require('constants');

/* db 오토커밋 설정 */
oracledb.autoCommit = true;

app.use('/resources', express.static(__dirname + '/../src/main/webapp/resources'));
app.use('/js', express.static('./static/js'));
app.use(bodyParser.urlencoded({ extended : true }));


/* Get 방식으로 /chat 경로에 접속하면 실행 됨 */
 app.get('/', function(request, response) {
   fs.readFile('../src/main/webapp/WEB-INF/views/channel.html', function(err, data) {
     if(err) {
       response.send('에러');
     } else {
       console.log();
       response.writeHead(200, {'Content-Type':'text/html'});
       response.write(data);
       response.end();
     }
   });
 });

var user_num;


/* Post 방식으로 /chat 경로에 접속하면 실행 됨 */
app.post('/chat', function(request, response) {
  user_num = request.body.user_num;
  if(user_num == null){
    response.writeHead(302, {'Location':'http://localhost:8787/final/main.do'});
    response.end();
  }else{
    fs.readFile('../src/main/webapp/WEB-INF/views/channel.html', function(err, data) {
      if(err) {
        response.send('에러');
      } else {
        console.log(user_num + '번 접속');
        response.writeHead(200, {'Content-Type':'text/html'});
        response.write(data);
        response.end();
      }
    });
  }
});

io.sockets.on('connection', function(socket) {
  /* 접속했을 때 DB에서 채팅로그 받기 */
  socket.on('conn', function(){
    getTeam(user_num, socket);
    socket.user_num =user_num;
  });

  socket.on('getInfo', function(){
    getInfo(user_num, socket);
  });
  

  // 채팅로그받기//
  socket.on('getChatLog', function(data){
    console.log(data.pSel_teamNum+"===============");

    if(data.pSel_teamNum == 0){
      socket.join(data.sel_teamNum);
    }else if(data.pSel_teamNum != data.sel_teamNum){
      for(var i=0;i<2;i++){
        if(i == 0){
          console.log(data.pSel_teamNum+"나감");
          socket.leave(data.pSel_teamNum);
          socket.broadcast.to(data.pSel_teamNum).emit('leaveMem', data);
        }else{
          console.log(data.sel_teamNum+"들어옴");
          socket.join(data.sel_teamNum);
          socket.user_p = data.sel_teamNum;
          socket.broadcast.to(data.sel_teamNum).emit('joinMem', data);
        }
      }
    }else{
      console.log("같은방 입장");
    }

    
    getname(socket, socket.user_num, data.sel_teamNum, data.pSel_teamNum);

    chatLog(1, socket, data.sel_teamNum);
  });

  /* 전송한 메시지 받기 */
  socket.on('message', function(data) {
    
    /* DB에 받은 메시지 저장 */
    chatLog(2, socket, data);
    
    /* 보낸 사람을 제외한 나머지 유저에게 메시지 전송 */
    socket.broadcast.to(data.p_id).emit('update', data);
  });

  socket.on('disconnect', function() {
    if(socket.user_p != null){
      client.hdel(socket.user_p, socket.user_num);
      socket.broadcast.to(socket.user_p).emit('leaveMem2', socket.user_num);
    }
  })
  
});


function getname(socket, data, selTeam, pSelTeam){
  var query;

  /* 오라클db 연결 */
  oracledb.getConnection({
    user : dbConfig.user,
    password : dbConfig.password,
    connectString : dbConfig.connectString
    }, 
    function(err, conn) {
    if(err){
      console.log('접속 실패', err);
      return;
    }
    console.log('DB접속 성공');

    query = 
      'SELECT NAME FROM "User" WHERE USER_NUM = ' + "'" + data + "'";
    
    conn.execute(query, function(err, result){
      if(err){
        console.error(err.message);

        disConn(conn);
        return;
      }
      
        console.log(query);
        disConn(conn);
        
        if(pSelTeam == 0){
          client.hmset(selTeam, data, result.rows[0][0]);
          client.hgetall(selTeam,(err, obj) => {
            socket.emit('memberList', obj); 
          });
        }else{
          client.hdel(pSelTeam, data);
          client.hmset(selTeam, data, result.rows[0][0]);
          client.hgetall(selTeam,(err, obj) => {
            socket.emit('memberList', obj); 
          });
        }
    });
  });
};


//접속자가 속한 팀가져오기
function getTeam(user_num, socket){
  var query;

  /* 오라클db 연결 */
  oracledb.getConnection({
    user : dbConfig.user,
    password : dbConfig.password,
    connectString : dbConfig.connectString
    }, 
    function(err, conn) {
    if(err){
      console.log('접속 실패', err);
      return;
    }
    console.log('DB접속 성공');

    //접속자 정보
    query = 
      "SELECT P_ID, P_TITLE FROM PROJECT WHERE (USER_NUM LIKE '%," + user_num + ",%' OR USER_NUM LIKE '%," + user_num + "' OR USER_NUM LIKE '" + user_num + ",%' OR USER_NUM LIKE '" + user_num + "')";
    
    conn.execute(query, function(err, result){
      if(err){
        console.error(err.message);

         disConn(conn);
         return;
       }
      
       console.log(query);
       disConn(conn);

       socket.emit('getTeam', result.rows);
    });
  });
};

//접속자 정보 가져오기
function getInfo(user_num, socket){
  var query;

  /* 오라클db 연결 */
  oracledb.getConnection({
    user : dbConfig.user,
    password : dbConfig.password,
    connectString : dbConfig.connectString
    }, 
    function(err, conn) {
    if(err){
      console.log('접속 실패', err);
      return;
    }
    console.log('DB접속 성공');

    query = 
      'SELECT USER_NUM, NAME FROM "User" WHERE USER_NUM = ' + user_num;
    
    conn.execute(query, function(err, result){
      if(err){
        console.error(err.message);

         disConn(conn);
         return;
       }
      
       console.log(query);
       disConn(conn);
       socket.emit('getInfo', result.rows);
    });
  });
};

//채팅로그 관련
function chatLog(sel, socket, data){
  var query;
  
  console.log(data);

  /* 오라클db 연결 */
  oracledb.getConnection({
    user : dbConfig.user,
    password : dbConfig.password,
    connectString : dbConfig.connectString
  }, 
  function(err, conn) {
    if(err){
      console.log('접속 실패', err);
      return;
    }
    console.log('DB접속 성공');
    
  //채팅로그 받기//
  if(sel == 1){
    query = 
      'SELECT * FROM (SELECT U.USER_NUM, U.NAME, CM.CM_MSG FROM "ChannelMessage" CM LEFT OUTER JOIN "User" U ON CM.USER_NUM = U.USER_NUM WHERE P_ID = ' + data + ' ORDER BY CM.CM_ID DESC) WHERE ROWNUM <= 7';
    getChatLog(conn, query);
  //채팅 저장//
  }else if(sel == 2){
    query =
      "INSERT INTO "+'"ChannelMessage"'+" VALUES(ChannelMessageSEQ.NEXTVAL, :CM_MSG, SYSDATE, :USER_NUM, :P_ID)";
    insertChatLOg(conn, query, data);
  }else{
    console.log('ERROR');
  }

  console.log(query);

  });
  

  //DB에서 채팅로그 받기//
  function getChatLog(conn, query){
    //SQL문 실행//
    conn.execute(query, function(err, result){
      if(err){
        console.error(err.message);

        disConn(conn);
        return;
      }
  
      socket.emit('getChatLog', result.rows);
  
      disConn(conn);
    });
  };

  //DB에 채팅 저장//
  function insertChatLOg(conn, query, data){
    console.log(data.message)
    console.log(data.user_num)
    var binddata = [
      data.message,
      data.user_num,
      data.p_id
    ];

    console.log(binddata);

    //SQL문 실행//
    conn.execute(query, binddata, function(err, result){
      if(err){
        console.error(err.message);

        disConn(conn);
        return;
      }

      console.log(result.rowsAffected)

      disConn(conn);
    });
  }

};

/* 오라클db 연결해제 */
function disConn(conn){
  conn.close(function(err){
    if(err){
      console.error(err.message);
    }
    
    console.log('DB연결 해제')
  })
};


/* 서버를 8888 포트로 listen */
server.listen(8888, function() {
  console.log('서버 실행 중..');
});

