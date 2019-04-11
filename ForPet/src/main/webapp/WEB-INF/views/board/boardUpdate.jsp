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
   		<form class="board-form" name="boardFrm" action="${pageContext.request.contextPath}/board/boardUpdateEnd.do" method="post" enctype="multipart/form-data" >
   			<div class="board-form-title">
   				<div>제목</div>
                <div>
                <input type="text" name="boardTitle" value="${b.boardTitle}" required>
                <input type="hidden" name="boardSeq" value="${b.boardSeq}">
                </div>
            </div>
            <div class="board-form-writer">
                <div>작성일</div>
                <div>
                    <input type="text" value="${b.boardDate}" readonly style="width:100%">

                </div>
            </div>
   			<div class="board-form-content">
                <div>내용</div>
                <div><textarea name="boardContent" required>${b.boardContent }</textarea></div>
            </div>
   			<div class="board-form-image-upload">
                <div>첨부파일</div>
                <div class="added-image-container">
                    <div class="aimage-upload-container">
                        <input type="file" name="upFile" id="upFile1">
                        <input type="file" name="upFile" id="upFile2">
                        <input type="file" name="upFile" id="upFile3">
                    </div>
                </div>
            </div>
            <div class="board-button-set">
                <input id="cancel" type="button" value="취소" onclick="history.back(-1);">
                <input type="submit" value="수정">
            </div>
	    </form>

      </div>
   		
    <script>
    	
    	function addEvent(indexNum){
    		
    		$('#upFile'+indexNum).change(function(){
    		    // 파일 업로드 확장자 체크
    		  var fileName = $('#upFile'+indexNum).val();
   		     if( fileName != "" ){
   		          var ext = fileName.substring(fileName.lastIndexOf(".")+1).toLowerCase();
   		    }
				var span = $(event.target).prev();
	    		  $.each(event.target.files, function(index, item){
					console.log(item);
					var reader=new FileReader();
					reader.onload=function(e){
						var img=$("<img></img>").attr("src",e.target.result).css({"width":"80px","height":"80px"});
						$(span).html(img);
					}
					reader.readAsDataURL(item);
				}); 
	    		  var data = '<div class="aimage-upload-container">';
	    		  data += '<input type="file" name="upFile" id="upFile'+ (indexNum+1)+'">';
	    		  data += '</div>';
				$(".added-image-container").append(data);
				$(event.target).parent().on("click",function () {this.remove();});
				addEvent(indexNum+1);
       	});
	}
</script>
   </section>
   <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>