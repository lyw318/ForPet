<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/admin/adminPageCommon.jsp" %>

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

	<div class="adminMain_right">
		관리자 페이지 메인입니다.
	</div>
</section>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
