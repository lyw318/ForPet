<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/myPage/myPageCommon.jsp" %>

<link rel="stylesheet" href="${path }/resources/css/myPage_petEnrollStyle.css" />

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
</div><br />

<div class="myPageMain_right">
	<div id="petEnroll-container">
		<form name="memberEnrollFrm" action="${pageContext.request.contextPath}/pet/petEnrollEnd.do" method="post"
			onsubmit="return validate();" enctype="multipart/form-data">
			<div class="petEnroll-containerBox">
				<div class="petEnroll-containerRow">

					<div class="memberImageBox">
						<div class="memberImage">
							<div class="inputBackground" id="image_section">
								<div>
									<img class="fileUploadIcon" width="100px" height="100px" src="${path}/resources/images/petIcon100.png"/>
									<input type="file" class="profileImgBox" name="petRenamedImage" id="petRenamedImage" />
								</div>
							</div>
							<img alt="camaraIcon" class="image_section" src="${path}/resources/images/camaraIcon30.png"/>
						</div>
					</div>
					
				</div>
				<div class="petEnroll-containerRow">
					<div class="petEnroll-containerCol1">
						반려동물명
					</div>
					<div class="petEnroll-containerCol2">
						<input type="text" class="form-control" placeholder="반려동물 이름" name="petName" id="petName" required>
					</div>
					
				</div>
				<div class="petEnroll-containerRow">
					<div class="petEnroll-containerCol1">
						품종
					</div>
					<div class="petEnroll-containerCol2">
						<div>
							종류
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						<div>
							<select name="petType" id="petType" onchange="petTypeChange()" required>
								<option value="">선택해주세요.</option>
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
				</div>
				<div class="petEnroll-containerRow">
					<div class="petEnroll-containerCol1">
					</div>
					<div class="petEnroll-containerCol2">
						<input type="text" class="form-control" placeholder="상세품종을 적어주세요" name="petType2" id="petType2" required>
					</div>
				</div>
				<div class="petEnroll-containerRow">
					<div class="petEnroll-containerCol1">
						탄생일
					</div>
					<div class="petEnroll-containerCol2">
						<input type="date" class="form-control" name="petBirth" />
					</div>
				</div>
				<div class="petEnroll-containerRow">
					<input type="submit" class="logPageBtn" class="btn btn-outline-success" value="등록">
					<input type="button" class="logPageBtn" class="btn btn-outline-success" value="취소">
				</div>
			</div>
			<input type="hidden" name="memberSeq" value="${loggedMember.getMemberSeq() }" />
		</form>
	</div>
</div>
</section>
<script>
	//회원 사진 보여주기
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function (e) {
				$('.fileUploadIcon').attr('src', e.target.result)
					.width(100)
					.height(100);
			}
			reader.readAsDataURL(input.files[0]);
		};
	};

	$('#petRenamedImage').change(function () {
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

	function validate() {
		var petName = $("#petName").val().trim();
		/* 	   console.log(petName);
			   console.log($("#petType").val());
			   return false; */
	}
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>