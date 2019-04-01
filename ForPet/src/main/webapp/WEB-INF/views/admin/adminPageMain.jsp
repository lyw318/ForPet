<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<section id="adminMain">

    <div class="adminMain_left">
        <ul class="sub">
            <li>회원관리</li>
                <ul class="sub">
                    <li>회원 목록</li>
                    <li>회원 탈퇴 대기</li>
                    <li>회원 탈퇴 목록</li>
                </ul>
            <li>병원 관리</li>
				<ul class="sub">
                    <li>병원 목록</li>
                    <li>병원 예약 관리</li>
				</ul>
            <li>커뮤니티 관리</li>
            <li>사이트 통계</li>
        </ul>
    </div>

    <script>  
        $(function () {
            var myPageLeftSelectValue = "";
            $(".adminMain_left>ul>li").click(function () {
                if ($(this).html() == myPageLeftSelectValue) {
                    myPageLeftSelectValue = $(this).html();
                    $(this).next("ul").slideToggle(500);
                } else {
                    myPageLeftSelectValue = $(this).html();
                    $(".adminMain_left>ul>li").next("ul").slideUp(500);
                    $(this).next("ul").slideToggle(500);
                }
            })
        })

        
        //메인 헤더 숨기기
        $(window).scroll(function () {
            if ($(window).scrollTop() != 0) {
                $(".adminMain_top").css("top", "46px");
            } else {
                $(".adminMain_top").css("top", "163px");
            }
        });
    </script>

    <div class="adminMain_top">
        <div class="adminMain_topBox">
            <div class="adminMain_loc">
                <ul>
                    <li onclick="location.href='${path}/main/adminPageMain'">
                        <img src="${path}/resources/images/back.png" width="18px">
                    </li>
                    <li>${loggedMember.memberEmail}</li>
                    <li>관리자 페이지에 오신 걸 환영합니다.</li>
                </ul>
            </div>
        </div>
    </div><br/>

	<div class="adminMain_right"></div>
</section>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
