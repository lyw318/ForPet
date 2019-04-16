   <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <c:set var="path" value="${pageContext.request.contextPath}"/>

   <jsp:include page="/WEB-INF/views/common/header.jsp">
      <jsp:param value="Dev 등록결과" name="pageTitle"/>
   </jsp:include>
   <link rel="stylesheet" href="${path }/resources/css/boardStyle.css"/>
   <section>
   		
   		<div class="board-wrpper">
       			<div class="board-title">
       				<p>소모임 게시판</p>
       				<div class="board-search-menu">
		    		<div><input type="text" placeholder="카테고리 검색" id="board-search-text" value="${param.keyword}" onkeydown="fn_search_write()" ><input type="button" value="검색" onclick="fn_board_search()"></div>
		    		<div></div>	
		    		<div></div>
		    		</div>
       			</div>
       			<div class="board-table">
       				<div class="table-header">
       					<div>글번호</div>
       					<div>제목</div>
       					<div>작성자</div>
       					<div>작성일</div>
       					<div>카테고리</div>
       				</div>
       				<c:forEach items="${sblist }" var="sb">
       				<div class="table-row">
       					<div>${sb.smallboardSeq}</div>
       					<div><a href="${path}/smallboard/smallboardView.do?smallboardSeq=${sb.smallboardSeq}" style="text-decoration:none;">${sb.smallboardTitle }</a></div>
       					<div class="userBox">${sb.memberNickname }</div>
       					<div>${sb.smallboardDate }</div>
       					<div>${sb.smallboardKategorie}</div>
       				</div>
       				</c:forEach>
       			</div>
       			<div class="board-search-menu">
       			<div style="text-align:right">
       				<c:if test="${loggedMember.memberSeq!=null}">
       				   <button class="board-write" onclick="location.href='${path}/smallboard/smallboardForm';">글쓰기</button>
       				</c:if>
       				</div>
       				</div>
       		 ${sbpage}
       		</div>
   		
   </section>
   
   <script>
   function fn_board_search(){
		 location.href='${path}/smallboard/smallboardList?keyword='+$("#board-search-text").val();
	 }
   function fn_search_write(){
		if(window.event.keyCode == 13)
		{
			fn_board_search();
		}
	 }
   
	</script>
   <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>