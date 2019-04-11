<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<link rel="stylesheet" href="${path }/resources/css/boardStyle.css"/>

<section>
		<div class="board-wrapper">
			<div class="board-title">
				<p>이벤트</p>
			</div>
			<div class="board-preview">
				<c:forEach items="${elist}" var="e">
				<div class="board-preview-element">
					<img class="board-preview-image" src="${path}/resources/upload/eventImage/${e.filename}"/>
					<div class="board-preview-title">${e.eventTitle}</div>
					<div class="board-preview-date">${e.eventStart}부터 ${e.eventFinish}까지</div>
				</div>
				</c:forEach>
			</div>
			<div class="board-search-menu">
				<div>
		 			<input type="text" id="board-e-search-text" value="${param.keyword}" onkeydown="fn_e_search_write()">
					<input type="button" value="검색" onclick="fn_e_board_search()">
				</div>
				<div></div>
				<div></div>
				<div>
					<c:if test='${loggedMember!=null&&"admin" eq loggedMember.memberEmail}'>
						<button class="board-write" onclick="location.href='${path}/event/eventForm';">글쓰기</button>
					</c:if>
				</div>
			</div>
			${epage}
		</div>
</section>

<script>
function fn_e_board_search(){
	 location.href='${path}/event/eventList?keyword='+$("#board-e-search-text").val();
}

function fn_e_search_write(){
	if(window.event.keyCode == 13)
	{
		fn_e_board_search();
	}
}
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
