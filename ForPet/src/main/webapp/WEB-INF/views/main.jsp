<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<section class="mainSection">
	<div class="mainImageScreen">
		<div class="mainImageBox">
			<img class="mainPageImage" src="${path }/resources/images/main1024.jpg" alt="메인화면이미지">
			<div class="mainPageText">
				<p class="mainPageText1">반려동물과 사람이 행복하게</p>
				<p class="mainPageText2">공존하는 세상을 만듭니다.</p>
			</div>
<!-- 			
			<div class="mainPageSearch">
				병원검색&nbsp;&nbsp;
				<input class="mainPageSearchInput" type="text" />
			</div>
			 -->
		</div>
	</div>
</section>
<script>
	$(function() {
		$(".mainPageText1").css("opacity", "1");
		$(".mainPageText2").css("opacity", "1");
	})
	
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
