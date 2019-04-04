   <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <c:set var="path" value="${pageContext.request.contextPath}"/>

	<jsp:include page="/WEB-INF/views/common/header.jsp">
		<jsp:param value="게시판 등록" name="pageTitle"/>
	</jsp:include>
	<style>
		.mainform{
			margin-inline-start: 28%;
		}
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
		.boardcontent{
			width : 450px;
			height : 250px;
			margin : 3px;
		}
		.submitbtn{
			margin-bottom: 10px;
			margin-top: 10px;
		}
	</style>
   <section>
   		<div class="maindiv">
        <form class="mainform"action="${pageContext.request.contextPath}/board/boardFormEnd.do" method="post" onsubmit="return validate();"  enctype="multipart/form-data" >
            <input class="boardtitle" type="text" placeholder="제목" name="boardTitle" id="boardTitle" required><br/>
            <input class="membernickname" type="text" placeholder="아이디 (4글자이상)" value="${loggedMember.memberNickname}" readonly required><br/>
            <input type="hidden" name="memberSeq" value="${loggedMember.memberSeq}"/>
            <div style="padding:0px;">
            <textarea class="boardcontent" name="boardContent" placeholder="내용" required></textarea>
                <div>
                    <input type="file" name="upFile" id="upFile1">
                    <label for="upFile1">파일을 선택하세요</label>
                    </div>
                    <div>
                    <input type="file" name="upFile" id="upFile2">
                    <label for="upFile2">파일을 선택하세요</label>
                </div>
            </div>
            <input class="submitbtn"type="submit" value="저장">
        </form>
    </div>

    <script>
    	$(function(){
    		$('[name=upFile]').change(function(){
    			var fileName=$(this).prop('files')[0].name;
    			$(this).next('.custom-file-label').html(fileName);
    		});
    	});
    </script>

   </section>
   <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>