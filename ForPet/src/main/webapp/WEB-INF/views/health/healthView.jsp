<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<link rel="stylesheet" href="${path }/resources/css/health.css"/>

<section class="health-view-background">
	<div class="health-view-wrapper">
		<div class="health-view-title-wrapper">
			<div>${hi.infoTitle}</div>
			<div>
			<span onclick="fn_info_share()"><img src="${path}/resources/images/vet/scrapIcon.png" style="width:30px;">공유</span>
			<span onclick="history.back(-1);"><img src="${path}/resources/images/board-arrow-left.png" style="width:31px;">뒤로</span>
			</div>
		</div>
		<div class="health-view-content-wrapper">
		     <span class="health-view-images">
                 <c:forEach items="${ilist}" var="img">
                     <img src="${path}/resources/upload/infoImage/${img}"><br>
                 </c:forEach>
             </span>
            <div>
			${hi.infoContent}
			</div>
		</div>
		    	<div class="health-category-wrapper">
			<div class='health-category${hi.petType eq "All"?" category-selected":""}' onclick="fn_category_select('All')">
				<div><img src="${path}/resources/images/vet/hotel.png"></div>
				<div>전체</div>
			</div>
			<div class='health-category${hi.petType eq "Dog"?" category-selected":""}' onclick="fn_category_select('Dog')">
				<div><img src="${path}/resources/images/vet/dog.png"></div>
				<div>강아지</div>
			</div>
			<div class='health-category${hi.petType eq "Cat"?" category-selected":""}' onclick="fn_category_select('Cat')">
				<div><img src="${path}/resources/images/vet/cat.png"></div>
				<div>고양이</div>
			</div>
			<div class='health-category${hi.petType eq "GuineaPig"?" category-selected":""}' onclick="fn_category_select('GuineaPig')">
				<div><img src="${path}/resources/images/vet/guineapig.png"></div>
				<div>기니피그</div>
			</div>
			<div class='health-category${hi.petType eq "Rabbit"?" category-selected":""}' onclick="fn_category_select('Rabbit')">
				<div><img src="${path}/resources/images/vet/rabbit.png"></div>
				<div>토끼</div>
			</div>
			<div class='health-category${hi.petType eq "Hedgehog"?" category-selected":""}' onclick="fn_category_select('Hedgehog')">
				<div><img src="${path}/resources/images/vet/hedgehog.png"></div>
				<div>고슴도치</div>
			</div>
			<div class='health-category${hi.petType eq "Turtle"?" category-selected":""}' onclick="fn_category_select('Turtle')">
				<div><img src="${path}/resources/images/vet/turtle.png"></div>
				<div>거북이</div>
			</div>
			<div class='health-category${hi.petType eq "Bird"?" category-selected":""}' onclick="fn_category_select('Bird')">
				<div><img src="${path}/resources/images/vet/bird.png"></div>
				<div>조류</div>
			</div>
			<div class='health-category${hi.petType eq "etc"?" category-selected":""}' onclick="fn_category_select('etc')">
				<div><img src="${path}/resources/images/vet/horse.png"></div>
				<div>기타</div>
			</div>
		</div>
	</div>
	<div class="health-view-btns">
            <c:if test='${loggedMember!=null&&("admin" eq loggedMember.memberEmail)}'>
            <input type="button" value="수정" onclick="fn_update_info()">
            <input type="button" value="삭제" onclick="fn_delete_info()">
            </c:if>
    </div>
</section>
<script>
function fn_info_share() {
	  var t = document.createElement("textarea");
	  document.body.appendChild(t);
	  var copyText = window.location.protocol + "//" + window.location.host + window.location.pathname+"?viewNo=${hi.infoSeq}";
	  t.value = copyText;
	  t.select();
	  document.execCommand('copy');
	  document.body.removeChild(t);
	  alert(copyText+"\n현재 페이지 주소가 클립보드에 복사되었습니다.");
}

function fn_category_select(type)
{
	location.href='${path}/health/healthInfo?type='+type;
}

function fn_update_info()
{
	location.href='${path}/health/updateInfo?viewNo=${hi.infoSeq}';
}

function fn_delete_info()
{
	location.href='${path}/health/deleteInfo?viewNo=${hi.infoSeq}';
}


</script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
