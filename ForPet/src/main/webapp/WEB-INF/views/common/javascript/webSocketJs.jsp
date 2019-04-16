<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>

	//Msg Alert websocket
	socket = new WebSocket("ws:localhost:9090/forpet/msgAlert")
	
	socket.onopen = function(e) {
	
	}
	
	socket.onmessage = function(e) {
	    var msgBox = JSON.parse(e.data);
	    
	    //쪽지 보내기 로직
	    if(msgBox["locFlag"] == "msgSend") {
		    if("${loggedMember != null}") {
		        if("${loggedMember.memberNickname}" == msgBox["memberNickname"]) {
		        	var msg = msgBox["mMsgRcvNickname"] + " 님에게 쪽지를 보냈습니다.";
		            $('.msgAlert').get(0).innerHTML = msg;
		            msgAlertEvent();
		        }
		        if("${loggedMember.memberNickname}" == msgBox["mMsgRcvNickname"]) {
		        	if(msgBox["friendType"] != "차단") {
		        		var msg = msgBox["memberNickname"] + " 님에게 쪽지를 받았습니다.";
			            $('.msgAlert').get(0).innerHTML = msg;
			            msgAlertEvent();	
		        	}
		        }
		    }
	    }
	    
	    
	    
	}
	
	socket.onclose = function(e) {
	}
	
	// 쪽지 알림 이벤트 로직
	var msgAlertBoxTimer1;
	var msgAlertBoxTimer2;
	var msgAlertBoxTimer3;
	function msgAlertEvent() {
		//초기화
		clearTimeout(msgAlertBoxTimer3);
		clearTimeout(msgAlertBoxTimer2);
		clearTimeout(msgAlertBoxTimer1);
		$('.msgAlertBox').css("display","display");
		$('.msgAlertBox').css("opacity","0");
		
	    $('.msgAlertBox').css("display","flex");
	    msgAlertBoxTimer1 = setTimeout(function(){
	        $('.msgAlertBox').css("opacity","1");
	        msgAlertBoxTimer2 = setTimeout(function(){
	            $('.msgAlertBox').css("opacity","0");
	            msgAlertBoxTimer3 = setTimeout(function(){
	                $('.msgAlertBox').css("display","none");
	            },500)
	        },2000);
	    },1)
	}
	
	// 쪽지 알림 로직
	function sendPopupMsg(msg) {
	    socket.send(JSON.stringify(msg));
	}

</script>