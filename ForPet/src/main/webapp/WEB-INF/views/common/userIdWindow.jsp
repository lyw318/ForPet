<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="path" value="${pageContext.request.contextPath}" />

<div class="petIconBox">
    <img src="${path }/resources/images/petIcon.png" style="width: 20px; height: 20px;">
	<c:if test="${loggedMember != null }">
		<c:if test="${loggedMember.memberNickname == member.memberNickname}">
    		<div class="msgReadCountBox"></div>
    	</c:if>
    </c:if>
</div>
<div class="userIdBox">${member.memberNickname}</div>
<div class="btnLineLogin"></div>
<div class="userId_oneself">
	<div class="userTable">
		<div class="userTableBtn" onclick="javascript:location.href='${path }/member/memberMyInform.do'">내 정보</div>
		<div class="userTableBtn" onclick="javascript:location.href='${path}/pet/petList.do'">내 반려동물</div>
		<div class="userTableBtn" onclick="javascript:location.href='${path}/community/friendList'">내 친구</div>
		<div class="userTableBtn" onclick="javascript:location.href='${path}/community/msgList'">내 쪽지함</div>
	</div>
</div>

<div class="userId_other">
	<div class="userTable">
		<%-- 
		<div class="userTableBtn userIdWindow_Id" onclick="javascript:location.href='${path }'"></div>
		<div class="userTableBtn">반려동물</div>
		 --%>
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