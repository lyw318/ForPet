<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
                    
<c:forEach items="${friendList }" var="fl">
	<div class="friendName">
		<div class="userBox">${fl.mFriendNickname}</div>
		<button type="button" onclick="fn_friendNameClose(${fl.mFriendSeq })" class="closeBox">X</button>
	</div>
</c:forEach>