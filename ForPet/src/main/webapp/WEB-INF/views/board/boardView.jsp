   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <c:set var="path" value="${pageContext.request.contextPath}"/>
   
   <jsp:include page="/WEB-INF/views/common/header.jsp">
      <jsp:param value="Dev 등록결과" name="pageTitle"/>
   </jsp:include>
   
   <style>
		.boardtitle{
			width : 450px;
			height: 25px;
			margin : 3px;
		}
		.membernickname{
			width : 450px;
			height: 25px;
			margin : 3px;
		}
		.form-control{
			width : 450px;
			height : 250px;
			margin : 3px;
		}
		div#board-container{
			width:400px; 
			margin:0 auto; 
			text-align:center;
		}
    	div#board-container input,div#board-container button{
    		margin-bottom:15px;
    	}
   	 	div#board-container label.custom-file-label{
   	 		text-align:left;
   	 	}
   	 	.filedownload{
   	 	width: 460px;
   	 	}
   </style>
   <section>
   		<div id="board-container">
        <input class="boardtitle" type="text" class="form-control" placeholder="제목" name="boardTitle" id="boardTitle" value="${board.boardTitle }" readonly><br/>
        <textarea class="form-control" name="boardContent" placeholder="내용" readonly>${board.boardContent }</textarea>
        <c:forEach items="${attachmentList}" var="a" varStatus="vs">
            <button type="button" class="filedownload" onclick="fileDownload('${a.originalFileName}','${a.renamedFileName }');">
               	 첨부파일${vs.count} - ${a.originalFileName }
            </button>
            <br/>
        </c:forEach>

        <script>
        	function fileDownload(oName,rName)
        	{
        		oName=encodeURIComponent(oName);
        		location.href="${path}/board/boardDown.do?oName="+oName+"&rName="+rName;
        	}
        </script>
    </div>
   </section>
   <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>