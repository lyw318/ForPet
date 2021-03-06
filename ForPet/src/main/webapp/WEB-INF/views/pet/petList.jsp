<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.forpet.model.vo.Pet"%>

<%@ include file="/WEB-INF/views/myPage/myPageCommon.jsp" %>
<link rel="stylesheet" href="${path }/resources/css/petListStyle.css" />
<link rel="stylesheet" href="${path }/resources/css/myPage_petEnrollStyle.css" />
<% List<Pet> list=(List)request.getAttribute("list");%>
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
	<div id="petList">
		<div class="petListBox">
			<%for(Pet p:list) {%>
				<div class="petListOne">
					<div class="petListRow">
						<img src="${path }/resources/upload/petProfile/<%=p.getPetRenamedImage() %>">
					</div>
					<div class="petListRow">
						<div class="petListColA">이름 </div>
						<div class="petListColV"><%=p.getPetName() %></div>
					</div>
					<div class="petListRow">
						<div class="petListColA">종류 </div>  
						<div class="petListColV"><%=p.getPetType()%></div>
					</div>
					<div class="petListRow">
						<div class="petListColA">품종 </div> 
						<div class="petListColV"><%=p.getPetType2() %></div>
					</div>
					<div class="petListRow">
						<div class="petListColA">생일 </div> 
						<div class="petListColV"><fmt:formatDate value="<%=p.getPetBirth() %>" pattern="yyyy년 MM월 dd일" /></div>
					</div>

					<%-- <%if(loggedMember!=null && loggedMember.getMemberEmail().equals("admin")) {%> --%>
					<div class="petListOneBtnBox">
						<div><input type="button" class="defaultBtn2" value="수정" onclick="location.href='<%=request.getContextPath()%>/pet/petUpdate.do?id=<%=p.getPetSeq() %>'"/></div>
						<div><input type="button" class="defaultBtn2" value="삭제" onclick="location.href='<%=request.getContextPath()%>/pet/petDel.do?petSeq=<%=p.getPetSeq()%>'"/></div>
					</div>
					<%--<%} %> --%>
				</div>
				
			<%} %>	
		</div>
	</div>
	</div>
	
	<script>
	<%-- function deletePet(memberSeq){
		var memberSeq=memberSeq;
		if(confirm("반려동물 정보 삭제하시겠습니까?")){
			location.href='<%=request.getContextPath()%>/pet/petDelete?memberSeq='+memberSeq;
			
		}
	} --%>
	</script>
	
</section>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
