<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<link rel="stylesheet" href="${path }/resources/css/health.css"/>

<section>
	<div class="health-wrapper">
		<div class="health-title-wrapper">
			<div class="health-title">반려동물 정보</div>
			<div class="health-subtitle">전문의가 검수한 컨텐츠를 확인하세요</div>
			<div></div>
			<div>
		 		<input type="text" id="health-search-text" value="${param.keyword}" onkeydown="fn_search_write()">
				<input type="button" value="검색" onclick="fn_board_search()">
			</div>
		</div>
		<div class="health-category-wrapper">
			<div class='health-category${typeName eq "전체"?" category-selected":""}' onclick="fn_category_select('All')">
				<div><img src="${path}/resources/images/vet/hotel.png"></div>
				<div>전체</div>
			</div>
			<div class='health-category${typeName eq "강아지"?" category-selected":""}' onclick="fn_category_select('Dog')">
				<div><img src="${path}/resources/images/vet/dog.png"></div>
				<div>강아지</div>
			</div>
			<div class='health-category${typeName eq "고양이"?" category-selected":""}' onclick="fn_category_select('Cat')">
				<div><img src="${path}/resources/images/vet/cat.png"></div>
				<div>고양이</div>
			</div>
			<div class='health-category${typeName eq "기니피그"?" category-selected":""}' onclick="fn_category_select('GuineaPig')">
				<div><img src="${path}/resources/images/vet/guineapig.png"></div>
				<div>기니피그</div>
			</div>
			<div class='health-category${typeName eq "토끼"?" category-selected":""}' onclick="fn_category_select('Rabbit')">
				<div><img src="${path}/resources/images/vet/rabbit.png"></div>
				<div>토끼</div>
			</div>
			<div class='health-category${typeName eq "고슴도치"?" category-selected":""}' onclick="fn_category_select('Hedgehog')">
				<div><img src="${path}/resources/images/vet/hedgehog.png"></div>
				<div>고슴도치</div>
			</div>
			<div class='health-category${typeName eq "거북이"?" category-selected":""}' onclick="fn_category_select('Turtle')">
				<div><img src="${path}/resources/images/vet/turtle.png"></div>
				<div>거북이</div>
			</div>
			<div class='health-category${typeName eq "조류"?" category-selected":""}' onclick="fn_category_select('Bird')">
				<div><img src="${path}/resources/images/vet/bird.png"></div>
				<div>조류</div>
			</div>
			<div class='health-category${typeName eq "기타"?" category-selected":""}' onclick="fn_category_select('etc')">
				<div><img src="${path}/resources/images/vet/horse.png"></div>
				<div>기타</div>
			</div>
		</div>
		<div class="category-title">
			${typeName} 카테고리 <span style="font-size:15px;">(${hcount})</span>
		</div>
		<div class="health-preview">
			<c:forEach items="${hlist}" var="h">
			<div class="health-preview-element" onclick="fn_health_view(${h.infoSeq})">
				<img class="health-preview-image" src="${path}/resources/upload/infoImage/${h.filename}"/>
				<div class="health-preview-title">${h.infoTitle}</div>
			</div>
			</c:forEach>
		</div>
		<c:if test='${loggedMember!=null && "admin" eq loggedMember.memberEmail}'>
			<button class="health-write" onclick="location.href='${path}/health/healthForm';">글쓰기</button>
		</c:if>
		${hpage}
	</div>
</section>

<script>

function fn_health_view(viewNo) {
	location.href='${path}/health/healthView?viewNo='+viewNo+'&'+fn_type_str()+fn_keyword_str()+fn_cpage_str();
}

function fn_board_search(){
	 location.href='${path}/health/healthInfo?keyword='+$("#health-search-text").val()+'&'+fn_type_str();
}

function fn_search_write(){
	if(window.event.keyCode == 13)
	{
		fn_board_search();
	}
}

function fn_category_select(type){
	location.href='${path}/health/healthInfo?type='+type+'&'+fn_keyword_str();
}

function fn_type_str(){
	if(${param.type eq null?"false":"true"})
	{
		return "type=${param.type}&"; 
	}
	else
	{
		return "";
	}
}

function fn_keyword_str(){
	if(${param.keyword eq null?"false":"true"})
	{
		return "keyword=${param.keyword}&"; 
	}
	else
	{
		return "";
	}
}

function fn_cpage_str(){
	if(${param.cPage eq null?"false":"true"})
	{
		return "cPage=${param.cPage}&"; 
	}
	else
	{
		return "";
	}
}





</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
