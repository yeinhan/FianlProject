/* 설치한 express 모듈 불러오기 */
const express = require('express')

/* 설치한 socket.io 모듈 불러오기 */
const socket = require('socket.io')

/* Node.js 기본 내장 모듈 불러오기 */
const http = require('http')

/* Node.js 기본 내장 모듈 불러오기 */
const fs = require('fs')

const bodyParser = require('body-parser');

/* express 객체 생성 */
const app = express()

/* express http 서버 생성 */
const server = http.createServer(app)

/* 생성된 서버를 socket.io에 바인딩 */
const io = socket(server)

/* 오라클db 모듈 불러오기 */
const oracledb = require('oracledb');

/* db 오토커밋 설정 */
oracledb.autoCommit = true;

/* db연결정보 불러오기 */
const dbConfig = require('./static/db/config/dbConfig');

app.use('/resources', express.static(__dirname + '/../src/main/webapp/resources'));
app.use('/js', express.static('./static/js'));
app.use(bodyParser.urlencoded({ extended : true }));



// /* Get 방식으로 / 경로에 접속하면 실행 됨 */
// app.get('/', function(request, response) {
//   fs.readFile('../src/main/webapp/WEB-INF/views/dm.html', function(err, data) {
//     if(err) {
//       response.send('에러')
//     } else {
//       response.writeHead(200, {'Content-Type':'text/html'})
//       response.write(data)
//       response.end()
//     }
//   })
// })


var m1;
var m1_n;
var m2;
var m2_n;
var room;
/* Post 방식으로 /chat 경로에 접속하면 실행 됨 */
app.post('/dm', function(request, response) {
  m1 = request.body.m1;
  m1_n = request.body.m1_n;
  m2 = request.body.m2;
  m2_n = request.body.m2_n;
  if(m1 > m2){
    room = m1 + "s" + m2;
  }else{
    room = m2 + "s" + m1;
  }

  console.log(m1);
  console.log(m2);
  console.log(room);
  
  fs.readFile('../src/main/webapp/WEB-INF/views/dm.html', function(err, data) {
    if(err) {
      response.send('에러');
    } else {
      response.writeHead(200, {'Content-Type':'text/html'});
      response.write(data);
      response.end();
    }
  });
  
});


io.sockets.on('connection', function(socket) {
  socket.on('conn', function(){
    socket.m1 = m1;
    socket.m1_n = m1_n;
    socket.room = room;
    socket.join(room);
    socket.emit('getInfo',
    {
      "m1" : m1,
      "m1_n" : m1_n,
      "m2" : m2,
      "m2_n" : m2_n,
      "room" : room
    })
  });

  socket.on('getChatLog', function(){
    chatLog(1, socket, 0);
  })

/* 전송한 메시지 받기 */
  socket.on('message', function(data) {
    chatLog(2, socket, data);

    /* 보낸 사람을 제외한 나머지 유저에게 메시지 전송 */
    socket.broadcast.to(room).emit('update', data);
  })

  /* 접속 종료 */
  socket.on('disconnect', function() {
    socket.leave(room);
  })
})

function chatLog(sel, socket, data){
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
    
  //채팅로그 받기//
  if(sel == 1){
    query = 
      'SELECT * FROM (SELECT U.USER_NUM, U.NAME, DM.DM_MSG FROM DMCHAT DM LEFT OUTER JOIN "User" U ON DM.USER_NUM = U.USER_NUM WHERE R_ID = ' + "'" + socket.room + "'"  + ' ORDER BY DM.DM_ID DESC) WHERE ROWNUM <= 7';
    getChatLog(conn, query);
  //채팅 저장//
  }else if(sel == 2){
    query =
      "INSERT INTO DMCHAT VALUES(DMCHATSEQ.NEXTVAL, :DM_MSG, SYSDATE, :USER_NUM, :R_ID)";
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

    var binddata = [
      data.message,
      socket.m1,
      socket.room
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
}

/* 오라클db 연결해제 */
function disConn(conn){
  conn.close(function(err){
    if(err){
      console.error(err.message);
    }
    
    console.log('DB연결 해제')
  })
};


/* 서버를 8989 포트로 listen */
server.listen(8989, function() {
  console.log('서버 실행 중..')
})

