<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


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
						<input type="text" class="loginInput" name="memberEmail"/>
					</div>
				</div>
				<div class="loginBoxRow">
					<div class="loginBoxCol">Password</div>
					<div class="loginBoxColInput">
						<input type="text" class="loginInput" name="memberPassword"/>
					</div>
				</div>
			</div>
			<div class="defaultViewfooter">
				<div>
					<button type="button" class="logPageBtn" onclick="submit()">Login</button>
					<button type="button" class="logPageBtn">Close</button>
				</div>
			</div>
		</div>
	</form>
</div>
<script>

	function fn_defaultViewAjax(index) {
		$(".loginPageModal").css("display", "flex");
		$(".defaultViewBody").animate({ scrollTop: 0 }, 0);
	}

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
	
</script>
