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
			<td colspan="8"><h3>탈퇴회원 목록</h3></td>
		</tr>
		<tr>
		<th style="width:250px;">회원이메일</th>
		<th style="width:120px;">회원이름</th>
		<th style="width:150px;">회원닉네임</th>
		<th style="width:170px;">회원전화번호</th>
		<th style="width:200px;">회원주소</th>
		<th style="width:250px;">회원가입일</th>
		<th style="width:250px;">회원탈퇴일</th>
		<th style="width:50px;">회원삭제</th>
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
				<%-- <td><%=m.getMemberEnrolldate()%></td>	 --%>		
				<%-- <td><%=m.getMemberQuitdate()%></td> --%>
				<td><fmt:formatDate value="<%=m.getMemberEnrolldate()%>" pattern="yyyy년 MM월 dd일" /></td>	
				<td><fmt:formatDate value="<%=m.getMemberQuitdate()%>" pattern="yyyy년 MM월 dd일" /></td>			
				<td><input type="button" class="defaultBtn" value="X" onclick="fn_del(<%=m.getMemberSeq()%>)"/></td>	
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
<script>
function fn_del(memberSeq){	
	if(confirm("회원을 탈퇴시키겠습니까?")){
	location.href='<%=request.getContextPath()%>/admin/adminDel.do?MemberSeq='+memberSeq;
	}
}
</script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
