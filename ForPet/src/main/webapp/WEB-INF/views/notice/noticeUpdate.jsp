<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link rel="stylesheet" href="${path }/resources/css/boardStyle.css"/>
<section>
	<div class="board-form-wrapper">
        <div class="board-form-header">
            	공지사항 수정
        </div>
	    <form action="${path}/notice/noticeUpdateEnd.do" method="post" class="board-form" name="boardFrm" enctype="multipart/form-data">
	        <div class="board-form-title">
                <div>제목</div>
                <div>
                	<input type="text" name="noticeTitle" value="${n.noticeTitle}" required>
                	<input type="hidden" name="noticeSeq" value="${n.noticeSeq}">
                </div>
            </div>
            <div class="board-form-writer">
                <div>작성자</div>
                <div>
                    <input type="text" value="${n.memberNickname}" readonly>
                    <input type="hidden" name="memberSeq" value="${n.memberSeq}">
                </div>
            </div>
            <div class="board-form-content">
                <div>내용</div>
                <div><textarea name="noticeContent" required>${n.noticeContent}</textarea></div>
            </div>
            <div class="board-form-image-upload">
                <div>이미지</div>
                <div class="added-image-container">
                	<c:forEach items="${ilist}" var="img" varStatus="status">
                	<input type="hidden" name="exFile" value="" id="exFile${status.index}" />
                	<div class="image-upload-container" onclick="fn_del_img(${status.index},'${img}')">
                        <span><img src="${path}/resources/upload/noticeImage/${img}" style="width : 80px; height :80px;"/></span>
                    </div>
                	</c:forEach>
                    <div class="image-upload-container">
                        <span><br>+</span><input type="file" name="upFile" id="upFile1">
                    </div>
                </div>
            </div>
            <div class="board-button-set">
                <input id="cancel" type="button" value="취소" onclick="history.back(-1);">
                <input type="submit" value="작성">
            </div>
	    </form>
    </div>

</section>
    <script>
    	function fn_del_img (index, img)
    	{
    		if(confirm("기존 업로드 된 이미지를 삭제할까요?"))
    		{
    			$('#exFile'+index).val(img);
    			event.currentTarget.remove();
    		}
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
