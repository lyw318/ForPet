<%@page import="com.forpet.model.vo.Member"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	/* 가입일 출력형식 변형을 위한 로직 */
	Member loggedMember = (Member) session.getAttribute("loggedMember");
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
	String userDate = sdf.format(loggedMember.getMemberEnrolldate());
%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link rel="stylesheet" href="${path }/resources/css/myVetListStyle.css"/>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b07dc84ff25c3a3b3cad7f7f4c7e90d9&libraries=services,clusterer,drawing"></script>
<script type="text/javascript" src="${path }/resources/js/kakao.js"></script>
<section id="myPageMain">
    <div class="myPageMain_left">
        <div class="memberSimpleProfileBox">
            <div class="memberSimpleProfileLine1">
                <div class="memberSimpleProfileImgBox">
                    <img src="${path }/resources/images/petIcon.png">
                </div>
                <div class="memberSimpleProfileLine1Text">
                    <div>
                        <div class="memberSimpleProfileNickname">${loggedMember.memberEmail}</div>
                        <div class="memberSimpleProfile">
							가입일<br>
                            <%= userDate %>
                        </div>
                    </div>
                </div>
            </div>
            <div class="memberSimpleProfileLine2">
                <div class="memberSimpleProfileTal">
                    <div class="memberSimpleProfileTalTitle">안 읽은 쪽지</div>
                    <div class="memberSimpleProfileTalContent">10</div>
                </div>
                <div class="memberSimpleProfileTal">
                    <div class="memberSimpleProfileTalTitle">내가 쓴 글 보기</div>
                    <div class="memberSimpleProfileTalContent" id="bCount">10</div>
                </div>
                <div class="memberSimpleProfileTal">
                    <div class="memberSimpleProfileTalTitle">내가 쓴 댓글 보기</div>
                    <div class="memberSimpleProfileTalContent" id="bcCount">100</div>
                </div>
            </div>
        </div>

        <ul class="sub">
            <li>내 정보</li>
                <ul class="sub">
					<li onclick="javascript:location.href='${path }/member/memberMyInform.do'">내 정보 보기</li>
                    <li onclick="javascript:location.href='${path }/member/memberUpdate.do'">내 정보 수정</li>
					<%-- <li onclick="javascript:location.href='${path }/member/memberDel.do'">회원 탈퇴</li> --%>
                </ul>
            <li>내 반려동물</li>
                 <ul class="sub">
                 	<li onclick="javascript:location.href='${path}/pet/petList.do'">반려동물 목록</li>
                    <li onclick="javascript:location.href='${path }/pet/petEnroll.do'">반려동물 등록</li>
                </ul>
            <li onclick="javascript:vetList()">내가 찜한 병원</li>
            <li onclick="javascript:location.href='${path }/community/friendList'">내 친구</li>
            <li>내 쪽지함</li>
				<ul class="sub">
                    <li onclick="javascript:location.href='${path }/community/msgList'">받은 쪽지</li>
                    <li onclick="javascript:location.href='${path }/community/msgListBlock'">차단된 쪽지</li>
                </ul>
        </ul>
    </div>

    <script>  
        $(function () {
            var myPageLeftSelectValue = "";
            $(".myPageMain_left>ul>li").click(function () {
                if ($(this).html() == myPageLeftSelectValue) {
                    myPageLeftSelectValue = $(this).html();
                    $(this).next("ul").slideToggle(500);
                } else {
                    myPageLeftSelectValue = $(this).html();
                    $(".myPageMain_left>ul>li").next("ul").slideUp(500);
                    $(this).next("ul").slideToggle(500);
                }
            })
        })

        
        //메인 헤더 숨기기
        $(window).scroll(function () {
            if ($(window).scrollTop() != 0) {
                $(".myPageMain_top").css("top", "46px");
            } else {
                $(".myPageMain_top").css("top", "133px");
            }
        });
    </script>
<script>

searchAddress('${loggedMember.memberAddress}',"m","");

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
			"appKey" : "fdda0257-5e92-40aa-8341-f0a18a517f5c",
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

