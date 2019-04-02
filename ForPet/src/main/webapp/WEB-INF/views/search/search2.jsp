<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<script type="text/javascript"
    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b07dc84ff25c3a3b3cad7f7f4c7e90d9&libraries=services"></script>

<section class="searchMainBox">
    <div class="">
        <div></div>
        <div id="map" style="width: 100%; height: 350px;"></div>
    </div>
</section>

<script>
                var json = JSON.parse('${jlist }');
                //Jlist[{"vetAddress":"서울시 강남구 역삼동 역삼로 234","vetComment":"서울시 강남구 역삼동 771번지 뉴튼프라자 101호","vetDayETime":22,"vetDaySTime":9,"vetName":"드림동물병원","vetPhone":"02-508-7583","vetSatETime":22,"vetSatSTime":9,"vetSeq":1,"vetSunETime":21,"vetSunSTime":10},{"vetAddress":"서울시 강남구 논현로 515","vetComment":"야간진료시간은 오후 10시부터 오전 9시","vetDayETime":22,"vetDaySTime":9,"vetName":"24시 닥터멍동물병원","vetPhone":"02-554-7505","vetSatETime":22,"vetSatSTime":9,"vetSeq":2,"vetSunETime":22,"vetSunSTime":9}]
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
                        level: 3 // 지도의 확대 레벨
                    };

                var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

                //주소-좌표 변환 객체를 생성합니다
                var geocoder = new daum.maps.services.Geocoder();

                var addressArray = [];
                //List wishList=new ArrayList();
                var wishList = new Object();
                var c=0;
                <c:forEach items="${list}" var="v" varStatus="s">
                wishList[${s.index}] = new Object();
                    wishList[${s.index}]['vetName']='${v.vetName}';
					wishList[${s.index}]['vetAddress']='${v.vetAddress}';
					c++;
                    
</c:forEach>

//var wishList = ${list };

/* for(var i=0;i<wishList.length;i++)
	{	
addressArray.push({
'groupAddress':'역삼동'
});
	} */
                    console.log(c);
for (var i = 0; i < c; i++) {
                    // 주소로 좌표를 검색합니다
                    geocoder.addressSearch(wishList[i]['vetAddress'], function (result, status) {

                        // 정상적으로 검색이 완료됐으면 
                        if (status === daum.maps.services.Status.OK) {

                            var coords = new daum.maps.LatLng(result[0].y, result[0].x);
                            // 결과값으로 받은 위치를 마커로 표시합니다
                            var marker = new daum.maps.Makers({
                                map: map,
                                position: coords
                            });
                            marker.serMap(map);

                            var content = '<div class="labelWish"><span class="leftWish"></span><span class="centerWish">' + result[0].address_name + '</span><span class="rightWish"></span></div>';

                            var customOverlay = new daum.maps.CustomOverlay({
                                position: coords,
                                content: content
                            });

                            customOverlay.setMap(map);
                            map.setCenter(coords);
                        }

                        //console.log("좌표: "+coords[i]);
                        console.log("주소: " + json[i]["vetAddress"]);
                        console.log("이름: " + json[i]["vetName"]);
                        positions[i] = "title:" + wishList[i]['vetName'] + ", latlng: " + coords[i];

                    });

                    // 마커를 표시할 위치와 title 객체 배열입니다 

                    // 마커 이미지의 이미지 주소입니다
                    var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";

                    for (var i = 0; i < c; i++) {

                        // 마커 이미지의 이미지 크기 입니다
                        var imageSize = new daum.maps.Size(24, 35);

                        // 마커 이미지를 생성합니다    
                        var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize);

                        // 마커를 생성합니다
                        var marker = new daum.maps.Marker({
                            map: map, // 마커를 표시할 지도
                            position: positions[i].latlng, // 마커를 표시할 위치
                            title: positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
                            image: markerImage // 마커 이미지 
                        });
                    }
}
                    </script>


<%@ include file="/WEB-INF/views/common/footer.jsp"%>