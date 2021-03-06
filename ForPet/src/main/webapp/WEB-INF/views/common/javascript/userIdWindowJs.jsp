<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
	
	// 쪽지 갯수 관련 로직
	$(function() {
		var loggedMember = "${loggedMember}";
		if(loggedMember != "" ) {
			$.ajax({
		        url: "${path}/community/msgReadCount",
		        dataType: "html",
		        success: function (data) {
		            $("#msgReadCountIdHeader").html(data+"&nbsp;개");	
		        }
		    })
		}
	})
	
	function fn_msgReadCount() {
		var loggedMember = "${loggedMember}";
		if(loggedMember != "" ) {
			$.ajax({
		        url: "${path}/community/msgReadCount",
		        dataType: "html",
		        success: function (data) {
		            $("#msgReadCountIdHeader").html(data+"&nbsp;개");
		            $(".msgReadCountBox").html(data);
		        }
		    })
		    
		}
	}
	
	function fn_msgSendWindow(memberNickname,loc) {
		var url="${path}/community/msgSendWindow";
		window.open("","messageSend","width=510, height=410, top=100");
		$(".sendBoxFrm>input[name='memberNickname']").val(memberNickname);
		$(".sendBoxFrm").attr("action",url);
		$(".sendBoxFrm").attr("target","messageSend");
		$(".sendBoxFrm").submit();
	}

	// userBox 기능 구현 로직
	$(function () {
	    userBox();
	});
	
	function userBox() {
	    var memberNickname = "";
	    for (var i = 0; i < $('.userBox').length; i++) {
	        memberNickname = $('.userBox').get(i).innerText;
	        userBoxAjax(memberNickname, i);
	    }
	}
	
	function userBox1() {
	    var memberNickname = "";
	    for (var i = 0; i < $('.userBox').length; i++) {
	        memberNickname = $('.userBox').children('.userIdBox').get(i).innerText;
	        userBoxAjax(memberNickname, i);
	    }
	}
	
	function userBoxAjax(memberNickname, i) {
	    $.ajax({
	        url: "${path}/main/userIdPopUp.do",
	        data: { "memberNickname": memberNickname },
	        dataType: "html",
	        success: function (data) {
	            $('.userBox').get(i).innerHTML = data;
	            fn_msgReadCount();
	        }
	    })
	}
	
	
	// 클래스(userBox) 클릭 : 소메뉴 출력 
	var idWindowTarget;
	$(function () {
	    $(document).on("click", ".userBox", function (e) {
	    	var loggedMember = "${loggedMember}"; 
	    	if(loggedMember != "") {
	            $(".userBox").children('.userId_oneself').css("display", "none");
		        $(".userBox").children('.userId_other').css("display", "none");
		        idWindowTarget = $(e.currentTarget);
		        var clickUserId = idWindowTarget.children('.userIdBox').get(0).innerText;
		        if (clickUserId == '${loggedMember.memberNickname }') {
		            idWindowTarget.children('.userId_oneself').css("display", "block");
		            idWindowTarget.children('.userId_other').css("display", "none");
		
		        }
		        else {
		            idWindowTarget.children('.userId_oneself').css("display", "none");
		            idWindowTarget.children('.userId_other').css("display", "block");
		            idWindowTarget.children('.userId_other').children('.userTable').children('.userIdWindow_Id').text(clickUserId + " 님 정보보기");
		        }    		
	    	}
	
	    })
	});
	
	$(function () {
	    var userTableCloseFlag = true;
	    $(".userBox").click(function () {
	        userTableCloseFlag = false;
	    })
	    $(".userBox").mouseleave(function () {
	        userTableCloseFlag = true;
	    })
	    $("html, body").on("click", function () {
	        if (userTableCloseFlag) {
	            $(".userBox").children('.userId_oneself').css("display", "none");
	            $(".userBox").children('.userId_other').css("display", "none");
	        }
	    })
	});
	
	function fnA_friendInsert(memberNickname,e) {
	    $.ajax({
	        url: "${path}/community/friendInsert",
	        data: { "memberNickname": memberNickname },
	        dataType: "html",
	        success: function (data) {
	        	userBox1();
	    	    if(idWindowTarget.get(0).baseURI == 'http://localhost:9090/forpet/community/friendList') {
	    	    	location.href="${path}/community/friendList";
	    	    }
	    	    if(idWindowTarget.get(0).baseURI == 'http://192.168.20.229:9090/forpet/community/friendList') {
	    	    	location.href="${path}/community/friendList";
	    	    }
	    	    if(idWindowTarget.get(0).baseURI == 'http://192.168.20.8:9090/forpet/community/friendList') {
	    	    	location.href="${path}/community/friendList";
	    	    }
	    	    
	    	    if(idWindowTarget.get(0).baseURI == 'http://localhost:9090/forpet/community/msgList') {
	    	    	location.href="${path}/community/msgList";
	    	    }
	    	    if(idWindowTarget.get(0).baseURI == 'http://localhost:9090/forpet/community/msgListBlock') {
	    	    	location.href="${path}/community/msgListBlock";
	    	    }
	    	    if(idWindowTarget.get(0).baseURI == 'http://192.168.20.229:9090/forpet/community/msgList') {
	    	    	location.href="${path}/community/msgList";
	    	    }
	    	    if(idWindowTarget.get(0).baseURI == 'http://192.168.20.229:9090/forpet/community/msgListBlock') {
	    	    	location.href="${path}/community/msgListBlock";
	    	    }

	        }
	    })

	}
	
	function fnA_friendBlock(memberNickname) {
	    $.ajax({
	        url: "${path}/community/friendBlock",
	        data: { "memberNickname": memberNickname },
	        dataType: "html",
	        success: function (data) {
	        	userBox1();
	    		if(idWindowTarget.get(0).baseURI == 'http://localhost:9090/forpet/community/friendList') {
	    	    	location.href="${path}/community/friendList";
	    	    }
	    	    if(idWindowTarget.get(0).baseURI == 'http://192.168.20.229:9090/forpet/community/friendList') {
	    	    	location.href="${path}/community/friendList";
	    	    }
	    	    if(idWindowTarget.get(0).baseURI == 'http://192.168.20.8:9090/forpet/community/friendList') {
	    	    	location.href="${path}/community/friendList";
	    	    }
	    	    
	    	    if(idWindowTarget.get(0).baseURI == 'http://localhost:9090/forpet/community/msgList') {
	    	    	location.href="${path}/community/msgList";
	    	    }
	    	    if(idWindowTarget.get(0).baseURI == 'http://localhost:9090/forpet/community/msgListBlock') {
	    	    	location.href="${path}/community/msgListBlock";
	    	    }
	    	    if(idWindowTarget.get(0).baseURI == 'http://192.168.20.229:9090/forpet/community/msgList') {
	    	    	location.href="${path}/community/msgList";
	    	    }
	    	    if(idWindowTarget.get(0).baseURI == 'http://192.168.20.229:9090/forpet/community/msgListBlock') {
	    	    	location.href="${path}/community/msgListBlock";
	    	    }

	        }
	    })

	}
	
</script>