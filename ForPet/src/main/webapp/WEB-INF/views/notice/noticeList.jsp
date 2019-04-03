<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<link rel="stylesheet" href="${path }/resources/css/boardStyle.css"/>

<section>
		<div class="notice-wrapper">
			<div class="board-title">
				<p>공지사항</p>
			</div>
			<div class="board-table">
				<div class="table-header">
					<div class=>글번호</div>
					<div class=>제목</div>
					<div class=>작성자</div>
					<div class=>조회수</div>
					<div class=>작성일</div>
				</div>
				<c:forEach items="${nlist}" var="n">
				<div class="table-row">
					<div>${n.noticeSeq}</div>
					<div>${n.noticeTitle}</div>
					<div>${n.memberNickname}</div>
					<div>${n.readCount}</div>
					<div>${n.noticeDate}</div>
				</div>
				</c:forEach>
			</div>
			${npage}
		</div>

</section>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>