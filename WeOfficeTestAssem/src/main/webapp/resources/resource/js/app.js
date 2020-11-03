/* 설치한 express 모듈 불러오기 */
const express = require('express');

/* 설치한 socket.io 모듈 불러오기 */
const socket = require('socket.io');

/* Node.js 기본 내장 모듈 불러오기 */
const http = require('http');

/* Node.js 기본 내장 모듈 불러오기 */
const fs = require('fs');

/* express 객체 생성 */
const app = express();

/* express http 서버 생성 */
const server = http.createServer(app);

/* 생성된 서버를 socket.io에 바인딩 */
const io = socket(server);

app.use('/resources', express.static(__dirname + '/../src/main/webapp/resources'));
app.use('/js', express.static('./static/js'));


/* Get 방식으로 / 경로에 접속하면 실행 됨 */
app.get('/', function(request, response) {
  fs.readFile('../src/main/webapp/WEB-INF/views/channel.html', function(err, data) {
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
  /* 접속했을 때 DB에서 채팅로그 받기 */
  socket.on('connect', function(data){
    console.log(data);
    socket.emit('getChatLog', 'data');
  });

  /* 전송한 메시지 받기 */
  socket.on('message', function(data) {
    console.log(data);

    /* DB에 받은 메시지 저장 */


    /* 보낸 사람을 제외한 나머지 유저에게 메시지 전송 */
    socket.broadcast.emit('update', data);
  });

});

/* 서버를 8888 포트로 listen */
server.listen(8888, function() {
  console.log('서버 실행 중..');
});

