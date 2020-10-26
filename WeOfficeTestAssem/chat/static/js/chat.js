var socket = io();
var user_num;
var user_name;

function getChatLog(){
    /* 접속 되었을 때 실행 */
    socket.emit('conn');
}

const Chat = (function() {

    socket.on('getInfo', function(data){
        user_num = data[0][0];
        user_name = data[0][1];
        socket.emit('getChatLog');
    });

    /* 채팅로그 받아오기 */
    socket.on('getChatLog', function(data){
        console.log(data);
        for(var i = data.length-1; i >= 0; i--){
            if(data[i][0] == user_num){
                appendMessageTag("right", data[i][1], data[i][2]);
            }else{
                appendMessageTag("left", data[i][1], data[i][2]);
            }
        }
    });

    /* 메시지 받을 경우 */
    socket.on('update', function(data){
        appendMessageTag("left", data.user_name, data.message);
    });

    // init 함수
    function init() {
        // enter 키 이벤트
        $(document).on('keydown', 'div.input-div textarea', function(e) {
            if (e.keyCode == 13 && !e.shiftKey) {
                e.preventDefault();
                const message = $(this).val();

                // 메시지 전송
                sendMessage(message);
                // 입력창 clear
                clearTextarea();
            }
        });
    }

    // 메세지 태그 생성
    function createMessageTag(LR_className, senderName, message) {
        // 형식 가져오기
        let chatLi = $('div.chat.format ul li').clone();

        // 값 채우기
        chatLi.addClass(LR_className);
        chatLi.find('.sender span').text(senderName);
        chatLi.find('.message span').text(message);

        return chatLi;
    }

    // 메세지 태그 append
    function appendMessageTag(LR_className, senderName, message) {
        const chatLi = createMessageTag(LR_className, senderName, message);

        $('div.chat:not(.format) ul').append(chatLi);

        // 스크롤바 아래 고정
        $('div.chat:not(.format) ul').scrollTop($('div.chat:not(.format) ul').prop('scrollHeight'));
		//$('div.chat').scrollTop($('div.chat').prop('scrollHeight'));
    }

    // 메세지 전송
    function sendMessage(message) {
        // 서버에 전송하는 코드로 후에 대체
        const data = {
            "type" : "message",
            "user_num" : user_num,
            "user_name" : user_name,
            "message" : message
        };

        appendMessageTag("right", data.user_name, data.message);
        socket.emit('message', data);
    }

    // 메세지 입력박스 내용 지우기
    function clearTextarea() {
        $('div.input-div textarea').val('');
    }

    return {
        'init' : init
    };
})();

$(function() {
    console.log(sessionStorage.length);
    Chat.init();
    getChatLog();
});