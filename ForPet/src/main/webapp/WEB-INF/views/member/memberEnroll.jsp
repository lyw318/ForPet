<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ tablib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ tablib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ tablib prefix="fn" uri="http://java.sun.com/jsp/jstl/fn"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
 --%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<link rel="stylesheet" href="${path }/resources/css/memberEnroll.css" />
<section class="">
	<div id="enroll-container">
		<form name="memberEnrollFrm" action="${pageContext.request.contextPath}/member/memberEnrollEnd.do" method="post" onsubmit="return validate();">
			<div id="userid-container">
				<input type="text" class="form-control" placeholder="아이디(4글자 이상)" name="memberEmail" id="memberEmail_" required>
				<span class="guide ok">아이디 사용 가능합니다</span>
				<span class="guide errer">아이디 사용 불가능합니다</span>
				<input type="hidden" name="checkEmail" id="checkEmail"/>
			</div>		
			<input type="password" class="form-container" placeholder="비밀번호" name="memberPassword" id="memberPassword_" required>
			<input type="password" class="form-container" placeholder="비밀번호 확인" id="memberPassword2" required>					
			<input type="text" class="form-container" placeholder="닉네임" name="memberNickname" id="memberNickname" required>
			<input type="text" class="form-container" placeholder="이름" name="memberName" id="memberName" required>
			<input type="tel" class="form-control" placeholder="전화번호 (예:01012345678)" name="memberPhone" id="memberPhone" maxlength="11" required>
			<input type="text" class="form-control" placeholder="주소" name="memberAddress" id="memberAddress">
			<input type="submit" class="btn btn-outline-success" value="가입">&nbsp;
			<input type="submit" class="btn btn-outline-success" value="취소">
			
		</form>
	</div>
</section>

<script>
$(function() {
	$('#memberEmail_').keyup(function() {
		var memberEmail = $('#memberEmail_').val().trim();
		if(memberEmail.length<4) {
			$('.guide').hide();
			return;
		}

		$.ajax({
			url:"${path}/member/checkEmail.do",
			data:{"memberEmail":$("#memberEmail_").val()},
			success:function(data) {
				console.log(data);
				console.log(typeof data);
				
				if(data.trim() == 'true') {
					$(".guide.ok").show();
					$(".guide.error").hide();
				}
				else {
					$(".guide.ok").hide();
					$(".guide.error").show();
				}
			}
		})
	})
})

$(function () {
		$("#memberPassword2").blur(function () {
			var pw = $("#memberPassword_").val();
			var pwck = $("#memberPassword2").val();
			if (pw != pwck) {
				alert("패스워드가 일치하지 않습니다.");
				$("#memberPassword2").val("");
				$("#memberPassword_").focus();
			}
		})
	})

	function validate() {
		var memberEmail = $("#memberEmail)").val().trim();
		if (memberEmail.length < 4) {
			alert("아이디를 4글자 이상 작성하세요.");
			return false;
		}
	}
</script>


<%@ include file="/WEB-INF/views/common/footer.jsp"%>
