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
	
	<!-- css link 모음 -->
    <link rel="stylesheet" href="${path }/resources/css/mainStyle.css" />
    <link rel="stylesheet" href="${path }/resources/css/loginPageStyle.css" />
    <link rel="stylesheet" href="${path }/resources/css/searchMainStyle.css" />
    
</head>

<body>
    <header class="mainHeader">
        <div class="headerMidBox">
            <img src="${path }/resources/images/mainLogaHeaderH80.png" alt="메인로고">
        </div>
        <div class="headerBottomBox">
            <div class="hMainMenu">
            	<div class="mainMenuBtn" onclick="javascript:location.href='${path}/main'">
                	HOME<div class="btnLine"></div>
                </div>
                <div class="mainMenuBtn" onclick="javascript:location.href='${path}/main/search'">
                	병원찾기<div class="btnLine"></div>
                </div>
                <div class="mainMenuBtn" onclick="javascript:location.href='${path}/main/noticeAndEvent'">
                	공지사항 & 이벤트<div class="btnLine"></div>
                </div>
                <div class="mainMenuBtn" onclick="javascript:location.href='#'">
                	커뮤니티<div class="btnLine"></div>
                </div>
                <div class="mainMenuBtn" onclick="javascript:location.href='${path}/main/defaultSection'">
                	기본작업 형식<div class="btnLine"></div>
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
                $(".headerMidBox").css("padding-top", "0px");
                $(".headerMidBox img").css("transition", "500ms");
                $(".headerMidBox img").css("opacity", "0");
            } else {
                $(".headerMidBox").css("height", "80px");
                $(".headerMidBox").css("padding-top", "20px");
                setTimeout(function () {
                	$(".headerMidBox img").css("opacity", "1");
                }, 500)
            }
        });
    </script>
	
	<!-- loginpage 모달창 추가 -->
	<%@ include file="/WEB-INF/views/member/loginPage.jsp" %>
	