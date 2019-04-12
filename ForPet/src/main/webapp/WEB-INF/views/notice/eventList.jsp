<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<link rel="stylesheet" href="${path }/resources/css/boardStyle.css"/>

<section>
		<div class="board-wrapper">
			<div class="board-title">
				<p>이벤트</p>
			</div>
			<div class="board-view-wrapper">
				<c:if test="${e!=null}">
              <div class="board-view">
                  <div class="board-view-title">
                      <div>제목</div>
                      <div>${e.eventTitle}</div>
                  </div>
                  <div class="board-view-wrtier">
                      <div>작성자</div>
                      <div>${e.memberNickname}</div>
                  </div>
                  <div class="board-view-date-hit">
                      <div>이벤트기간</div>
                      <div>${e.eventStartString} 부터 ${e.eventFinishString} 까지</div>
                      <div>조회수</div>
                      <div>${e.readCount}</div>
                  </div>
                  <div class="board-view-content">
                     <span class="board-images">
                     	<c:forEach items="${ilist}" var="img">
                     		<img src="${path}/resources/upload/eventImage/${img}">
                     	</c:forEach>
                     </span>
                      <div>
                             ${e.eventContent}
                      </div>
                  </div>
               </div>
                <div class="board-view-btns">
                	<c:if test='${loggedMember!=null&&("admin" eq loggedMember.memberEmail || e.memberNickname eq loggedMember.memberNickname)}'>
                     <input type="button" value="수정" onclick="fn_updateEvent(${e.eventSeq})">
                     <input type="button" value="삭제" onclick="fn_deleteEvent(${e.eventSeq})">
                     </c:if>
                </div>
                </c:if>
			</div>
					<select name="type" id="event-type" style="margin:10px;height:30px;width:200px"; onchange="fn_event_type()">
							<option value="">진행중인 이벤트</option>
							<option value="finish" ${param.type eq "finish" ? "selected":""}>종료된 이벤트</option>
							<option value="all" ${param.type eq "all" ? "selected":""}>모든 이벤트</option>
					</select>
			<div class="board-preview">
				<c:forEach items="${elist}" var="e">
				<div class="board-preview-element" onclick="fn_event_view(${e.eventSeq})">
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
function fn_event_view(viewNo)
{
	location.href='${path}/event/eventList?viewNo='+viewNo+'&'+fn_type_str()+fn_keyword_str()+fn_cpage_str();
}

function fn_e_board_search(){
	 location.href='${path}/event/eventList?keyword='+$("#board-e-search-text").val()+'&'+fn_type_str();
}

function fn_e_search_write(){
	if(window.event.keyCode == 13)
	{
		fn_e_board_search();
	}
}

function fn_event_type(){
	location.href='${path}/event/eventList?type='+$("#event-type").val()+'&'+fn_keyword_str();
}

function fn_type_str(){
	if(${param.type eq null?"false":"true"})
	{
		return "type=${param.type}&"; 
	}
	else
	{
		return "";
	}
}

function fn_keyword_str(){
	if(${param.keyword eq null?"false":"true"})
	{
		return "keyword=${param.keyword}&"; 
	}
	else
	{
		return "";
	}
}

function fn_cpage_str(){
	if(${param.cPage eq null?"false":"true"})
	{
		return "cPage=${param.cPage}&"; 
	}
	else
	{
		return "";
	}
}

function fn_deleteEvent(viewNo) {
	 if(confirm("정말 게시글을 삭제하시겠습니까?"))
	 {
		 location.href='${path}/event/eventDelete.do?viewNo='+viewNo;
	 }
}

function fn_updateEvent(viewNo) {
	 location.href='${path}/event/eventUpdate?viewNo='+viewNo;
}

</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
