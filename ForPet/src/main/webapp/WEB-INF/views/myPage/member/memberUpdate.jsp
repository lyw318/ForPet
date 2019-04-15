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
</div><br />

<style>
input[type='password'],[type='text'],[type='tel']{
	display:block;
}
</style>

<div class="myPageMain_right">

	<div id="enroll-container">
		<form name="memberUpdateFrm" action="${pageContext.request.contextPath}/member/memberUpdateEnd.do" method="post"
			onsubmit="return fn_update();">

			<div id="userid-container">
				<label>회원 이메일<input type="text" class="form-control" name="memberEmail" id="memberEmail_"
					value="${member.memberEmail}" readonly></label>
				<input type="hidden" name="checkEmail" id="checkEmail" />
			</div>
			<label>새로운 비밀번호<input type="password" class="form-control" placeholder="비밀번호" name="memberPassword" id="memberPassword_"
				required></label>
			<label>비밀번호 확인<input type="password" class="form-control" placeholder="비밀번호 확인" id="memberPassword2" required></label>
			<label>닉네임<input type="text" class="form-control" placeholder="닉네임" name="memberNickname" id="memberNickname"
				value="${member.memberNickname}" required></label>
			<label>이름<input type="text" class="form-control" placeholder="이름" name="memberName" id="memberName"
				value="${member.memberName}" required></label>
			<label>전화번호<input type="tel" class="form-control" placeholder="전화번호 (예:01012345678)" name="memberPhone"
				id="memberPhone" maxlength="11" value="${member.memberPhone}" required></label>
			
			<input type="text" id="sample4_postcode" class="form-control" placeholder="우편번호">
			<input type="button" class="defaultBtn" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
			<input type="text" class="form-control" id="sample4_roadAddress" placeholder="주소" name="memberAddress" id="memberAddress" value="${member.memberAddress}">
			
			<span id="guide" style="color:#999;display:none"></span>
			
			
			<input type="submit" class="defaultBtn" class="btn btn-outline-success" value="수정">&nbsp;
			<input type="button" class="defaultBtn"  onclick="fn_del();" class="btn btn-outline-success" value="탈퇴">

		</form>
	</div>

</div>

<script>
	function fn_update() {
		$("[name=memberUpdateFrm]").attr("action", "${path}/member/memberUpdateEnd.do");
		var updateFlag = confirm("회원정보를 수정하시겠습니까?");
		if (updateFlag) {
			return true;
		}
		else {
			return false;
		}
	}
	$(function () {
		$("#memberPassword2").blur(function () {
			var pw = $("#memberPassword_").val();
			var pwck = $("#memberPassword2").val();
			if (pw != pwck) {
				alert("패스워드가 일치하지 않습니다.");
				$("#memberPassword2").val("");
				$("#memberPassword_").focus();
			}
		})
	})
	function fn_del() {
		var updateFlag = confirm("정말 회원탈퇴하시겠습니까?");
		if (updateFlag) {
			var form = $("[name=memberUpdateFrm]");
			$(form).attr("action", "${path}/member/memberDel.do");
			$(form).attr("onsubmit", null);
			$(form).submit();
		}
	}

</script>



<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                //document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>

</body>
</html>


</section>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>