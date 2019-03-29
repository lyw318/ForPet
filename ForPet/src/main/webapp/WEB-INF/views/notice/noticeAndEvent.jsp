<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<style>
	.notice-table {
	display:table;
	}
 	.table-row{
	display:table-row;
	}
 	.table-cell{
	display:table-cell;
	} 
</style>

<section>
	<div class="noticeAndEvent-wrapper">
		<div class="notice-wrapper">
			<div class="notice-title">
				<p>공지사항</p>
				<p>forPet의 새로운 소식들을 확인하세요.</p>
			</div>
			<div class="notice-table">
				<div class="table-row">
					<div class="table-cell">글번호</div>
					<div class="table-cell">작성자</div>
					<div class="table-cell">제목</div>
					<div class="table-cell">내용</div>
					<div class="table-cell">조회수</div>
					<div class="table-cell">작성일</div>
				</div>
				<div class="table-row">
					<div class="table-cell">왜안돼1</div>
					<div class="table-cell">왜안돼2</div>
					<div class="table-cell">왜안돼3</div>
					<div class="table-cell">왜안돼4</div>
					<div class="table-cell">왜안돼5</div>
					<div class="table-cell">왜안돼6</div>
				</div>
			</div>
		</div> 
		<div class="event-wrapper">
			<div class="event-title">
				<p>이벤트</p>
			</div>
			<div class="event-preview">
				<div>이벤트이미지</div>
				<div>이벤트제목</div>
				<div>이벤트시작일</div>
				<div>이벤트종료일</div>
			</div>
		</div>
	</div>


</section>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
