<%@page import="com.forpet.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<link rel="stylesheet" href="${path }/resources/css/vetView.css">
<script>

function unscrapAjax(){
	$.ajax({
		url:"${pageContext.request.contextPath}/vetView/unscrap.do",
		dataType : "json",
		data:{"memberSeq":"${loggedMember.memberSeq}","vetSeq":"${vet.vetSeq}"},
		success:function(data)
		{
			console.log(data);
			var vets="${vet.vetSeq}";
			if (data=1)
				{
				alert("스크랩 취소가 완료되었습니다.");
				$(".scrap").html("<img onclick='scrapAjax("+vets+")' src='${path }/resources/images/vet/scrapIcon.png' width='35' height='35' title='스크랩하기'>");
				}
			if (data==0)
				{
				alert("취소가 실패하였습니다.");
				$(".scrap").html("<img onclick='unscrapAjax("+vets+")' src='${path }/resources/images/vet/scrapIcon.png' width='35' height='35' title='스크랩취소'>");}
			
		},
		error : function(request, status, error){
			
		}
	});
}
function scrapAjax(){
	$.ajax({
		url:"${pageContext.request.contextPath}/vetView/scrap.do",
		dataType : "json",
		data:{"memberSeq":"${loggedMember.memberSeq}","vetSeq":"${vet.vetSeq}"},
		success:function(data)
		{
			console.log(data);
				var vets="${vet.vetSeq}";
			if (data=1)
				{
				alert("스크랩되었습니다");
					$(".scrap").html("<img onclick='unscrapAjax("+vets+")' src='${path }/resources/images/vet/scrapIcon_done.png' width='35' height='35' title='스크랩취소'>");
				}
			if (data==0)
				{
				alert("이미 스크랩되어 있습니다");
					$(".scrap").html("<img onclick='unscrapAjax("+vets+")' src='${path }/resources/images/vet/scrapIcon_done.png' width='35' height='35' title='스크랩취소'>");
				}
			
		},
		error : function(request, status, error){
			
		}
	});
}

</script>

<section class="VetViewSection">

	<div id="vetContainer">
		<div id="maintitle">
			<div class="vetNameBox">
				<div class="vetName">
					${vet.vetName }
				</div>
				<div class="scrap">

               <c:if test="${loggedMember.memberEmail != null}">
					<c:if test="${isScraped == 1}"> 
					<img onclick="scrapAjax('${vet.vetSeq }')" src="${path }/resources/images/vet/scrapIcon.png" width="35" height="35" title="스크랩하기">
					</c:if>
					<%-- <div>${isScraped }</div> --%>
					<c:if test="${isScraped == 2}">
					<img onclick="unscrapAjax('${vet.vetSeq }')" src="${path }/resources/images/vet/scrapIcon_done.png" width="35" height="35" title="스크랩취소">
					</c:if>
				</c:if>
				<c:if test="${loggedMember.memberEmail == null}">
				<img onclick="scrap()" src="${path }/resources/images/vet/scrapIcon.png" width="35" height="35" title="로그인하세요"></a>
				</c:if>
				</div>
			</div>
			<div class="vetAddress">${vet.vetAddress }</div>
		</div>
	</div>
<script>
function scrap(){
	alert("로그인후 스크랩기능을 사용해주세요");
}

