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
	<table>
		<tr>
			<th></th>
			<td>${pet.petRenamedImage}</td>
		</tr>
	
		<tr>
			<th></th>
			<td>${pet.petName}</td>
		</tr>
	
		<tr>
			<th></th>
			<td>${pet.petBirth}</td>
		</tr>
	
		<tr>
			<th></th>
			<td>${pet.petType}</td>
		</tr>
	
		<tr>
			<th></th>
			<td>${pet.petType2}</td>
		</tr>
	
	</table>		

	</div>
</section>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
