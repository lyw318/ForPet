<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link rel="stylesheet" href="${path }/resources/css/boardStyle.css"/>
<section>
	<div class="board-form-wrapper">
        <div class="board-form-header">
            	반려동물 정보 작성
        </div>
	    <form action="${path}/health/healthFormEnd.do" method="post" class="board-form" name="boardFrm" enctype="multipart/form-data">
	        <div class="board-form-title">
                <div>제목</div>
                <div><input type="text" name="infoTitle" required></div>
            </div>
            <div>
            	<div>분류</div>
            	<div>
            		<select name="petType" id="petType" style="height:35px;width:220px;" required>
							<option value="">======== 분류 선택 ========</option>
							<option value="Dog">강아지</option>
							<option value="Cat">고양이</option>
							<option value="GuineaPig">기니피그</option>
							<option value="Rabbit">토끼</option>
							<option value="Hedgehog">고슴도치</option>
							<option value="Turtle">거북이</option>
							<option value="Bird">조류</option>
							<option value="etc">기타</option>
					</select>
            	</div>
            </div>
            <div class="board-form-content">
                <div>내용</div>
                <div><textarea name="infoContent" required></textarea></div>
            </div>
            <div class="board-form-image-upload">
                <div>메인 이미지</div>
                <div class="added-main-image-container">
                    <div class="image-upload-container">
                        <span><br>+</span><input type="file" name="upFileM" id="upFileM" onchange="uploadMain();" required>
                    </div>
                </div>
            </div>
            <div class="board-form-image-upload">
                <div>추가 이미지</div>
                <div class="added-image-container">
                    <div class="image-upload-container">
                        <span><br>+</span><input type="file" name="upFile" id="upFile1">
                    </div>
                </div>
            </div>
            <div class="board-button-set">
                <input id="cancel" type="button" value="취소" onclick="history.back(-1);">
                <input type="submit" value="저장">
            </div>
	    </form>
    </div>

</section>
<script>

	function uploadMain(){
		  var fileName = $('#upFileM').val();
		     if( fileName != "" ){
		    	  
		          var ext = fileName.substring(fileName.lastIndexOf(".")+1).toLowerCase();
			  	  if($.inArray(ext, ['gif','png','jpg','jpeg','bmp']) == -1) {
			  	     alert('이미지 파일만 등록 가능합니다.');
			  	 	fileName = ""; // input file 파일명을 다시 지워준다.
			  	     return;
			 	  }
		    }
		     
		     var span = $(event.target).prev();
			  	$.each(event.target.files, function(index, item){
				var reader=new FileReader();
				reader.onload=function(e){
					var img=$("<img></img>").attr("src",e.target.result).css({"width":"80px","height":"80px"});
					$(span).html(img);
				}
				reader.readAsDataURL(item);
			}); 
		}
	
	function addEvent(indexNum){
		
  		$('#upFile'+indexNum).change(function(){
  		    // 파일 업로드 확장자 체크
  		  var fileName = $('#upFile'+indexNum).val();
 		     if( fileName != "" ){
 		    	  
 		          var ext = fileName.substring(fileName.lastIndexOf(".")+1).toLowerCase();
    		  	  if($.inArray(ext, ['gif','png','jpg','jpeg','bmp']) == -1) {
    		  	     alert('이미지 파일만 등록 가능합니다.');
    		  	 	fileName = ""; // input file 파일명을 다시 지워준다.
    		  	     return;
    		 	  }
 		    }
				var span = $(event.target).prev();
	    		  $.each(event.target.files, function(index, item){
					var reader=new FileReader();
					reader.onload=function(e){
						var img=$("<img></img>").attr("src",e.target.result).css({"width":"80px","height":"80px"});
						$(span).html(img);
					}
					reader.readAsDataURL(item);
				}); 
	    		  var data = '<div class="image-upload-container">';
	    		  data += '<span><br>+</span><input type="file" name="upFile" id="upFile'+ (indexNum+1)+'">';
	    		  data += '</div>';
				$(".added-image-container").append(data);
				$(event.target).css("display","none");
				$(event.target).parent().on("click",function(){event.currentTarget.remove();});
				addEvent(indexNum+1);
     	});
	}
	
	$(addEvent(1));


</script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
