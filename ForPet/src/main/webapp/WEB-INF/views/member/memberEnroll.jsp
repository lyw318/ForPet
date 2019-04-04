<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ tablib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ tablib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ tablib prefix="fn" uri="http://java.sun.com/jsp/jstl/fn"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
 --%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<link rel="stylesheet" href="${path }/resources/css/memberEnroll.css" />
<style>
input[type='password'],[type='text'],[type='tel']{
	display:block;
}
</style>
<section class="">
	<div id="enroll-container">
		<form name="memberEnrollFrm" action="${pageContext.request.contextPath}/member/memberEnrollEnd.do" method="post" onsubmit="return validate();">
			
			<div id="userid-container">
				<input type="text" class="form-control" placeholder="아이디(4글자 이상)" name="memberEmail" id="memberEmail_" required>
				<span class="guide ok">아이디 사용 가능합니다</span>
				<span class="guide error">아이디 사용 불가능합니다</span>
				<input type="hidden" name="checkEmail" id="checkEmail"/>
			</div>		
			<input type="password" class="form-container" placeholder="비밀번호" name="memberPassword" id="memberPassword_" required>
			<input type="password" class="form-container" placeholder="비밀번호 확인" id="memberPassword2" required>					
			<div id="userid-container">
				<input type="text" class="form-container" placeholder="닉네임" name="memberNickname" id="memberNickname" required>
				<span class="guide2 ok">닉네임 사용 가능합니다</span>
				<span class="guide2 error">닉네임 사용 불가능합니다</span>
				<input type="hidden" name="checkNickname" id="checkNickname"/>
			</div>
			<input type="text" class="form-container" placeholder="이름" name="memberName" id="memberName" required>
			<input type="tel" class="form-control" placeholder="전화번호 (예:01012345678)" name="memberPhone" id="memberPhone" maxlength="11" required>
			<!-- <input type="text" class="form-control" placeholder="주소" name="memberAddress" id="memberAddress"> -->
			
			<input type="text" id="sample6_postcode" placeholder="우편번호">
			<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
			<input type="text" id="sample6_address" placeholder="주소" name="memberAddress" id="memberAddress"><br>
			
			
			
			<input type="submit" class="btn btn-outline-success" value="가입">&nbsp;
			<input type="submit" class="btn btn-outline-success" value="취소">
			
		</form>
	</div>
</section>

<script>
/* 아이디 중복체크 */
$(function() {
	$('#memberEmail_').keyup(function() {
		var memberEmail = $('#memberEmail_').val().trim();
		if(memberEmail.length<4) {
			$('.guide').hide();
			return;
		}

		$.ajax({
			url:"${path}/member/checkEmail.do",
			data:{"memberEmail":$("#memberEmail_").val()},
			success:function(data) {
				console.log(data);
				console.log(typeof data);
				
				if(data.trim() == 'true') {
					$(".guide.ok").show();
					$(".guide.error").hide();
				}
				else {
					$(".guide.ok").hide();
					$(".guide.error").show();
				}
			}
		})
	
	})
})
/* 닉네임 중복체크 */
$(function() {
	$('#memberNickname').keyup(function() {
		$.ajax({
			url:"${path}/member/checkNickname.do",
			data:{"memberNickname":$("#memberNickname").val()},
			success:function(data){
				console.log(data);
				console.log(typeof data);
				
				if(data.trim() == 'true') {
					$(".guide2.ok").show();
					$(".guide2.error").hide();
				}
				else {
					$(".guide2.ok").hide();
					$(".guide2.error").show();
				}
			}
		})
	
	})
	
})

	 
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

	function validate() {
		var memberEmail = $("#memberEmail").val().trim();
		if (memberEmail.length < 4) {
			alert("아이디를 4글자 이상 작성하세요.");
			return false;
		}
	}
	
</script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    
                   
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>


<%@ include file="/WEB-INF/views/common/footer.jsp"%>
