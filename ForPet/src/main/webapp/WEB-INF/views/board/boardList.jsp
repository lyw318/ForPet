   <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <c:set var="path" value="${pageContext.request.contextPath}"/>

   <jsp:include page="/WEB-INF/views/common/header.jsp">
      <jsp:param value="게시판" name="pageTitle"/>
   </jsp:include>

		<style>
      .board-title
        {
           font-size: 25px;
           padding: 25px 0;
        }
     
         .board-table
        {
            border-top: 2px solid rgb(139, 85, 38);
            border-bottom: 1px solid #ccc;
            display: flex;
            flex-flow: column nowrap;
            font-size: 14px;
        }

        .table-header
        {
            display: flex;
            padding: 15px 0;
        }


        .table-header > div
        {
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .table-header > div:nth-of-type(1){flex: 2 1 0;}
        .table-header > div:nth-of-type(2){flex: 3 1 0;}
        .table-header > div:nth-of-type(3){flex: 15 1 0;}
        .table-header > div:nth-of-type(4){flex: 2 1 0;}
        .table-header > div:nth-of-type(5){flex: 3 1 0;}
     
          .table-row
        {
            display: flex;
            padding: 15px 0;
            border-top: 1px solid #ccc;
        }

        .table-row > div
        {
        	flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        

        .table-row > div:nth-of-type(1){flex: 2 1 0;}
        .table-row > div:nth-of-type(2){flex: 3 1 0;}
        .table-row > div:nth-of-type(3){flex: 15 1 0;}
        .table-row > div:nth-of-type(4){flex: 2 1 0;}
        .table-row > div:nth-of-type(5){flex: 3 1 0; color: gray; font-size: 11px;padding-top: 2px;}
        .table-row:last-of-type{border-bottom: 1px solid black;}
  
  
  
        .pagebar img
        {
            width: 50%;
            height: 50%;
        }

        .pagebar
        {
            display: flex;
            align-self: center;
            margin: 40px;
            font-size: 14px;
            color: black;
        }
        

        .pagebar div
        {
            width: 33px;
            height: 33px;
            border: 1px solid rgb(220, 220, 220);
            border-left: none;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
        }

        .pagebar div:first-of-type
        {
            border-left: 1px solid rgb(220, 220, 220);
        }
        
        .pagebar a
        {
           display: flex;
           width: 100%;
           height: 100%;
           align-items: center;
           justify-content: center;
           text-decoration: none;
           color: black;
        }
        #btn-add{
        	float: right;
        }
        
  		</style>
       <section>
       
		<p>총 ${totalList} 건의 게시물이 있습니다.</p>
		
       <div class="noticeAndEvent-wrapper">
       		<div class="notice-wrpper">
       			<div class="board-title">
       				<p>게시판</p>
       				   <input type="button" value="글쓰기" id="btn-add" class="btn btn-outline-success" onclick="fn_boardForm();"/>
       			</div>
       			<div class="board-table">
       				<div class="table-header">
       					<div>글번호</div>
       					<div>작성자</div>
       					<div>제목</div>
       					<div>작성일</div>
       					<div>첨부파일</div>
       					<div>조회수</div>
       				</div>
       				<c:forEach items="${list }" var="b">
       				<div class="table-row">
       					<div>${b.boardSeq}</div>
       					<div>${b.memberNickname }</div>
       					<div><a href="${path}/board/boardView.do?boardSeq=${b.boardSeq}">${b.boardTitle }</a></div>
       					<div>${b.boardDate }</div>
       					<div align="center">
                     		<c:if test="${b.fileCount>0}">
                        		<img alt=" " src="*데이터 file.png*" width=16px>
                    		</c:if>
                		</div>
       					<div>${b.boardreadCount}</div>
       				</div>
       				</c:forEach>
       			</div>
       		</div>
       </div>
        <div class="pagecontainer">
           ${pageBar }
        </div>
        
       <script>
          function fn_boardForm(){
             location.href="${path}/board/boardForm";
          }
       </script>
   		
   </section>
   <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>