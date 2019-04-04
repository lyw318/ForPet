<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<link rel="stylesheet" href="${path }/resources/css/vetView.css">
<section class="VetViewSection">

	<div id="vetConatiner">
		<div id="maintitle">
			<div class="#">
				<h3>
					큐라인여성의원
				</h3>
				<div class="vetAddress">서울특별시 서초구 서초동 1317-20 아라타워 12층</div>
				<div class="scape">
					<a href=""><span><imag src="/resources/images/vet/scapeIcon.png"></span>즐겨찾기</a>
				</div>
			</div>
		</div>
	
		<div id="upperVet">
			<div id="upperMagin">지도그림
			<img src="${path }/resources/images/mainLogaHeaderH80.png">
			</div>
			<div id="vetTitle">상단 아래 여백</div>
		</div>
		<div id="bottomVet">
			<div id="operTime">진료과목</div>
			<img src="${path }/resources/images/vet/dog.png">개
			<img src="${path }/resources/images/vet/cat.png">고양이
			<img src="${path }/resources/images/vet/guineapig.png">기니피그
			<img src="${path }/resources/images/vet/rabbit.png">토끼
			<img src="${path }/resources/images/vet/hedgehog.png">고슴도치
			<img src="${path }/resources/images/vet/bird.png">조류
			<img src="${path }/resources/images/vet/turtle.png">파충류
			<img src="${path }/resources/images/vet/horse.png">기타동물
			<div id="operTime">진료시간등등</div>
			<div class="settime" >
			<div>월요일</div>
			<div>10:00 ~ 18:00</div>
			</div>
			<div class="settime" >
			<div>화요일</div>
			<div>10:00 ~ 18:00</div>
			</div>
			<div class="settime" >
			<div>수요일</div>
			<div>10:00 ~ 18:00</div>
			</div>
			<div class="settime" >
			<div>목요일</div>
			<div>10:00 ~ 18:00</div>
			</div>
			<div class="settime" >
			<div>금요일</div>
			<div>10:00 ~ 18:00</div>
			</div>
			<div class="settime" >
			<div>토요일</div>
			<div>10:00 ~ 18:00</div>
			</div>
			<div class="settime" >
			<div>공휴일</div>
			<div>10:00 ~ 18:00</div>
			</div>
			<div id="setttimmeNotice">
			병원의 사정에 의해서 시간은 변경될수 있습니다<br>
			방문전에 사전 연락 부탁드립니다.
			</div>
						
			<div id="phone">전화번호</div>
			<div id="phonenumber">02-1544-2323</div>
			
			<div id="appendix">부가정보</div>
			<div id="appendixInfo">24시간 운영</div>
		</div>
	</div>









</section>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>
