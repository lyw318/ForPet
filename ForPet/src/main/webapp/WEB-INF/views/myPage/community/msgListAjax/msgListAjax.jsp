<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
 
<div class="msgListContentAjax">
	<c:forEach items="${mmList }" var="mm">
		<div class="msgListContent">
			<div class="msgListColcc">
				<input type="checkbox" class="mlCheckBoxOne" value="${mm.mMsgSeq}"/>
			</div>
			<div class="msgListColRecUser">
				<div class="userBox">
					${mm.memberNickname }
				</div>
			</div>
			<div class="msgListColCont" onclick="fn_msgListOne('${mm.mMsgSeq}')">
				${fn:substring(mm.mMsgContent,0,50) }
				<c:if test="${fn:length(mm.mMsgContent) > 50 }">
					...
				</c:if>
			</div>
			<div class="msgListColDate" onclick="fn_msgListOne('${mm.mMsgSeq}')">
				${mm.mMsgDate }
			</div>
			<div class="msgListColBlock">${mm.mMsgType }</div>
		</div>
	</c:forEach>
</div>
${mmPage}