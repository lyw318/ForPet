<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/myPage/myPageCommon.jsp" %>

    <div class="myPageMain_top">
        <div class="myPageMain_topBox">
            <div class="myPageMain_loc">
                <ul>
                    <li onclick="location.href='${path}/main/myPageMain'">
                        <img src="${path}/resources/images/back.png" width="18px">
                    </li>
                    <li>Member</li>
                    <li>마이 페이지에 오신 걸 환영합니다.</li>
                </ul>
            </div>
        </div>
    </div><br/>

	<div class="myPageMain_right">
		<div id="enroll-container">
		<form name="memberEnrollFrm" action="${pageContext.request.contextPath}/pet/petEnrollEnd.do" method="post" onsubmit="return validate();">
					
			<div class="memberImageBox">
					<div class="memberImage">
						<div class="inputBackground" id="image_section">
							<div>
								<img class="fileUploadIcon" width="100px" height="100px"/>
								<input type="file" class="profileImgBox" name="petRenamedImage" id="petRenamedImage"/>
							</div>
						</div>
						<img alt="camaraIcon" class="image_section" src="<%= request.getContextPath() %>/images/petIcon.png" onclick="up_file()"/>
					</div>
				</div>
			<input type="text" class="form-control" placeholder="반려동물 이름" name="petName" id="petName" required>
			<input type="date" class="form-container" placeholder="반려동물 생일" name="petBirth" id="petBirth" required>
						
			<select placeholder="반려동물 종류" name="petType" id="petType" onchange="petTypeChange()" required>
					<option value="">선택해주세요.</option>
					<option value="dog">강아지</option>
					<option value="cat">고양이</option>
					<option value="hamster">햄스터</option>
					<option value="guineaPig">기니피그</option>
					<option value="rabbit">토끼</option>
					<option value="hedgehog">고슴도치</option>
					<option value="turtle">거북이</option>
					<option value="bird">조류</option>
				</select>
			<input type="text" class="form-control" placeholder="상세품종을 적어주세요" name="petType2" id="petType2" required>
			
			
			
			<input type="submit" class="btn btn-outline-success" value="등록">&nbsp;
			<input type="submit" class="btn btn-outline-success" value="취소">
			
			
		</form>
	</div>
	</div>
</section>
<script>
	//회원 사진 보여주기
	function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function(e) {
                $('.fileUploadIcon').attr('src', e.target.result)
                 .width(100)
                 .height(100);
            }
            reader.readAsDataURL(input.files[0]);
        };
    }; 
    
    $('#petRenamedImage').change(function(){
    	readURL(this);
    });
    
    

    
    //
   /*  function up_file(){
      var image=$('[name=petRenamedImage]').val();
      if(image.trim().length==0){
         alert("이미지를 등록하세요");
         return false;
      }
   return true;
   }  */
 
   function validate(){
	   var petName=$("#petName").val().trim();
   }
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
