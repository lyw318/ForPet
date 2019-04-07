<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<link rel="stylesheet" href="${path }/resources/css/boardStyle.css"/>
<!-- align-self: center;
align-items: flex-start; 등등 활용 가능-->
<section>
	<div class="noticeAndEvent-wrapper">
		<div class="board-wrapper">
			<div class="board-title">
				<p>공지사항</p>
			</div>
			<div class="board-table">
				<div class="table-header">
					<div>글번호</div>
					<div>제목</div>
					<div>작성자</div>
					<div>조회수</div>
					<div>작성일</div>
				</div>
				<c:forEach items="${nlist}" var="n">
				<div class="table-row">
					<div>${n.noticeSeq}</div>
					<div class="board-data-title" onclick="noticeView(${n.noticeSeq})">${n.noticeTitle}</div>
					<div class="userBox">${n.memberNickname}</div>
					<div>${n.readCount}</div>
					<div>${n.noticeDate}</div>
				</div>
				</c:forEach>
			</div>
			<div class="board-search-menu">
		    	<div><input type="text" id="board-search-text" value="${param.keyword}" onkeydown="fn_search_write()" ><input type="button" value="검색" onclick="fn_board_search()"></div>
		    	<div></div>
		    	<div></div>
		    	<div>
		    		<c:if test='${loggedMember!=null&&"admin" eq loggedMember.memberEmail}'>
					<button class="board-write" onclick="location.href='${path}/notice/noticeForm';">글쓰기</button>
		            </c:if>
		    	</div>
		    </div>
			${npage}
		</div> 
		<div class="board-wrapper">
			<div class="board-title">
				<p>이벤트</p>
			</div>
			<div class="board-preview">
				<div>이벤트이미지</div>
				<div>이벤트제목</div>
				<div>이벤트시작일</div>
				<div>이벤트종료일</div>
			</div>
		</div>
	</div>
	<form action="${path}/notice/noticeList" method="post" id="noticeView">
		<input type="hidden" name="viewNo" id="noticeViewNo"/>
	</form>
</section>

<script>
function noticeView(viewNo)
{
	$("#noticeViewNo").val(viewNo);
	$("#noticeView").submit();
}

function fn_board_search(){
	 location.href='${path}/notice/noticeList?keyword='+$("#board-search-text").val();
}
function fn_search_write(){
	if(window.event.keyCode == 13)
	{
		fn_board_search();
	}
}
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