function getTimeHTML(distance) {

    // 도보의 시속은 평균 4km/h 이고 도보의 분속은 67m/min입니다
    var walkkTime = distance / 67 | 0;
    var walkHour = '', walkMin = '';

    // 계산한 도보 시간이 60분 보다 크면 시간으로 표시합니다
    if (walkkTime > 60) {
        walkHour = '<span class="number">' + Math.floor(walkkTime / 60) + '</span>시간 '
    }
    walkMin = '<span class="number">' + walkkTime % 60 + '</span>분'

    // 자전거의 평균 시속은 16km/h 이고 이것을 기준으로 자전거의 분속은 267m/min입니다
    var bycicleTime = distance / 227 | 0;
    var bycicleHour = '', bycicleMin = '';

    // 계산한 자전거 시간이 60분 보다 크면 시간으로 표출합니다
    if (bycicleTime > 60) {
        bycicleHour = '<span class="number">' + Math.floor(bycicleTime / 60) + '</span>시간 '
    }
    bycicleMin = '<span class="number">' + bycicleTime % 60 + '</span>분'

    // 거리와 도보 시간, 자전거 시간을 가지고 HTML Content를 만들어 리턴합니다
    
    var content = '<span class="distance">집에서 ' + distance + '(m)미터</span>';
    content +='<p class="arrow_box">도보로 '+ walkHour + walkMin;
    content +='<br/>자전거로 '+ bycicleHour + bycicleMin+'</p>';
    
    return content;
}

var no;
function searchdistance(no)
{
	
	var mlon=$('#mlon').val();
	var mlat=$('#mlat').val();
	var vlon=$('#vlon'+no).val();
	var vlat=$('#vlat'+no).val();
	
	console.log("vlon"+vlon+"vlat"+vlat);
	
	var polyline=new daum.maps.Polyline({
		/* map:map, */
		path : [
		new daum.maps.LatLng(mlon,mlat),
		new daum.maps.LatLng(vlon,vlat)
		],
	 strokeWeight: 2,
	 strokeColor: '#FF00FF',
	 strokeOpacity: 0.8,
	 strokeStyle: 'dashed'
	});
	
	//return getTimeHTML(polyline.getLength());//미터단위로 길이 반환;
	console.log("길이"+polyline.getLength());
	return Math.round(polyline.getLength());
}
 
//메소드를 딜레이주기 
var i = 1;

function vetList()
{
	var header='<div class="vetlist">';
	header+='<div class="vetList-title">나의 병원 목록</div>';
	header+='<input type="hidden" id="mlon" />';
	header+='<input type="hidden" id="mlat" />';
	header+='<div class="vet-itembox">';	
	header+='</div>';
	header+='</div>';
	$('.myPageMain_right').html(header);
	searchAddress("${loggedMember.memberAddress}","m","");
	var html='<ul>';
	html+='<li onclick=\"location.href=\'${path}/main/myPageMain\'">';
    html+='<img src="${path}/resources/images/back.png" width="18px">';
    html+='</li>';
    html+='<li>Animal Hospital</li>';
    html+='<li><span onclick="location.href=\'${path}/main/myPageMain\'">마이페이지</span> &nbsp; > &nbsp; <span onclick="javascript:location.href=\'${path}/myvet/vetScrapList.do\'">내가 찜한 병원</span></li>';
    html+='</ul>';
    
	$('.myPageMain_loc').html(html);
		
	$.ajax({
		  url:"${path}/myvet/vetScrapList.do",
		  dataType:"json",
		  success:function(data)
		  {
			  //alert(data);
			  for(i=0;i<data.length;i++){
			  	delay(data[i]);
			  }
		  }

	});
}
function delay(data)
{
	setTimeout(function(){
		myLoop(data);
	}
	,3000)
}
function myLoop (data) {    
	   var html="";			 
		  html+='<div class="vet-item">';
		  html+='<div class="vet-title">'+data.vetName+'</div>';
		  html+='<div class="vet-sub-title">'+data.vetAddress+'</div>';
		  html+='<div class="vet-time'+data.vetSeq+'" id="vet-time">주소가 없습니다.</div>';
		  html+='<div class="vet-btn">';
		  html+='<button onclick="unscrapAjax('+data.vetSeq+')">스크랩취소</button>';
		  html+='</div>';
		  html+='</div>';
		  html+='<input type="hidden" id="vlon'+data.vetSeq+'"/>';
		  html+='<input type="hidden" id="vlat'+data.vetSeq+'"/>';
		  
	 	  $('.vet-itembox').append(html);
	
	  searchAddress(data.vetAddress, 'v', data.vetSeq);
	  $(".vet-time"+data.vetSeq).html(getTimeHTML(searchdistance(data.vetSeq)));
	  
}
</script>    