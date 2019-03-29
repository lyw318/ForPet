<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<footer class="mainFooter">
	<img class="mainPageImage" src="${path }/resources/images/forPetSignH50.png" alt="로고이름명" style="margin-left: 100px;">
	<pre>
		(주) ForPet  |  사업자등록번호 : 1234 - 00 - 12345  |  프로젝트팀 : ForPet  |  개인정보관리책임자 : ForPet
		서울특별시 강남구 
		Tel : 000.0000.0000  월-금 (10:00 - 19:00 ) Email : ForPet@ForPet.co.kr
		
		© 2019 ForPet Inc. All Rights Reserved.
	</pre>
</footer>
<div class="TopBtnBox">
	<div>TOP</div>
</div>
<script>
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
