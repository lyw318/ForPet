<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link rel="stylesheet" href="${path }/resources/css/boardStyle.css"/>
<section>
	<div class="board-form-wrapper">
        <div class="board-form-header">
            	반려동물 정보 수정
        </div>
	    <form action="${path}/health/updateInfoEnd.do" method="post" class="board-form" name="boardFrm" enctype="multipart/form-data">
	        <div class="board-form-title">
                <div>제목</div>
                <div>
                	<input type="text" name="infoTitle" value="${hi.infoTitle}" required>
                	<input type="hidden" name="infoSeq" value="${hi.infoSeq}">
                </div>
            </div>
            <div>
            	<div>분류</div>
            	<div>
            		<select name="petType" id="petType" style="height:35px;width:220px;" required>
							<option value="">======== 분류 선택 ========</option>
							<option value="Dog" ${hi.petType eq "Dog"?"selected":""}>강아지</option>
							<option value="Cat" ${hi.petType eq "Cat"?"selected":""}>고양이</option>
							<option value="GuineaPig" ${hi.petType eq "GuineaPig"?"selected":""}>기니피그</option>
							<option value="Rabbit" ${hi.petType eq "Rabbit"?"selected":""}>토끼</option>
							<option value="Hedgehog" ${hi.petType eq "Hedgehog"?"selected":""}>고슴도치</option>
							<option value="Turtle" ${hi.petType eq "Turtle"?"selected":""}>거북이</option>
							<option value="Bird" ${hi.petType eq "Bird"?"selected":""}>조류</option>
							<option value="etc" ${hi.petType eq "etc"?"selected":""}>기타</option>
					</select>
            	</div>
            </div>
            <div class="board-form-content">
                <div>내용</div>
                <div><textarea name="infoContent" required>${hi.infoContent}</textarea></div>
            </div>
            <div class="board-form-image-upload">
                <div>메인 이미지</div>
                <div class="added-main-image-container">
                	<input type="hidden" name="exFileM" value="${ilist[0]}" id="exFileM" />
                    <div class="image-upload-container">
                        <span><img src="${path}/resources/upload/infoImage/${ilist[0]}" style="width : 80px; height :80px;"/></span><input type="file" name="upFileM" id="upFileM" onchange="uploadMain();">
                    </div>
                </div>
            </div>
            <div class="board-form-image-upload">
                <div>추가 이미지</div>
                <div class="added-image-container">
                	<c:forEach items="${ilist}" begin="1" var="img" varStatus="status">
                	<input type="hidden" name="exFile" value="" id="exFile${status.index}" />
                	<div class="image-upload-container" onclick="fn_del_img(${status.index},'${img}')">
                        <span><img src="${path}/resources/upload/infoImage/${img}" style="width : 80px; height :80px;"/></span>
                    </div>
                	</c:forEach>
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
	function fn_del_img (index, img)
	{
		if(confirm("기존 업로드 된 이미지를 삭제할까요?"))
		{
			$('#exFile'+index).val(img);
			event.currentTarget.remove();
		}
	}

	function uploadMain(){
		  var fileName = $('#upFileM').val();
		     if( fileName != "" ){
		    	  
		          var ext = fileName.substring(fileName.lastIndexOf(".")+1).toLowerCase();
			  	  if($.inArray(ext, ['gif','png','jpg','jpeg','bmp','webp']) == -1) {
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
    		  	  if($.inArray(ext, ['gif','png','jpg','jpeg','bmp','webp']) == -1) {
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
