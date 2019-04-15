<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/myPage/myPageCommon.jsp"%>

<div class="myPageMain_top">
	<div class="myPageMain_topBox">
		<div class="myPageMain_loc">
			<ul>
				<li onclick="location.href='${path}/main/myPageMain'"><img
					src="${path}/resources/images/back.png" width="18px"></li>
				<li>Member</li>
				<li>마이 페이지에 오신 걸 환영합니다.</li>
			</ul>
		</div>
	</div>
</div>
<br />

<div class="myPageMain_right">
	<div id="enroll-container">
		<form name="petUpdateFrm"
			action="${pageContext.request.contextPath}/pet/petUpdateEnd.do"
			method="post" onsubmit="return validate();"
			enctype="multipart/form-data">

			<div class="memberImageBox">
				<div class="memberImage">
					<div class="inputBackground" id="image_section">
						<div>
							<img
								src="${pageContext.request.contextPath}/resources/upload/petProfile/${pet.petRenamedImage}"
								class="fileUploadIcon" width="100px" height="100px" /><br /> <input
								type="file" class="profileImgBox" name="petRenamedImage"
								id="petRenamedImage" />

						</div>
					</div>
					<img alt="camaraIcon" class="image_section"
						src="<%=request.getContextPath()%>/images/petIcon.png"
						onclick="up_file()" />
				</div>
			</div>
			<div class="petForm">
				<label>반려동물명<input type="text" class="form-control"
					value="${pet.petName}" name="petName" id="petName" required></label><br />

				<label> 종류 <select name="petType" id="petType" required>
						<option value="">선택해주세요.</option>
						<option value="Dog">강아지</option>
						<option value="Cat">고양이</option>
						<option value="Hamster">햄스터</option>
						<option value="GuineaPig">기니피그</option>
						<option value="Rabbit">토끼</option>
						<option value="Hedgehog">고슴도치</option>
						<option value="Turtle">거북이</option>
						<option value="Bird">조류</option>
				</select>
				</label><br /> <input type="hidden" name="oriFile"
					value="${pet.petRenamedImage}" /> <input type="text"
					class="form-control" placeholder="상세품종을 적어주세요"
					value="${pet.petType2 }" name="petType2" id="petType2" required><br />
				</label> <label>탄생일 <input type="date" class="form-control"
					name="petBirth" value="${pet.petBirth }" /><br />
				</label>
			</div>
			<input type="hidden" name="memberSeq"
				value="${loggedMember.getMemberSeq() }" /> <input type="hidden"
				name="petSeq" value="${pet.petSeq }" /> <input type="submit"
				class="btn btn-outline-success" value="수정">&nbsp; <input
				type="button" class="btn btn-outline-success" onclick="fn_del();"
				value="삭제">


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
				$('.fileUploadIcon').attr('src', e.target.result).width(100)
						.height(100);
			}
			reader.readAsDataURL(input.files[0]);
		}
		;
	};
	$('#petRenamedImage').change(function() {
		readURL(this);
	});
	//수정
	function fn_update() {
		$("[name=petUpdateFrm]").attr("action", "${path}/pet/petUpdateEnd.do");
		var updateFlag = confirm("반려동물 정보를 수정하시겠습니까?");
		if (updateFlag) {
			return true;
		} else {
			return false;
		}
	}
	//삭제
	function fn_del() {
		var updateFlag = confirm("반려동물 삭제하시겠습니까?");

		if (updateFlag) {
			var form = $("[name=petUpdateFrm]");
			$(form).attr("action", "${path}/pet/petDel.do");
			$(form).attr("onsubmit", null);
			$(form).submit();
			return true;
		}else{
			return false;
		}
	}

	/* function validate(){
	 var petName=$("#petName").val().trim();
	 } */
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>
