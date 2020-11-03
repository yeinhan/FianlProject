var socket = io();
var user_num;
var user_name;
var team;
var sel_teamNum = 0;
var sel_team;
var chkTeam = 0;

function getChatLog(){
    /* 접속 되었을 때 실행 */
    socket.emit('conn');
}

function selTeam(data){
    var emitdata = {};
    
    emitdata.pSel_teamNum = sel_teamNum;

    sel_teamNum = team[data][0];
    sel_team = team[data][1];
    $('#content > div > main > div > menu > h2').text(sel_team);
    console.log(sel_team);
    console.log(sel_teamNum);
    console.log(emitdata.pSel_teamNum);
    emitdata.sel_teamNum = sel_teamNum;
    emitdata.user_num = user_num;
    emitdata.user_name = user_name;
    
    $('div.chat:not(.format) ul').empty();
    socket.emit('getChatLog', emitdata);
}

const Chat = (function() {
    socket.on('getTeam', function(data){

        if(data.length == 0){
            socket.emit('getInfo');
        }else{
            chkTeam = 1;
            team = data;
            console.log(team);
            sel_teamNum = team[0][0];
            sel_team = team[0][1];
            socket.emit('getInfo');
    
            teamList();
        }
    });
    
    socket.on('getInfo', function(data){
        if(chkTeam == 0){
            $('#content > div > main > aside > header > h3').text(user_name);
            $('#userDropdown > span').text(user_name);
        }else{
            var emitdata = {};
            console.log(data);
            user_num = data[0][0];
            user_name = data[0][1];
    
            emitdata.sel_teamNum = sel_teamNum;
            emitdata.user_num = user_num;
            emitdata.user_name = user_name;
            emitdata.pSel_teamNum = 0;
    
            $('#content > div > main > aside > header > h3').text(user_name);
            $('#userDropdown > span').text(user_name);
            socket.emit('getChatLog', emitdata);
        }
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
    
    //채널선택시 소속된 멤버
    socket.on('selChannel', function(data){
        sel_teamNum = data;
    });

    //멤머리스트
    socket.on('memberList', function(data){
        addMember(data);
    });

    /* 메시지 받을 경우 */
    socket.on('update', function(data){
        appendMessageTag("left", data.user_name, data.message);
    });

    //채널에 멤버가 조인했을 경우
    socket.on('joinMem', function(data){
        joinMem(data);
    });

    socket.on('leaveMem', function(data){
        leaveMem(data);
    });

    socket.on('leaveMem2', function(data){
        leaveMem2(data);
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
        $('div.chat:not(.format) ul').scrollTop($('div.chat').prop('scrollHeight'));
    }

    // 메세지 전송
    function sendMessage(message) {
        // 서버에 전송하는 코드로 후에 대체
        const data = {
            "type" : "message",
            "user_num" : user_num,
            "user_name" : user_name,
            "p_id" : sel_teamNum,
            "message" : message
        };

        appendMessageTag("right", data.user_name, data.message);
        socket.emit('message', data);
    }

    // 메세지 입력박스 내용 지우기
    function clearTextarea() {
        $('div.input-div textarea').val('');
    }

    //채널리스트 생성
    function teamList(){
        if(team.length == null || team.length == 0){
            
        }else{
            $('#content > div > main > div > menu > h2').text(team[0][1]);

            var html = '';
            for(var i=0; i<team.length; i++){
                html += '<li class="channel focusable channel-text" onclick="selTeam(' + i + ')">' + 
                '<span class="channel-name">' + team[i][1] + '</span></i></button></li>';
                
            }
            $('#content > div > main > aside > section > ul:nth-child(2)').html(html);
        }
    }

    //접속할 때 접속한 멤버리스트
    function addMember(data){
        console.log(data);
        console.log(sel_teamNum);

        var html = '';
        
        for(var i in data){
            html += '<li id="memberId' + i + '" class="channel focusable channel-text"><span class="channel-name">' + data[i] + '</span>' + 
            '<button class="button" role="button" aria-label="Invite"><!-- <svg><use xlink:href="#icon-invite" /></svg> --></button></li>';
        }
        $('#content > div > main > aside > section > ul:nth-child(4)').html(html);
    }

    //접속한 멤버리스트 생성
    function joinMem(data){
        console.log(data.user_name+"들어옴");
        var html = '<li id="memberId' + data.user_num + '" class="channel focusable channel-text"><span class="channel-name">' + data.user_name + '</span>' + 
            '<button class="button" role="button" aria-label="Invite"><!-- <svg><use xlink:href="#icon-invite" /></svg> --></button></li>';
        
        $('#content > div > main > aside > section > ul:nth-child(4)').append(html);
    }

    //떠난 멤버리스트
    function leaveMem(data){
        console.log(data.user_num+"떠남");
        $('#memberId'+data.user_num).remove();
    };

    function leaveMem2(data){
        console.log(data+"떠남");
        $('#memberId'+data).remove();
    };

    return {
        'init' : init
    };
})();

$(function() {
    console.log(sessionStorage.length);
    Chat.init();
    getChatLog();
});