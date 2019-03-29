<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<section class="">
	<table class="table" id="tbl-dev">
		<tr>
			<th>아이디(이메일)</th>
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
	
</section>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
