   <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.forpet.model.vo.*,java.util.*"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

   <c:set var="path" value="${pageContext.request.contextPath}"/>
<link rel="stylesheet" href="${path}/resources/css/boardStyle.css"/>
	<jsp:include page="/WEB-INF/views/common/header.jsp">
		<jsp:param value="게시판 등록" name="pageTitle"/>
	</jsp:include>

   <section>
   <div class="board-form-wrapper">
        <div class="board-form-header">
   			게시판 작성
   		</div>
   		<form class="board-form" name="boardFrm" action="${pageContext.request.contextPath}/board/boardFormEnd.do" method="post" onsubmit="return validate();"  enctype="multipart/form-data" >
   			<div class="board-form-title">
   				<div>제목</div>
                <div><input type="text" name="boardTitle" required></div>
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
                <div><textarea name="boardContent" required></textarea></div>
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
                <input id="cancel" type="button" value="취소">
                <input type="submit" value="저장">
            </div>
	    </form>

      </div>
   		
    <script>
    
    	/* $(function(){
    		$('[name=upFile]').change(function(){
    			var fileName=$(this).prop('files')[0].name;
    			$(this).next('.custom-file-label').html(fileName);
    		});
    	}); */
    	
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