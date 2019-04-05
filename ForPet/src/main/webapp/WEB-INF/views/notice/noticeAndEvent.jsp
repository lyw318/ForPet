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
			<c:if test='${loggedMember!=null&&"admin" eq loggedMember.memberEmail}'>
			<button class="board-write" onclick="location.href='${path}/notice/noticeForm';">글쓰기</button>
            </c:if>
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
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
