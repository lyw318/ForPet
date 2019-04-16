   <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <c:set var="path" value="${pageContext.request.contextPath}"/>

   <jsp:include page="/WEB-INF/views/common/header.jsp">
      <jsp:param value="게시판" name="pageTitle"/>
   </jsp:include>
<link rel="stylesheet" href="${path }/resources/css/boardStyle.css"/>
       <section>
       		<div class="board-wrpper">
       			<div class="board-title">
       				<p>자유게시판</p>
       				
       			</div>
       			<div class="board-table">
       				<div class="table-header">
       					<div>글번호</div>
       					<div>제목</div>
       					<div>작성자</div>
       					<div>작성일</div>
       					<div>첨부파일</div>
       				</div>
       				<c:forEach items="${list }" var="b">
       				<div class="table-row">
       					<div>${b.boardSeq}</div>
       					<div><a href="${path}/board/boardView.do?boardSeq=${b.boardSeq}" style="text-decoration:none;color:rgb(144, 101, 72);">${b.boardTitle }</a></div>
       					<div class="userBox">${b.memberNickname }</div>
       					<div>${b.boardDate }</div>
       					<div align="center">
                     		<c:if test="${b.fileCount>0}">
                        		<img alt=" " src="*데이터 file.png*" width=16px>
                    		</c:if>
                		</div>
       				</div>
       				</c:forEach>
       			</div>
       			<div style="text-align:right">
       			<c:if test="${loggedMember.memberSeq!=null}">
       				   <input class="board-write" id="btn-add" type="button" value="글쓰기" id="btn-add" onclick="fn_boardForm();"/>
       			</c:if>
       			</div>
       		 ${npage}
       		</div>

          
   </section>
        
       <script>
          function fn_boardForm(){
             location.href="${path}/board/boardForm";
          }
       </script>
   		
   <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>