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
		<table class="table" id="tbl-dev">
		<tr>
			<th>이메일</th>
			<td>${member.memberEmail}</td>
		</tr>
		<tr>
			<th>닉네임</th>
			<td>${member.memberNickname}</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>${member.memberName}</td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td>${member.memberPhone}</td>
		</tr>
		<tr>
			<th>주소</th>
			<td>${member.memberAddress}</td>
		</tr>
		
	</table>
	</div>
</section>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
