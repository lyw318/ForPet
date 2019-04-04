<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ include file="/WEB-INF/views/common/header.jsp"%>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b07dc84ff25c3a3b3cad7f7f4c7e90d9&libraries=services,clusterer,drawing"></script>
<script type="text/javascript" src="${path }/resources/js/kakao.js"></script>
<section class="searchSection">
	<style>
		.map_wrap,
		.map_wrap * {
			margin: 0;
			padding: 0;
			font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
			font-size: 12px;
		}

		.map_wrap a,
		.map_wrap a:hover,
		.map_wrap a:active {
			color: #000;
			text-decoration: none;
		}

		.map_wrap {
			position: relative;
			width: 100%;
			height: 500px;
		}

		#menu_wrap {
			position: absolute;
			top: 0;
			left: 0;
			bottom: 0;
			width: 250px;
			margin: 10px 0 30px 10px;
			padding: 5px;
			overflow-y: auto;
			background: rgba(255, 255, 255, 0.8);
			z-index: 1;
			font-size: 12px;
			border-radius: 10px;
		}

		.bg_white {
			background: #fff;
		}

		#menu_wrap hr {
			display: block;
			height: 1px;
			border: 0;
			border-top: 2px solid #5F5F5F;
			margin: 3px 0;
		}

		#menu_wrap .option {
			text-align: center;
		}

		#menu_wrap .option p {
			margin: 10px 0;
		}

		#menu_wrap .option button {
			margin-left: 5px;
		}

		#placesList li {
			list-style: none;
		}

		#placesList .item {
			position: relative;
			border-bottom: 1px solid #888;
			overflow: hidden;
			cursor: pointer;
			min-height: 65px;
		}

		#placesList .item span {
			display: block;
			margin-top: 4px;
		}

		#placesList .item h5,
		#placesList .item .info {
			text-overflow: ellipsis;
			overflow: hidden;
			white-space: nowrap;
		}

		#placesList .item .info {
			padding: 10px 0 10px 55px;
		}

		#placesList .info .gray {
			color: #8a8a8a;
		}

		#placesList .info .jibun {
			padding-left: 26px;
			background:
				url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;
		}

		#placesList .info .tel {
			color: #009900;
		}

		#placesList .item .markerbg {
			float: left;
			position: absolute;
			width: 36px;
			height: 37px;
			margin: 10px 0 0 10px;
			background:
				url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;
		}

		#placesList .item .marker_1 {
			background-position: 0 -10px;
		}

		#placesList .item .marker_2 {
			background-position: 0 -56px;
		}

		#placesList .item .marker_3 {
			background-position: 0 -102px
		}

		#placesList .item .marker_4 {
			background-position: 0 -148px;
		}

		#placesList .item .marker_5 {
			background-position: 0 -194px;
		}

		#placesList .item .marker_6 {
			background-position: 0 -240px;
		}

		#placesList .item .marker_7 {
			background-position: 0 -286px;
		}

		#placesList .item .marker_8 {
			background-position: 0 -332px;
		}

		#placesList .item .marker_9 {
			background-position: 0 -378px;
		}

		#placesList .item .marker_10 {
			background-position: 0 -423px;
		}

		#placesList .item .marker_11 {
			background-position: 0 -470px;
		}

		#placesList .item .marker_12 {
			background-position: 0 -516px;
		}

		#placesList .item .marker_13 {
			background-position: 0 -562px;
		}

		#placesList .item .marker_14 {
			background-position: 0 -608px;
		}

		#placesList .item .marker_15 {
			background-position: 0 -654px;
		}

		#pagination {
			margin: 10px auto;
			text-align: center;
		}

		#pagination a {
			display: inline-block;
			margin-right: 10px;
		}

		#pagination .on {
			font-weight: bold;
			cursor: default;
			color: #777;
		}
	</style>
	<div class="map_wrap">
		<div id="map" style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>

		<div id="menu_wrap" class="bg_white">
			<div class="option">
				<div>
					<form onsubmit="searchPlaces(); return false;">
						키워드 : <input type="text" value="역삼동" id="keyword" size="15">
						<button type="submit">검색하기</button>
						<br /> 진료받을동물 : <select id='vettype'>
							<option value=''>동물선택</option>
							<option value='전체'>전체선택</option>
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
			</div>
			<hr>
			<ul id="placesList"></ul>
			<div id="pagination"></div>
		</div>
	</div>
	<script>
		// 마커를 담을 배열입니다
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
				level: 2
				//지도 확대 레벨
			};

		// 지도를 생성합니다    
		var map = new daum.maps.Map(mapContainer, mapOption);

		// 장소 검색 객체를 생성합니다
		var ps = new daum.maps.services.Places();

		// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
		var infowindow = new daum.maps.InfoWindow({
			zIndex: 1
		});

		// 키워드로 장소를 검색합니다
		searchPlaces();

		// 키워드 검색을 요청하는 함수입니다
		function searchPlaces() {

			var keyword = document.getElementById('keyword').value;
			var vettype = document.getElementById('vettype').value;
			//console.log(keyword+vettype);//이상없음
			if (!keyword.replace(/^\s+|\s+$/g, '')) {
				if (vettype != '') {
					keyword = vettype;
				} else {
					alert('키워드를 입력해주세요!');
					return false;
				}
			}
			keyword += " " + vettype;

			// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
			ps.keywordSearch(keyword, placesSearchCB);
		}

		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
			if (status === daum.maps.services.Status.OK) {

				//data 는 장소검색후 장소 개체
				// 정상적으로 검색이 완료됐으면
				// 검색 목록과 마커를 표출합니다
				displayPlaces(data);

				// 페이지 번호를 표출합니다
				displayPagination(pagination);

			} else if (status === daum.maps.services.Status.ZERO_RESULT) {

				alert('검색 결과가 존재하지 않습니다.');
				return;

			} else if (status === daum.maps.services.Status.ERROR) {

				alert('검색 결과 중 오류가 발생했습니다.');
				return;

			}
		}

		// 검색 결과 목록과 마커를 표출하는 함수입니다
		function displayPlaces(places) {

			var listEl = document.getElementById('placesList'), menuEl = document
				.getElementById('menu_wrap'), fragment = document
					.createDocumentFragment(), bounds = new daum.maps.LatLngBounds(), listStr = '';

			// 검색 결과 목록에 추가된 항목들을 제거합니다
			removeAllChildNods(listEl);

			// 지도에 표시되고 있는 마커를 제거합니다
			removeMarker();

			for (var i = 0; i < places.length; i++) {

				// 마커를 생성하고 지도에 표시합니다
				var placePosition = new daum.maps.LatLng(places[i].y,
					places[i].x), marker = addMarker(placePosition, i), itemEl = getListItem(
						i, places[i]); // 검색 결과 항목 Element를 생성합니다

				// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
				// LatLngBounds 객체에 좌표를 추가합니다
				bounds.extend(placePosition);

				// 마커와 검색결과 항목에 mouseover 했을때
				// 해당 장소에 인포윈도우에 장소명을 표시합니다
				// mouseout 했을 때는 인포윈도우를 닫습니다
				(function (marker, title) {
					daum.maps.event.addListener(marker, 'mouseover',
						function () {
							displayInfowindow(marker, title);
						});

					daum.maps.event.addListener(marker, 'mouseout', function () {
						infowindow.close();
					});

					itemEl.onmouseover = function () {
						displayInfowindow(marker, title);
					};

					itemEl.onmouseout = function () {
						infowindow.close();
					};
				})(marker, places[i].place_name);

				fragment.appendChild(itemEl);
			}

			// 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
			listEl.appendChild(fragment);
			menuEl.scrollTop = 0;

			// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
			map.setBounds(bounds);
		}

		// 검색결과 항목을 Element로 반환하는 함수입니다
		function getListItem(index, places) {

			var el = document.createElement('li'), itemStr = '<span class="markerbg marker_'
				+ (index + 1)
				+ '"></span>'
				+ '<div class="info">'
				+ '   <h5>' + places.place_name + '</h5>';

			if (places.road_address_name) {
				itemStr += '    <span>' + places.road_address_name + '</span>'
					+ '   <span class="jibun gray">' + places.address_name
					+ '</span>';
			} else {
				itemStr += '    <span>' + places.address_name + '</span>';
			}

			itemStr += '  <span class="tel">' + places.phone + '</span>'
				+ '</div>';

			el.innerHTML = itemStr;
			el.className = 'item';

			return el;
		}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, idx, title) {
			var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
				imageSize = new daum.maps.Size(36, 37), // 마커 이미지의 크기
				imgOptions = {
					spriteSize: new daum.maps.Size(36, 691), // 스프라이트 이미지의 크기
					spriteOrigin: new daum.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
					offset: new daum.maps.Point(13, 37)
					// 마커 좌표에 일치시킬 이미지 내에서의 좌표
				}, markerImage = new daum.maps.MarkerImage(imageSrc, imageSize,
					imgOptions), marker = new daum.maps.Marker({
						position: position, // 마커의 위치
						image: markerImage
					});

			marker.setMap(map); // 지도 위에 마커를 표출합니다
			markers.push(marker); // 배열에 생성된 마커를 추가합니다

			return marker;
		}

		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(null);
			}
			markers = [];
		}

		// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
		function displayPagination(pagination) {
			var paginationEl = document.getElementById('pagination'), fragment = document
				.createDocumentFragment(), i;

			// 기존에 추가된 페이지번호를 삭제합니다
			while (paginationEl.hasChildNodes()) {
				paginationEl.removeChild(paginationEl.lastChild);
			}

			for (i = 1; i <= pagination.last; i++) {
				var el = document.createElement('a');
				el.href = "#";
				el.innerHTML = i;

				if (i === pagination.current) {
					el.className = 'on';
				} else {
					el.onclick = (function (i) {
						return function () {
							pagination.gotoPage(i);
						}
					})(i);
				}

				fragment.appendChild(el);
			}
			paginationEl.appendChild(fragment);
		}

		// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
		// 인포윈도우에 장소명을 표시합니다
		function displayInfowindow(marker, title) {
			var content = '<div style="padding:5px;z-index:1;">' + title
				+ '</div>';

			infowindow.setContent(content);
			infowindow.open(map, marker);
		}

		// 검색결과 목록의 자식 Element를 제거하는 함수입니다
		function removeAllChildNods(el) {
			while (el.hasChildNodes()) {
				el.removeChild(el.lastChild);
			}
		}
	</script>

</section>
<section class="searchSection2">
	<c:forEach items="${list }" var="v">
		병원리스트<br>
		번호 - ${v.vetSeq }<br>
		이름 - ${v.vetName }<br>
		주소 - ${v.vetAddress }<br>
		전화 - ${v.vetPhone }<br>
		평 일 - ${v.vetDaySTime }:00 ~
		${v.vetDayETime }:00<br>
		토요일 - ${v.vetSatSTime }:00 ~
		${v.vetSatETime }:00<br>
		공휴일 -${v.vetSunSTime }:00 ~
		${v.vetSunETime }:00<br>
		기타정보 - ${v.vetComment }<br>
	</c:forEach>
</section>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>
