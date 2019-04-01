<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.forpet.model.vo.Member" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<link rel="stylesheet" href="${path }/resources/css/memberEnroll.css" />

<section class="">
	<div id="enroll-container">
		<form name="memberUpdateFrm" action="${pageContext.request.contextPath}/member/memberUpdateEnd.do" method="post" onsubmit="return fn_update();">
			
			
			<div id="userid-container">
				<input type="text" class="form-control" name="memberEmail" id="memberEmail_" value="${member.memberEmail}" readonly>
				<input type="hidden" name="checkEmail" id="checkEmail"/>
			</div>		
			<input type="password" class="form-container" placeholder="비밀번호" name="memberPassword" id="memberPassword_" required>
			<input type="password" class="form-container" placeholder="비밀번호 확인" id="memberPassword2" required>					
			<input type="text" class="form-container" placeholder="닉네임" name="memberNickname" id="memberNickname" value="${member.memberNickname}" required>
			<input type="text" class="form-container" placeholder="이름" name="memberName" id="memberName" value="${member.memberName}" required>
			<input type="tel" class="form-control" placeholder="전화번호 (예:01012345678)" name="memberPhone" id="memberPhone" maxlength="11" value="${member.memberPhone}" required>
			<input type="text" class="form-control" placeholder="주소" name="memberAddress" id="memberAddress" value="${member.memberAddress}">
			<input type="submit"  class="btn btn-outline-success" value="수정">&nbsp;
			<input type="button"  onclick="fn_del();" class="btn btn-outline-success" value="탈퇴">
			
		</form>
	</div>
	
</section>
<script>
function fn_update(){
	$("[name=memberUpdateFrm]").attr("action","${path}/member/memberUpdateEnd.do");
	var updateFlag=confirm("회원정보를 수정하시겠습니까?");
	if(updateFlag){
		return true;
	}
	else{
		return false;
	}
}
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
function fn_del(){
	var updateFlag=confirm("정말 회원탈퇴하시겠습니까?");
	if(updateFlag){
		var form=$("[name=memberUpdateFrm]");
		$(form).attr("action","${path}/member/memberDel.do");
		$(form).attr("onsubmit",null);
		$(form).submit();
	}
}

</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
