   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <c:set var="path" value="${pageContext.request.contextPath}"/>
   <style>
   		.board-view-wrapper{
   			text-align:left;
   		}
   </style>
   <jsp:include page="/WEB-INF/views/common/header.jsp">
      <jsp:param value="Dev 등록결과" name="pageTitle"/>
   </jsp:include>
   <link rel="stylesheet" href="${path }/resources/css/boardStyle.css"/>
   <section>
   <div class="board-view-wrapper">
              <div class="board-view">
                  <div class="board-view-title">
                      <div>제목</div>
                      <div>123123</div>
                  </div>
                  <div class="board-view-title">
                      <div>작성일</div>
                      <div>123123</div>
                  </div>
                  <div class="board-view-content">
                      <div>
                      ${board.boardContent }
                      </div>
                  </div>
               </div>
               <br/>
               <c:forEach items="${attachmentList}" var="a" varStatus="vs">
            				<button type="button" class="filedownload" onclick="fileDownload('${a.originalFileName}','${a.renamedFileName }');">
               	 			첨부파일${vs.count} - ${a.originalFileName }
            				</button>
       		   </c:forEach>
       		   <%-- <c:if test="${loggedMember.memberNickname=='admin'||loggedMember.memberNickname!=board.memberNickname}"> --%>
                <div class="board-view-btns">
                     <input type="button" value="수정" onclick=fn_updateBoard()>
                     <input type="button" value="삭제" onclick=fn_deleteBoard()>
                </div>
                <%-- </c:if> --%>
          </div>

   	</section>
        <script>
        	function fileDownload(oName,rName)
        	{
        		oName=encodeURIComponent(oName);
        		location.href="${path}/board/boardDown.do?oName="+oName+"&rName="+rName;
        	}

        	function fn_deleteBoard(){
        		location.href="${path}/board/deleteboard.do?boardSeq=${board.boardSeq}";
        	}

        	function fn_updateBoard(){
        		location.href="${path}/board/updateboard.do";
        	}

        </script>
   <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>