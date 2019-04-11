<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/myPage/myPageCommon.jsp" %>

    <div class="myPageMain_top">
        <div class="myPageMain_topBox">
            <div class="myPageMain_loc">
                <ul>
                    <li onclick="location.href='${path}/main/myPageMain'">
                        <img src="${path}/resources/images/back.png" width="18px">
                    </li>
                    <li>Member</li>
                    <li><span onclick="location.href='${path}/main/myPageMain'">마이페이지</span> &nbsp; > &nbsp; <span onclick="javascript:location.href='${path}/myvet/vetScrapList.do'">내가 찜한 병원</span></li>
                </ul>
            </div>
        </div>
    </div><br/>

	<div class="myPageMain_right">
		내가찜한 병원 리스트에 오신것을 환영합니다.
	</div>
</section>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