</script>

	<div id="upperVet">
		<div id="upperMagin">
			<br />
			
		</div>
		<div id="vetTitle" class="infoTitle" >| 병 원 정 보 |</div>
	</div>
	<hr>
	<div id="bottomVet">
		<div id="vettype" class="infoTitle">- 진 료 과 목 -</div>
		
		<c:forEach items="${vcate }" var="v" varStatus="status">
			<c:if test='${v.animalType eq "개"}'><img src="${path }/resources/images/vet/dog.png" title="개"></c:if>
			<c:if test='${v.animalType eq "고양이"}'><img src="${path }/resources/images/vet/cat.png" title="고양이"></c:if>
			<c:if test='${v.animalType eq "기니피그"}'><img src="${path }/resources/images/vet/guineapig.png" title="기니피그">
			</c:if>
			<c:if test='${v.animalType eq "토끼"}'><img src="${path }/resources/images/vet/rabbit.png" title="토끼"></c:if>
			<c:if test='${v.animalType eq "고슴도치"}'><img src="${path }/resources/images/vet/hedgehog.png" title="고슴도치">
			</c:if>
			<c:if test='${v.animalType eq "조류"}'><img src="${path }/resources/images/vet/bird.png" title="조류"></c:if>
			<c:if test='${v.animalType eq "파충류"}'><img src="${path }/resources/images/vet/turtle.png" title="파충류">
			</c:if>
			<c:if test='${v.animalType eq "기타"}'><img src="${path }/resources/images/vet/horse.png" title="기타동물들">
			</c:if>
		</c:forEach>
		
			<br/>
		<div class="operTimebox">
			<div id="operTime" class="infoTitle">- 진 료 시 간 -</div>
			<div class="operdiv">
				<div class="settime">
					<div>월요일</div>
					<div>${vet.vetDaySTime }:00 ~ ${vet.vetDayETime }:00</div>
				</div>
				<div class="settime">
					<div>화요일</div>
					<div>${vet.vetDaySTime }:00 ~ ${vet.vetDayETime }:00</div>
				</div>
			</div>
			<div class="operdiv">
				<div class="settime">
					<div>수요일</div>
					<div>${vet.vetDaySTime }:00 ~ ${vet.vetDayETime }:00</div>
				</div>
				<div class="settime">
					<div>목요일</div>
					<div>${vet.vetDaySTime }:00 ~ ${vet.vetDayETime }:00</div>
				</div>
			</div>
			<div class="operdiv">
				<div class="settime">
					<div>금요일</div>
					<div>${vet.vetDaySTime }:00 ~ ${vet.vetDayETime }:00</div>
				</div>
				<div class="settime">
					<div>토요일</div>
					<div>${vet.vetSatSTime }:00 ~ ${vet.vetSatETime }:00</div>
				</div>
			</div>
			<div class="operdiv">
				<div class="settime">
					<div>공휴일</div>
					<div>${vet.vetSunSTime }:00 ~ ${vet.vetSunETime }:00</div>
				</div>
				<div class="settime">
						<div></div>
						<div></div>
					</div>
				
			</div>

			<div id="setttimmeNotice">
				병원의 사정에 의해서 운영 시간은 변경될수 있습니다<br>
				병원 방문 전에 꼭 전화로 확인해주세요.
			</div>

			<div id="phone" class="infoTitle">- 전 화 번 호 -</div>
			<div id="phonenumber">${vet.vetPhone }</div>

			<div id="appendix" class="infoTitle">- 부 가 정 보 -</div>
			<div id="appendixInfo">${vet.vetComment }</div>

			<div id="vetService" class="infoTitle">- 부가서비스 -</div>
			<div>
			<c:forEach items="${vserv }" var="v" varStatus="status">
				<c:if test='${v.vetItem eq "야간"}'><img src="${path }/resources/images/vet/24hour.png" width="55"
						height="55" title="야간진료가능"></c:if>
				<c:if test='${v.vetItem eq "미용"}'><img src="${path }/resources/images/vet/beauty.png" width="55"
						height="55" title="반려동물미용"></c:if>
				<c:if test='${v.vetItem eq "호텔"}'><img src="${path }/resources/images/vet/hotel.png" width="55"
						height="55" title="반려동물호텔"></c:if>
				<c:if test='${v.vetItem eq "용품"}'><img src="${path }/resources/images/vet/goods.png" width="55"
						height="55" title="반려동물용품"></c:if>
			</c:forEach>
			<hr/>
			<br/>
		</div>
		</div>
	</div>


</section>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>