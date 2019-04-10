<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link rel="stylesheet" href="${path }/resources/css/boardStyle.css"/>
<section>
	<div class="board-form-wrapper">
        <div class="board-form-header">
            	이벤트 작성
        </div>
	    <form action="${path}/event/eventFormEnd.do" method="post" class="board-form" name="boardFrm" enctype="multipart/form-data">
	        <div class="board-form-title">
                <div>제목</div>
                <div><input type="text" name="eventTitle" required></div>
            </div>
            <div class="board-form-writer">
                <div>작성자</div>
                <div>
                    <input type="text" value="${loggedMember.memberNickname}" readonly>
                    <input type="hidden" name="memberSeq" value="${loggedMember.memberSeq}">
                </div>
            </div>
            <div>
            	<div>이벤트 기간</div>
            	<div><input type="date" name="eventStartString"> 부터<span style="width:50px;"></span><input type="date" name="eventFinishString"> 까지</div>
            </div>
            <div class="board-form-content">
                <div>내용</div>
                <div><textarea name="eventContent" required></textarea></div>
            </div>
            <div class="board-form-image-upload">
                <div>메인 이미지</div>
                <div class="added-main-image-container">
                    <div class="image-upload-container">
                        <span><br>+</span><input type="file" name="upFileM" id="upFileM" onchange="uploadMain();">
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
