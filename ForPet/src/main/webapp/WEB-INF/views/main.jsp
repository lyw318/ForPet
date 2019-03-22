<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ForPet</title>
<script src="${path }/resources/js/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="${path }/resources/css/mainStyle.css" />
</head>
<body>
    <header>
        <div class="headerMidBox">
            <img src="${path }/resources/images/mainLogo1.jpg" alt="메인로고">
        </div>
        <div class="headerBottomBox">
            <div class="hMainMenu">
                <div class="mainMenuBtn">병원찾기<div class="btnLine"></div></div>
                <div class="mainMenuBtn">공지사항 & 이벤트<div class="btnLine"></div></div>
                <div class="mainMenuBtn">커뮤니티<div class="btnLine"></div></div>
            </div>
            <div class="hBottomMenu">
                <div class="logMenuBtn">로그인</div>
                <div class="logMenuBtn">회원가입</div>
            </div>
        </div>
    </header>
    <section class="mainSection">
            mainPage 화면입니다.
    </section>
    <footer></footer>
</body>
</html>