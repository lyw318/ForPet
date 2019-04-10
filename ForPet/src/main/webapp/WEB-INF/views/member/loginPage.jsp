<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>  

<div id="loginPageModal" class="loginPageModal">
	<form action="${path }/member/memberLogin.do" method="post">
		<div class="defaultViewModalBox">
			<div class="defaultViewHeader">
				<div>
					<img src="${path }/resources/images/forPetSignH50B.png" alt="로그인메인로고">
				</div>
			</div>
			<div class="defaultViewBody">
				<div class="loginBoxRow">
					<div class="loginBoxCol">Email</div>
					<div class="loginBoxColInput">
						<input type="text" class="loginInput" name="memberEmail" required/>
					</div>
				</div>
				<div class="loginBoxRow">
					<div class="loginBoxCol">Password</div>
					<div class="loginBoxColInput">
						<input type="password" class="loginInput" name="memberPassword" required/>
					</div>
				</div>
			</div>
			<div class="defaultViewfooter">
				<div>
					<!-- 로그인 -->
					<button type="submit" class="logPageBtn">Login</button>
					
					<!-- 카카오 로그인 -->
						<a id="kakao-login-btn"></a>
						<a href="http://developers.kakao.com/logout"></a>
					
					<!-- 로그인 취소 -->
					<button type="button" class="logPageBtn" onclick="loginClose()">Close</button>
				</div>
			</div>
		</div>
	</form>
	<form id="kakaoLoginForm" method="post" action="${path }/member/kakaoLogin.do">
	<input type="hidden" id="kakaoId" name="kakaoId" value="">
	<input type="hidden" id="kakaoNick" name="kakaoNick" value="">
	</form>

	
</div>
<script>

	/* 카카오 로그인 */
	/*Kakao.init('c4f0aaa7f32ad43a59ff52dd744b1a3e'); */
	/*  */
	Kakao.init('47995cb29d8f249d521cd740f9fe0821');
	Kakao.Auth.createLoginButton({
		container: '#kakao-login-btn',
		success: function(authObj){
			Kakao.API.request({
				url: '/v1/user/me',
				success:function(res){
					console.log(res);
					
					$('#kakaoId').val(res.id);
					$('#kakaoNick').val(res.properties['memberNickname']);
				
				  $('#kakaoLoginForm').submit();
				}
			})		
		},
		fail:function(err){ alert(JSON.stringify(err));}
	});
	

	/* 로그인 창 닫기 분기 처리 */
	$(function () {
		var closeFlag = true;
		$("#loginPageModal .defaultViewModalBox").click(function () {
			closeFlag = false;
		})
		$("#loginPageModal .defaultViewModalBox").mouseleave(function () {
			closeFlag = true;
		})
		$("#loginPageModal").on("click", function () {
			if (closeFlag) {
				$("#loginPageModal").css("display", "none");
			}
		})
	});
	function loginClose() {
		$("#loginPageModal").css("display", "none");
	}
	

	function fn_defaultViewAjax(index) {
		$(".loginPageModal").css("display", "flex");
		$(".defaultViewBody").animate({ scrollTop: 0 }, 0);
	}
	
</script>
