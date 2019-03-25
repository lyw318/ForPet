<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>ForPet</title>
    <script src="${path }/resources/js/jquery-3.3.1.min.js"></script>

    <link rel="stylesheet" href="${path }/resources/css/mainStyle.css" />
    <link rel="stylesheet" href="${path }/resources/css/loginPageStyle.css" />

</head>

<body>
    <header class="mainHeader">
        <div class="headerMidBox">
            <img src="${path }/resources/images/mainLogo1.jpg" alt="메인로고">
        </div>
        <div class="headerBottomBox">
            <div class="hMainMenu">
                <div class="mainMenuBtn">병원찾기<div class="btnLine"></div>
                </div>
                <div class="mainMenuBtn">공지사항 & 이벤트<div class="btnLine"></div>
                </div>
                <div class="mainMenuBtn">커뮤니티<div class="btnLine"></div>
                </div>
            </div>
            <div class="hBottomMenu">
                <div class="logMenuBtn" onclick="fn_defaultViewAjax()">로그인</div>
                <div class="logMenuBtn">회원가입</div>
            </div>
        </div>
    </header>
    <script>
        //메인 헤더 숨기기
        $(window).scroll(function () {
            if ($(window).scrollTop() != 0) {
                $(".headerMidBox").css("transition", "500ms");
                $(".headerMidBox").css("height", "0px");
                $(".headerMidBox img").css("transition", "500ms");
                $(".headerMidBox img").css("opacity", "0");
            } else {
                $(".headerMidBox").css("height", "150px");
                setTimeout(function () {
                $(".headerMidBox img").css("opacity", "1");
                }, 500)
            }
        });
    </script>

    <section class="mainSection">
        <div class="mainImageScreen">
            <div class="mainImageBox">
                <img class="mainPageImage" src="${path }/resources/images/main1024.jpg" alt="메인화면이미지">
                <div class="mainPageSearch">
                    병원검색&nbsp;&nbsp;
                    <input class="mainPageSearchInput" type="text" />
                </div>
            </div>
        </div>
    </section>

    <jsp:include page="/WEB-INF/views/member/loginPage.jsp" />

    <footer class="mainFooter">
            <img class="mainPageImage" src="${path }/resources/images/footerLogaName.jpg" alt="로고이름명" style="margin-left: 100px;">
            <pre>
                (주) ForPet  |  사업자등록번호 : 1234 - 00 - 12345  |  프로젝트팀 : ForPet  |  개인정보관리책임자 : ForPet
                서울특별시 강남구 
                Tel : 000.0000.0000  월-금 (10:00 - 19:00 ) Email : ForPet@ForPet.co.kr
                
                © 2019 ForPet Inc. All Rights Reserved.
	        </pre>
    </footer>
</body>

</html>