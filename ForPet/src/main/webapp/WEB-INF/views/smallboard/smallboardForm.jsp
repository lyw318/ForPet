   <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <c:set var="path" value="${pageContext.request.contextPath}"/>
   
   <jsp:include page="/WEB-INF/views/common/header.jsp">
      <jsp:param value="Dev 등록결과" name="pageTitle"/>
   </jsp:include>
   <link rel="stylesheet" href="${path}/resources/css/boardStyle.css"/>
   <section>
   	<div class="board-form-wrapper"> 
        <div class="board-form-header">
   			소모임게시판 작성
   		</div>
   		<form class="board-form" name="smallboardFrm" action="${path}/smallboard/smallboardFormEnd.do" method="post" onsubmit="return validate();">
   			<div class="board-form-title">
   				<div>제목</div>
                <div><input type="text" name="smallboardTitle" required></div>
            </div>
            <div class="board-form-writer">
                <div>작성자</div>
                <div>
                    <input type="text" value="${loggedMember.memberNickname}" readonly>
                    <input type="hidden" name="memberSeq" value="${loggedMember.memberSeq}">
                </div>
            </div>
   			<div class="board-form-content">
                <div>내용</div>
                <div><textarea name="smallboardContent" required></textarea></div>
            </div>
   			<div class="board-form-image-upload">
                <div>종류</div>
                <div class="added-image-container">
                    <div>
                		<select name="smallboardKategorie" id="smallboardKategorie" onchange="petTypeChange()" required>
						<option value="">선택해주세요.</option>
						<option value="강아지">강아지</option>
						<option value="고양이">고양이</option>
						<option value="햄스터">햄스터</option>
						<option value="기니피그">기니피그</option>
						<option value="토끼">토끼</option>
						<option value="고슴도치">고슴도치</option>
						<option value="거북이">거북이</option>
						<option value="조류">조류</option>
					</select>
					</div>
                </div>
            </div>
            <div class="board-button-set">
                <input id="cancel" type="button" value="취소">
                <input type="submit" value="저장">
            </div>
	    </form>

      </div>
   	
   </section>
   <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>