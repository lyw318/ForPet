<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="btnLineLogin">
	<div class="userTable">
		<div class="userTableBtn" onclick="javascript:location.href='${path }/main/myPageMain'">마이페이지</div>
		<div class="userTableBtn">반려동물</div>
		<div class="userTableBtn">쪽지보내기</div>
	</div>
</div>


<script>
	
	// 아이디(userBox) 클릭 : 소메뉴 출력 
	$("#userBox").click(function () {
	    $(".userTable").css("display", "flex");
	})
	$(function () {
	    var userTableCloseFlag = true;
	    $("#userBox").click(function () {
	        userTableCloseFlag = false;
	    })
	    $("#userBox").mouseleave(function () {
	        userTableCloseFlag = true;
	    })
	    $("html, body").on("click", function () {
	        if (userTableCloseFlag) {
	            $(".userTable").css("display", "none");
	        }
	    })
	});

</script>