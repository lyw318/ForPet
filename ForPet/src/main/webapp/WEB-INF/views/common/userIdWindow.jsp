<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="path" value="${pageContext.request.contextPath}" />

<div class="petIconBox">
    <img src="${path }/resources/images/petIcon.png" style="width: 20px; height: 20px;">
</div>
<div class="userIdBox">${member.memberNickname}</div>
<div class="btnLineLogin"></div>
<div class="userId_oneself">
	<div class="userTable">
		<div class="userTableBtn" onclick="javascript:location.href='${path }/main/myPageMain'">마이페이지</div>
		<div class="userTableBtn">반려동물</div>
		<div class="userTableBtn">고객센터</div>
	</div>
</div>

<div class="userId_other">
	<div class="userTable">
		<div class="userTableBtn userIdWindow_Id" onclick="javascript:location.href='${path }'"></div>
		<div class="userTableBtn">반려동물</div>
		<c:if test="${loggedMember != null }">
			<div class="userTableBtn" onclick="fn_msgSendWindow('${member.memberNickname}')">쪽지보내기</div>
			<c:if test="${inFriFlag !=  member.memberNickname}">
				<div class="userTableBtn" onclick="fnA_friendInsert('${member.memberNickname}')">친구추가</div>
			</c:if>
			<c:if test="${blFriFlag != member.memberNickname}">
				<div class="userTableBtn" onclick="fnA_friendBlock('${member.memberNickname}')">친구차단</div>
			</c:if>
		</c:if>
	</div>
</div>

<form class="sendBoxFrm" method="post">
	<input type="hidden" name="memberNickname" value=""/>
</form>