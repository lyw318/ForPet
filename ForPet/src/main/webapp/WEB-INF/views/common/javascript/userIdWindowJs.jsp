<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>    
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
	function userBoxAjax(memberNickname, i) {
	    $.ajax({
	        url: "${path}/main/userIdPopUp.do",
	        data: { "memberNickname": memberNickname },
	        dataType: "html",
	        success: function (data) {
	            $('.userBox').get(i).innerHTML = data;
	        }
	    })
	}
	
	// 클래스(userBox) 클릭 : 소메뉴 출력 
	var idWindowTarget;
	$(function () {
	    $(document).on("click", ".userBox", function (e) {
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
	        }
	    })
	    if(idWindowTarget.get(0).baseURI == 'http://localhost:9090/forpet/community/friendList') {
	    	location.href="${path}/community/friendList";
	    }

	}
	
	function fnA_friendBlock(memberNickname) {
	    $.ajax({
	        url: "${path}/community/friendBlock",
	        data: { "memberNickname": memberNickname },
	        dataType: "html",
	        success: function (data) {
	        }
	    })
		if(idWindowTarget.get(0).baseURI == 'http://localhost:9090/forpet/community/friendList') {
	    	location.href="${path}/community/friendList";
	    }
	}
	
</script>