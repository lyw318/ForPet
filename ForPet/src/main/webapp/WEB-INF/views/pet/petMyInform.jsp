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
                    <li>마이 페이지에 오신 걸 환영합니다.</li>
                </ul>
            </div>
        </div>
    </div><br/>

	<div class="myPageMain_right">
		<div id="enroll-container">
		<form name="memberUpdateFrm" action="${pageContext.request.contextPath}/member/memberMyInform" method="post"
			onsubmit="return fn_update();">
		<div class="inputBackground" id="image_section">
			<div>
				<img class="fileUploadIcon" width="100px" height="100px"/>
				<input type="file" class="profileImgBox" name="petRenamedImage" id="petRenamedImage"/>
			</div>
		</div>
		<input type="text" class="form-control" placeholder="반려동물 이름" name="petName" id="petName" value="${pet }" required>
		<input type="date" class="form-container" placeholder="반려동물 생일" name="petBirth" id="petBirth" required>
		<select placeholder="반려동물 종류" name="petType" id="petType" onchange="petTypeChange()" required></select>					
		<input type="text" class="form-control" placeholder="상세품종을 적어주세요" name="petType2" id="petType2" required>
		
		</form>
		</div>
	</div>
</section>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
