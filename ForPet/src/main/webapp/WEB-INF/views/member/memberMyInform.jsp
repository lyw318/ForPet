<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/myPage/myPageCommon.jsp" %>
<link rel="stylesheet" href="${path }/resources/css/memberEnroll.css" />
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

.myPageMain_right .form-control{
	 min-height: 22px;
    outline: none;
    border: 1px solid rgba(198, 155, 118, 0.5);
}
</style>

<div class="myPageMain_right">

	<div id="enroll-container">
		<form name="memberUpdateFrm" action="${pageContext.request.contextPath}/member/memberMyInform" method="post"
			onsubmit="return fn_update();">


			<div id="userid-container">
				<label>회원 이메일<input type="text" class="form-control" name="memberEmail" id="memberEmail_"
					value="${loggedMember.memberEmail}" readonly></label></br>
				<input type="hidden" class="form-control" name="checkEmail" id="checkEmail" />
			</div>
			
			<label>회원 닉네임<input type="text" class="form-control" placeholder="닉네임" name="memberNickname" id="memberNickname"
				value="${loggedMember.memberNickname}" readonly></label></br>
			<label>회원 이름<input type="text" class="form-control" placeholder="이름" name="memberName" id="memberName"
				value="${loggedMember.memberName}" readonly></label></br>
			<label>전화번호<input type="tel" class="form-control" placeholder="전화번호 (예:01012345678)" name="memberPhone"
				id="memberPhone" maxlength="11" value="${loggedMember.memberPhone}" readonly></label></br>
			<label>주소<input type="text" class="form-control" placeholder="주소" name="memberAddress" id="memberAddress"
				value="${loggedMember.memberAddress}" readonly></label>
			

		</form>
	</div>

</div>

<script>

</script>

</section>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>