<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<section class="">
	<div id="enroll-container">
		<form name="memberEnrollFrm" action="${pageContext.request.contextPath}/member/kakaoEnroll" method="post" onsubmit="return validate();">
			
			<div id="userid-container">
				<input type="text" class="form-control" placeholder="아이디(4글자 이상)" name="memberEmail" id="memberEmail_" required>
				<span class="guide ok">아이디 사용 가능합니다</span>
				<span class="guide error">아이디 사용 불가능합니다</span>s
				<input type="hidden" name="checkEmail" id="checkEmail"/>
			</div>		
			<input type="text" class="form-container" placeholder="닉네임" name="memberNickname" id="memberNickname" required>
			<input type="text" class="form-container" placeholder="이름" name="memberName" id="memberName" required>
			<input type="tel" class="form-control" placeholder="전화번호 (예:01012345678)" name="memberPhone" id="memberPhone" maxlength="11" required>
			<input type="text" class="form-control" placeholder="주소" name="memberAddress" id="memberAddress">
			<input type="submit" class="btn btn-outline-success" value="가입">&nbsp;
			<input type="submit" class="btn btn-outline-success" value="취소">
			
		</form>
	</div>
	
</section>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
