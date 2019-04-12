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
                    <div class="memberSimpleProfileTalTitle">내 포인트</div>
                    <div class="memberSimpleProfileTalContent">100p</div>
                </div>
                <div class="memberSimpleProfileTal">
                    <div class="memberSimpleProfileTalTitle">내가 쓴 글 보기</div>
                    <div class="memberSimpleProfileTalContent" id="bCount"></div>
                </div>
                <div class="memberSimpleProfileTal">
                    <div class="memberSimpleProfileTalTitle">내가 쓴 댓글 보기</div>
                    <div class="memberSimpleProfileTalContent" id="bcCount"></div>
                </div>
            </div>
        </div>

        <ul class="sub">
            <li>내 정보</li>
                <ul class="sub">
					<li onclick="javascript:location.href='${path }/member/memberMyInform.do'">내 정보 보기</li>
                    <li onclick="javascript:location.href='${path }/member/memberUpdate.do'">내 정보 수정</li>
					<li onclick="javascript:location.href='${path }/member/memberDel.do'">회원 탈퇴</li>
                </ul>
            <li>내 반려동물</li>
                 <ul class="sub">
                 	<li onclick="javascript:location.href='${path}/pet/petList.do'">반려동물 목록</li>
                    <li onclick="javascript:location.href='${path }/pet/petEnroll.do'">반려동물 등록</li>
               		
                </ul>
            <li>내 병원예약</li>
            <li>내 커뮤니티</li>
				<ul class="sub">
					<li onclick="javascript:location.href='${path }/community/friendList'">친구 관리</li>
                    <li onclick="javascript:location.href='${path }/community/msgList'">쪽지 관리</li>
                </ul>
            <li>고객센터</li>
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