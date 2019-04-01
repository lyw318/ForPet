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
	<link rel="stylesheet" href="${path }/resources/css/myPage_mainStyle.css" />
	<link rel="stylesheet" href="${path }/resources/css/admin_mainStyle.css" />

</head>

<body>
    <header class="mainHeader">
        <div class="lodingLine"></div>
        <div class="HeightLine"></div>
        <div class="headerMidBox">
            <a href="${path}/main">
                <img src="${path }/resources/images/mainLogaHeaderH80.png" alt="메인로고">
            </a>
        </div>
        <div class="headerBottomBox">
            <div class="hMainMenu">
                <div class="hMainMenuBox">
                    <div class="mainMenuBtn_list" onclick="">
                        <img class="listIcon" src="${path }/resources/images/listIcon.jpg" alt="listIcon">
                        <img class="listIconClose" src="${path }/resources/images/listIconClose.jpg"
                            alt="listIconClose">
                    </div>
                </div>
                <div class="hMainMenuBox">
                    <div class="mainMenuBtn mainMenuBtn1" onclick="javascript:location.href='${path}/main/search'">
						병원찾기
                    </div>
                </div>
                <div class="hMainMenuBox">
                    <div class="mainMenuBtn mainMenuBtn2" onclick="javascript:location.href='${path}/main/noticeAndEvent'">
						 공지사항
                    </div>
                </div>
                <div class="hMainMenuBox">
                    <div class="mainMenuBtn mainMenuBtn3" onclick="javascript:location.href='#'">
						커뮤니티
                    </div>
                </div>
                <div class="hMainMenuBox">
                    <div class="mainMenuBtn mainMenuBtn4" onclick="javascript:location.href='${path}/main/defaultSection'">
						기본작업 형식
                    </div>
                </div>
            </div>

            <div class="mainMenuLine">
                <div class="mainMenuLineBox">
                    <div class="mainMenuLineBefore"></div>
                    <div class="mainMenuLineAfter"></div>
                </div>
            </div>
            <div class="mainMenuSubBox">
                <div class="mainMenuSubMenu mainMenuSubMenu1">
                    <div class="mainMenuSubBtn" onclick="javascript:location.href='#'">서브메뉴1-1</div>
                    <div class="mainMenuSubBtn" onclick="javascript:location.href='#'">서브메뉴1-2</div>
                </div>
                <div class="mainMenuSubMenu mainMenuSubMenu2">
                    <div class="mainMenuSubBtn" onclick="javascript:location.href='#'">서브메뉴2-1</div>
                    <div class="mainMenuSubBtn" onclick="javascript:location.href='#'">서브메뉴2-2</div>
                </div>
                <div class="mainMenuSubMenu mainMenuSubMenu3">
                    <div class="mainMenuSubBtn" onclick="javascript:location.href='#'">자유게시판</div>
                    <div class="mainMenuSubBtn" onclick="javascript:location.href='#'">소모임게시판</div>
                </div>
                <div class="mainMenuSubMenu mainMenuSubMenu4">
                    <div class="mainMenuSubBtn" onclick="javascript:location.href='#'">서브메뉴4-1</div>
                    <div class="mainMenuSubBtn" onclick="javascript:location.href='#'">서브메뉴4-2</div>
                </div>
            </div>
            <div class="mainMenuList">
                <div class="mainMenuList_Box">
                    <div class="mainMenuList_left">
                        <div class="mainMenuListCol">
                        </div>
                        <div class="mainMenuListCol mainMenuListCol1">
                            <div class="mainMenuListSubBtn" onclick="javascript:location.href='#'">서브메뉴1-1</div>
                            <div class="mainMenuListSubBtn" onclick="javascript:location.href='#'">서브메뉴1-2</div>
                        </div>
                        <div class="mainMenuListCol mainMenuListCol2">
                            <div class="mainMenuListSubBtn" onclick="javascript:location.href='#'">서브메뉴2-1</div>
                            <div class="mainMenuListSubBtn" onclick="javascript:location.href='#'">서브메뉴2-2</div>
                        </div>
                        <div class="mainMenuListCol mainMenuListCol3">
                            <div class="mainMenuListSubBtn" onclick="javascript:location.href='#'">자유게시판</div>
                            <div class="mainMenuListSubBtn" onclick="javascript:location.href='#'">소모임게시판</div>
                        </div>
                        <div class="mainMenuListCol mainMenuListCol4">
                            <div class="mainMenuListSubBtn" onclick="javascript:location.href='#'">서브메뉴4-1</div>
                            <div class="mainMenuListSubBtn" onclick="javascript:location.href='#'">서브메뉴4-2</div>
                        </div>
                    </div>
                    <div class="mainMenuList_right">
                        <img src="${path }/resources/images/listImage.jpg" alt="listImage">
                    </div>
                </div>
            </div>

            <c:if test="${loggedMember==null }">
	            <div class="hBottomMenu">
	                <div class="logMenuBtn" onclick="fn_defaultViewAjax()" >로그인</div>
	                <div class="logMenuBtn" onclick="javascript:location.href='${path}/main/memberEnroll'">회원가입</div>
	            </div>
            </c:if>

            <c:if test="${loggedMember!=null}"> 
				<div class="hBottomMenu">
				   <div class="hBottomMenuText">
				       <div id="userBox">
				           <div class="petIconBox">
				               <img src="${path }/resources/images/petIcon.png" style="width: 20px; height: 20px;">
							</div>
							<div class="userIdBox">${loggedMember.memberEmail}</div>
							<%@ include file="/WEB-INF/views/common/userIdWindow.jsp" %>
						</div>
						&nbsp;
						님, 환영합니다.
						&nbsp;
						<div class="logMenuBtn" onclick="location.href='${path }/member/logOut.do'">로그아웃</div>
						
						<c:if test="${loggedMember.memberEmail == 'admin'}"> 
							<div class="logMenuBtn" onclick="location.href='${path }/main/adminPageMain'">관리자 페이지</div>
						</c:if>
						
						
				    </div>
				</div>
            </c:if>
        </div>
    </header>
    <script>

        var listMenuFlag = false;
        //리스트 열기
        $(".listIcon").click(function () {
            $(".listIcon").css("display", "none");
            $(".listIconClose").css("display", "inline");

            $(".mainMenuList").css("top", "38px");
            listMenuFlag = true;


            $('.mainMenuLineBefore').css("width", "0");
            $('.mainMenuLineAfter').css("left", "0");
            $('.headerBottomBox').css("background-color", "white");
            $('.mainMenuSubBox').css("height", "0px");
            $('.mainMenuSubMenu').css("display", "none");
            $('.mainMenuSubMenu div').css("display", "none");
        })
        $(".listIconClose").click(function () {
            $(".listIcon").css("display", "inline");
            $(".listIconClose").css("display", "none");

            $(".mainMenuList").css("top", "-500px");
            listMenuFlag = false;

        })

        //서브메뉴 기능
        $(".mainMenuBtn").hover(function (e) {
            if (listMenuFlag == false) {
                //서브메뉴열기
                $('.headerBottomBox').css("background-color", "rgb(255, 245, 235)");
                $('.mainMenuSubBox').css("height", "50px");
                $('.mainMenuSubMenu').css("display", "flex");

                //메인메뉴 라인 좌표값
                var lineStrat = e.currentTarget.offsetLeft - 10;
                var lineEnd = e.currentTarget.offsetLeft + e.currentTarget.clientWidth + 10;

                if (e.currentTarget.innerText == 'HOME') {
                    $('.mainMenuLineBefore').css("width", lineStrat);
                    $('.mainMenuLineAfter').css("left", lineEnd);
                    $('.mainMenuSubMenu div').css("display", "none");
                }
                else if (e.currentTarget.innerText == '병원찾기') {
                    //메인메뉴 라인 설정
                    $('.mainMenuLineBefore').css("width", lineStrat);
                    $('.mainMenuLineAfter').css("left", lineEnd);

                    //서브메뉴 시작지점 설정
                    $('.mainMenuSubMenu1').css("left", lineStrat);

                    //서브메뉴 생성
                    $('.mainMenuSubMenu div').css("display", "none");
                    $('.mainMenuSubMenu1 div').css("display", "flex");
                }
                else if (e.currentTarget.innerText == '공지사항') {
                    //메인메뉴 라인 설정
                    $('.mainMenuLineBefore').css("width", lineStrat);
                    $('.mainMenuLineAfter').css("left", lineEnd);

                    //서브메뉴 시작지점 설정
                    $('.mainMenuSubMenu2').css("left", lineStrat);

                    //서브메뉴 생성
                    $('.mainMenuSubMenu div').css("display", "none");
                    $('.mainMenuSubMenu2 div').css("display", "flex");
                }
                else if (e.currentTarget.innerText == '커뮤니티') {
                    //메인메뉴 라인 설정
                    $('.mainMenuLineBefore').css("width", lineStrat);
                    $('.mainMenuLineAfter').css("left", lineEnd);

                    //서브메뉴 시작지점 설정
                    $('.mainMenuSubMenu3').css("left", lineStrat);

                    //서브메뉴 생성
                    $('.mainMenuSubMenu div').css("display", "none");
                    $('.mainMenuSubMenu3 div').css("display", "flex");
                }
                else if (e.currentTarget.innerText == '기본작업 형식') {
                    //메인메뉴 라인 설정
                    $('.mainMenuLineBefore').css("width", lineStrat);
                    $('.mainMenuLineAfter').css("left", lineEnd);

                    //서브메뉴 시작지점 설정
                    $('.mainMenuSubMenu4').css("left", lineStrat);

                    //서브메뉴 생성
                    $('.mainMenuSubMenu div').css("display", "none");
                    $('.mainMenuSubMenu4 div').css("display", "flex");
                }
            }

        })

        //메인메뉴에 마우스가 벗어날때 기능
        $(".mainHeader").mouseleave(function () {
            $('.mainMenuLineBefore').css("width", "0");
            $('.mainMenuLineAfter').css("left", "0");
            $('.headerBottomBox').css("background-color", "white");
            $('.mainMenuSubBox').css("height", "0px");
            $('.mainMenuSubMenu').css("display", "none");
            $('.mainMenuSubMenu div').css("display", "none");
        })



        // 로딩 게이지
        $(function () {
            $('.lodingLine').css("width", "100%");
            setTimeout(function () {
                $(".lodingLine").css("opacity", "0");
            }, 500)
        })

        // 스크롤 게이지
        $(window).scroll(function () {
            var target = $('.HeightLine');
            var scrollTo = $(window).scrollTop(),
                docHeight = $(document).height(),
                windowHeight = $(window).height();
            scrollPercent = (scrollTo / (docHeight - windowHeight)) * 100;
            target.css("width", scrollPercent + "%");
        })

        //메인 헤더 숨기기
        $(window).scroll(function () {
            if ($(window).scrollTop() != 0) {
                $(".headerMidBox").css("transition", "500ms");
                $(".headerMidBox").css("height", "0px");
                $(".headerMidBox").css("padding-top", "0px");
                $(".headerMidBox").css("padding-bottom", "3px");
                $(".headerMidBox img").css("transition", "500ms");
                $(".headerMidBox img").css("opacity", "0");
            } else {
                $(".headerMidBox").css("height", "80px");
                $(".headerMidBox").css("padding-top", "20px");
                $(".headerMidBox").css("padding-boottom", "10px");
                setTimeout(function () {
                    $(".headerMidBox img").css("opacity", "1");
                }, 500)
            }
        });
        
    </script>

    <!-- loginpage 모달창 추가 -->
    <%@ include file="/WEB-INF/views/member/loginPage.jsp" %>