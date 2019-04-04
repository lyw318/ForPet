<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/myPage/myPageCommon.jsp" %>

<div class="myPageMain_top">
	<div class="myPageMain_topBox">
		<div class="myPageMain_loc">
			<ul>
				<li onclick="location.href='${path}/main/myPageMain'">
					<img src="${path}/resources/images/back.png" width="18px">
				</li>
				<li>Member</li>
				<li>마이 페이지에 오신 걸 환영합니다.</li>
			</ul>
		</div>
	</div>
</div><br />

<style>
input[type='password'],[type='text'],[type='tel']{
	display:block;
}
</style>

<div class="myPageMain_right">

	<div id="enroll-container">
		<form name="memberUpdateFrm" action="${pageContext.request.contextPath}/member/memberMyInform" method="post"
			onsubmit="return fn_update();">


			<div id="userid-container">
				<input type="text" class="form-control" name="memberEmail" id="memberEmail_"
					value="${loggedMember.memberEmail}" readonly>
				<input type="hidden" name="checkEmail" id="checkEmail" />
			</div>
			
			<input type="text" class="form-container" placeholder="닉네임" name="memberNickname" id="memberNickname"
				value="${loggedMember.memberNickname}" required>
			<input type="text" class="form-container" placeholder="이름" name="memberName" id="memberName"
				value="${loggedMember.memberName}" required>
			<input type="tel" class="form-control" placeholder="전화번호 (예:01012345678)" name="memberPhone"
				id="memberPhone" maxlength="11" value="${loggedMember.memberPhone}" required>
			<input type="text" class="form-control" placeholder="주소" name="memberAddress" id="memberAddress"
				value="${loggedMember.memberAddress}">
			

		</form>
	</div>

</div>

<script>

</script>

</section>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>