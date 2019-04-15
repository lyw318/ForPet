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
   <div class="board-form-wrapper">
        <div class="board-form-header">
   			게시판 수정
   		</div>
   		<form class="board-form" name="boardFrm" action="${path}/smallboard/smallboardUpdateEnd.do" method="post" enctype="multipart/form-data" >
   			<div class="board-form-title">
   				<div>제목</div>
                <div>
                <input type="text" name="smallboardTitle" value="${sb.smallboardTitle}" required>
                <input type="hidden" name="smallboardSeq" value="${sb.smallboardSeq}">
                </div>
            </div>
            <div class="board-form-writer">
                <div>작성자</div>
                <div>
                    <input type="text" value="${sb.memberNickname}" readonly style="width:100%">
                </div>
            </div>
            <div class="board-form-writer">
                <div>작성일</div>
                <div>
                    <input type="text" value="${sb.smallboardDate}" readonly style="width:100%">
                </div>
            </div>
   			<div class="board-form-content">
                <div>내용</div>
                <div><textarea name="smallboardContent" required>${sb.smallboardContent }</textarea></div>
            </div>
   			<div class="board-form-image-upload">
                <div>종류</div>
                <div class="added-image-container">
                    <div>
                		<select name="smallboardKategorie" id="smallboardKategorie" onchange="petTypeChange()" required>
							<option value="">선택해주세요.</option>
							<option value="강아지" ${sb.smallboardKategorie eq '강아지'? 'selected':'' }>강아지</option>
							<option value="고양이" ${sb.smallboardKategorie eq '고양이'? 'selected':'' }>고양이</option>
							<option value="햄스터" ${sb.smallboardKategorie eq '햄스터'? 'selected':'' }>햄스터</option>
							<option value="기니피그" ${sb.smallboardKategorie eq '기니피그'? 'selected':'' }>기니피그</option>
							<option value="토끼" ${sb.smallboardKategorie eq '토끼'? 'selected':'' }>토끼</option>
							<option value="고슴도치" ${sb.smallboardKategorie eq '고슴도치'? 'selected':'' }>고슴도치</option>
							<option value="거북이" ${sb.smallboardKategorie eq '거북이'? 'selected':'' }>거북이</option>
							<option value="조류" ${sb.smallboardKategorie eq '조류'? 'selected':'' }>조류</option>
						</select>
					</div>
                </div>
            </div>
            <div class="board-button-set">
                <input id="cancel" type="button" value="취소" onclick="history.back(-1);">
                <input type="submit" value="수정">
            </div>
	    </form>

      </div>
   </section>
   <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>