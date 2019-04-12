<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.forpet.model.vo.Member"%>

<%@ include file="/WEB-INF/views/admin/adminPageCommon.jsp" %>
<link rel="stylesheet" href="${path}/resources/css/admin_list.css"/>
<%List<Member> list=(List)request.getAttribute("list");%> 

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
		<div class="memberListBox_main">
		<table>
		<tr>
			<td colspan="6"><h3>회원 목록</h3></td>
		</tr>
		<tr>
		<th style="width:250px;">회원이메일</th>
		<th style="width:120px;">회원이름</th>
		<th style="width:200px;">회원닉네임</th>
		<th style="width:200px;">회원전화번호</th>
		<th style="width:250px;">회원주소</th>
		<th style="width:300px;">회원가입일</th>
		</tr>
		
			<%
			if(!list.isEmpty()){
			for(Member m:list){ 
			%>
			<tr>
				<td><%=m.getMemberEmail()%></td>
				<td><%=m.getMemberName()%></td>
				<td><%=m.getMemberNickname()%></td>
				<td><%=m.getMemberPhone()%></td>
				<td><%=m.getMemberAddress()%></td>
				<td><%=m.getMemberEnrolldate()%></td>			
			</tr>
			<%} }else{%>
			<tr>
				<td colspan="6" align="center">검색결과가 없습니다</td>
			</tr>
			<%} %>
			<tr>
				<td colspan="6" class="pageBar">${pageBar }</td>
			</tr>
		</table>
		</div>
	</div>
	
</section>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
