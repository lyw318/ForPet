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

<div class="myPageMain_right">

	<div id="myPageMemberInfo">
		<div class="vetMngInsert">
			<div class="vetMngTitle">
				내 정보
			</div>
			<div class="vetMngInfoTable">
				<div class="vetMngRow">
					<div class="vetMngColA">이메일</div>
					<div class="vetMngColV">${loggedMember.memberEmail}</div>
					<input type="hidden" name="vmEmail" value="${loggedMember.memberEmail}" />
				</div>
				<div class="vetMngRow">
					<div class="vetMngColA">닉네임</div>
					<div class="vetMngColV">${loggedMember.memberNickname}</div>
					<input type="hidden" name="vmNickname" value="${loggedMember.memberNickname}" />
				</div>
				<div class="vetMngRow">
					<div class="vetMngColA">이름</div>
					<div class="vetMngColV">${loggedMember.memberName}</div>
					<input type="hidden" name="vmName" value="${loggedMember.memberName}" />
				</div>
				<div class="vetMngRow">
					<div class="vetMngColA">전화번호</div>
					<div class="vetMngColV">${loggedMember.memberPhone}</div>
					<input type="hidden" name="vmPhone" value="${loggedMember.memberPhone}" />
				</div class="vetMngRow">
				<div class="vetMngRow">
					<div class="vetMngColA">주소</div>
					<div class="vetMngColV">${loggedMember.memberAddress}</div>
					<input type="hidden" name="vmAddress" value="${loggedMember.memberAddress}" />
				</div>
			</div>
		</div>
	</div>

</div>

<script>

</script>

</section>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>