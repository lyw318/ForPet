<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b07dc84ff25c3a3b3cad7f7f4c7e90d9&libraries=services,clusterer,drawing"></script>
<script type="text/javascript" src="${path }/resources/js/kakao.js"></script>
<link rel="stylesheet" href="${path }/resources/css/search.css">


<section class="searchSection">
<div id="mapcontainer">
	<div id="leftsearch" >
		<div id="selectcontainer">
	    <form id="leftselect">
						<input type="text" id="keyword" size="15" placeholder="동이름을 검색하세요" class="areaaddress">
						<br/> <select id='vettype' class="vettype">
							<option value='all'>진료 과목 : 전체선택</option>
							<option value='개'>개</option>
							<option value='고양이'>고양이</option>
							<option value='햄스터'>햄스터</option>
							<option value='기니피그'>기니피그</option>
							<option value='토끼'>토끼</option>
							<option value='고슴도치'>고슴도치</option>
							<option value='기타'>기타동물</option>
						</select><br />
					</form>
		</div>
		<input type="hidden" id="address11"/>
		<div id="selectlist"></div>
		<script>
		var address;
		var vetname;
		if(address==null&&vetname==null)
		{
			address="서울시 강남구 역삼동 역삼로 234";
			vetname="드림동물병원";
		}
		var oldVal;
		function fn_address(e,n) {
			
			console.log("어드레스 입력완료:"+e+"<>"+n);
			 
			$("#map").empty();
			kakaomap(e,n);
		}	
		
		$(function (){
			$('#keyword').on("keyup", function(){
			var currentVal = $(this).val();
			if(currentVal == oldVal){
				return;
			}
			oldVal = currentVal;
			$.ajax({
			url:"${path }/vetSearch.do",
			/* ${path }= ${pageContext.request.contextPath} 동일 */
			type : "post",
			cache : false,
			data: {search : $("#keyword").val().trim(), type:$("#vettype").val()},
			success : function(data){
				$("#selectlist").empty();
				var html = "";
				console.log("list?"+data[0]);
				for(var i = 0; i<data.length;i++){
				html+='<div class="vetListBox" onclick="fn_address(\''+data[i].vetAddress+'\',\''+data[i].vetName+'\')">';
				html+='<div class="vetListName">'+data[i].vetName+'</div>';
				html+='<div class="vetListAddress">'+data[i].vetAddress+'</div>';				
				html+='</div>';
				}
				
				console.log("HTML:"+html);
				$("#selectlist").append(html);
		
			
			}//success
							
			});//ajax
						
			});//function	
		});//function
		
				
		
		</script>
		
	</div>
<div id="map" ></div>

</div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b07dc84ff25c3a3b3cad7f7f4c7e90d9&libraries=services"></script>
<script>
//초기 지도 출력
kakaomap(address,vetname);

//지도 출력구문
function kakaomap(address,vetname){

var markers = [];
var lat = 0;
var lon = 0;

//현재위치를 기본 설정값으로 변경함 / HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
if (navigator.geolocation) {

	// GeoLocation을 이용해서 접속 위치를 얻어옵니다
	navigator.geolocation.getCurrentPosition(function (position) {

		lat = position.coords.latitude, // 위도
			lon = position.coords.longitude; // 경도

	});

} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

	lat = 37.500966, // 역삼역 위도
	lon = 127.037540; // 역삼역 경도
}
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center: new daum.maps.LatLng(lat, lon), // 지도의 중심좌표
		level: 3
		//지도 확대 레벨
	};

// 지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new daum.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch(address, function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === daum.maps.services.Status.OK) {

        var coords = new daum.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new daum.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new daum.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+vetname+'</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
}
</script>



</section>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>