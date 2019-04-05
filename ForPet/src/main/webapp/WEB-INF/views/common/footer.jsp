<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<footer class="mainFooter">
	<img class="mainPageImage" src="${path }/resources/images/forPetSignH50.png" alt="로고이름명" style="margin-left: 100px;">
	<pre>
		(주) ForPet  |  사업자등록번호 : 851-87-00622  |  프로젝트팀 : ForPet  |  개인정보관리책임자 : 박진우팀장
		서울특별시 강남구 테헤란로14길 6 남도빌딩 4F
		Tel : 02-1544-9970  월-금 (AM 10:00 - PM 19:00 ) Email : ForPet@ForPet.co.kr
		
		ⓒ 2019 ForPet Inc. all rights reserved.
	</pre>
</footer>
<div class="TopBtnBox">
	<div>TOP</div>
</div>
<script>

	//top 버튼 액션 구현
	$(window).scroll(function () {
		if ($(window).scrollTop() != 0) {
			$(".TopBtnBox").css("opacity", "1");
			$(".TopBtnBox").css("cursor", "pointer");

		} else {
			$(".TopBtnBox").css("opacity", "0");
			$(".TopBtnBox").css("cursor", "default");
		}
	});
	$(".TopBtnBox").click(function() {
		$('html, body').animate({ scrollTop: 0 }, 0);
	})
</script>
</body>

</html>
