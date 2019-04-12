<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/myPage/myPageCommon.jsp" %>

<link rel="stylesheet" href="${path }/resources/css/myVetListStyle.css"/>

<script>

function unscrapAjax(vetSeq){
console.log(vetSeq);
	$.ajax({
		url:"${pageContext.request.contextPath}/vetView/unscrap.do",
		dataType : "json",
		data:{"memberSeq":"${loggedMember.memberSeq}","vetSeq":vetSeq},
		success:function(data)
		{
			console.log(data);
			
			if (data=1)
				{
				alert("스크랩 취소가 완료되었습니다.");		
				location.reload();
				}
			if (data==0)
				{
				alert("취소가 실패하였습니다.");
				}	
		},
		error : function(request, status, error){
			
		}
	});
}
//주소를 좌표로 가져오기

function searchAddress(address, prefix,seq){ 
	//console.log("주소입력"+address);
	$.ajax({
		method:"GET",
		url:"https://api2.sktelecom.com/tmap/geo/fullAddrGeo?version=1&format=xml&callback=result",
		async:false,
		data:{
			"coordType" : "WGS84GEO",
			"fullAddr" : address,
			"page" : "1",
			"count" : "20",
			"appKey" : "8ea84df6-f96e-4f9a-9429-44cee22ab70f",
			//fdda0257-5e92-40aa-8341-f0a18a517f5c 내꺼
			//8ea84df6-f96e-4f9a-9429-44cee22ab70f 
		}, success:function(response){
			var xmlData = $.parseXML(new XMLSerializer().serializeToString(response));
			var $coordinate = $(xmlData).find("coordinate");
			
			if($coordinate.length === 0){
				return alert("검색 결과가 없습니다.");
			}
			
			var lon, lat;
			
			if($coordinate[0].getElementsByTagName("lon").length>0){//구주소
				lon = $coordinate[0].getElementsByTagName("lon")[0].childNodes[0].nodeValue;
			   	lat = $coordinate[0].getElementsByTagName("lat")[0].childNodes[0].nodeValue;
			}else{//신주소
				lon = $coordinate[0].getElementsByTagName("newLon")[0].childNodes[0].nodeValue;
				lat = $coordinate[0].getElementsByTagName("newLat")[0].childNodes[0].nodeValue;
			}
			$("#"+prefix+"lon"+seq).val(lon);
			$("#"+prefix+"lat"+seq).val(lat);
			//var position = new Tmap.LonLat(lon, lat).transform("EPSG:4326", "EPSG:3857");
			//map.setCenter(position, 20);
			
			
		}, error:function(request, status, error){
			alert("검색이 실패했습니다.");
		}
	});
};

</script>

    <div class="myPageMain_top">
        <div class="myPageMain_topBox">
            <div class="myPageMain_loc">
                <ul>
                    <li onclick="location.href='${path}/main/myPageMain'">
                        <img src="${path}/resources/images/back.png" width="18px">
                    </li>
                    <li>Animal Hospital</li>
                    <li><span onclick="location.href='${path}/main/myPageMain'">마이페이지</span> &nbsp; > &nbsp; <span onclick="javascript:location.href='${path}/myvet/vetScrapList.do'">내가 찜한 병원</span></li>
                </ul>
            </div>
        </div>
    </div><br/>

	<div class="myPageMain_right">
		<div class="vetlist">
			<div class="vetList-title">나의 병원 목록</div>
			<input type="hidden" id="mlon" />
			<input type="hidden" id="mlat" />
			<script>
					searchAddress('${loggedMember.memberAddress}',"m","");
			</script>

		<div class="vet-itembox">	
		
			<c:forEach var="l" items="${list }" varStatus="status">
			<div class="vet-item">
				<div class="vet-title">${l.vetName }</div>
				<div class="vet-sub-title">${l.vetAddress}</div>
				<div class="vet-time">가는거리</div>
				<div class="vet-btn">
					<button onclick="unscrapAjax('${l.vetSeq }')">스크랩취소</button>
				</div>
			</div>
			<input type="hidden" id="vlon${l.vetSeq}"/>
			<input type="hidden" id="vlat${l.vetSeq}"/>
			<script>
				searchAddress('${l.vetAddress}',"v",'${l.vetSeq }');
			</script>
			
			</c:forEach>
			
		</div>
		</div>
		
	</div>
	</section>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
