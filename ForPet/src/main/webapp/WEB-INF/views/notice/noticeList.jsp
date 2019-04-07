<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<link rel="stylesheet" href="${path }/resources/css/boardStyle.css"/>

<section>
		<div class="board-wrapper">
			<div class="board-title">
				<p>공지사항</p>
			</div>
		    <div class="board-view-wrapper">
		    </div>
			<div class="board-table">
				<div class="table-header">
					<div>글번호</div>
					<div>제목</div>
					<div>작성자</div>
					<div>조회수</div>
					<div>작성일</div>
				</div>
				<c:forEach items="${nlist}" var="n">
				<div class="table-row">
					<div>${n.noticeSeq}</div>
					<div class="board-data-title" onclick="noticeView(${n.noticeSeq})">${n.noticeTitle}</div>
					<div class="userBox">${n.memberNickname}</div>
					<div>${n.readCount}</div>
					<div>${n.noticeDate}</div>
				</div>
				</c:forEach>
			</div>
			<div class="board-search-menu">
		    	<div><input type="text" id="board-search-text" value="${param.keyword}" onkeydown="fn_search_write()" ><input type="button" value="검색" onclick="fn_board_search()"></div>
		    	<div></div>
		    	<div></div>
		    	<div>
		    		<c:if test='${loggedMember!=null&&"admin" eq loggedMember.memberEmail}'>
					<button class="board-write" onclick="location.href='${path}/notice/noticeForm';">글쓰기</button>
		            </c:if>
		    	</div>
		    </div>
			${npage}
		</div>

</section>
<script>
	 var viewNo = ${param.viewNo == null?0:param.viewNo};
	 if(viewNo != null && parseInt(viewNo)>0)
	 {
		 noticeView(viewNo);
	 }
	 function noticeView(viewNo)
	 {
		 $(".board-view-wrapper").html("");
		 window.scrollTo(0,0);

		 $.ajax({
			url:"${path}/notice/noticeView",
			dataType:"json",
			data:{"viewNo":viewNo},
			success:function(data)
			{
				var ilist= data['ilist'];
				var n = data['n'];
				var d = new Date(n['noticeDate']);
				var time = d.getFullYear()+'년 '+d.getMonth()+'월 '+d.getDate()+"일";
				
				 var content =
					 '<div class="board-view">' +
			         '<div class="board-view-title">' +
			             '<div>제목</div>' +
			             '<div>'+n['noticeTitle']+'</div>' +
			         '</div>' +
			         '<div class="board-view-wrtier">' +
			             '<div>작성자</div>' +
			             '<div>'+ n['memberNickname'] +'</div>'+
			         '</div>' +
			         '<div class="board-view-date-hit">' +
			             '<div>작성일</div>' +
			             '<div>'+time+ '</div>'+
			             '<div>조회수</div>' +
			             '<div>'+n['readCount']+'</div>' +
			        '</div>' +
			         '<div class="board-view-content">';
						if(ilist.length>0)
						{
							content += '<span class="board-images">';
							for(var i=0; i<ilist.length;i++)
							{
								content += '<img src="${path}/resources/upload/noticeImage/'+ilist[i]+'"/>'
							}
			                content += '</span>'
						}
			          content += 
			        	  '<div>' +
			             	n['noticeContent'] + 
			             '</div>' +
			         '</div>' +
			      '</div>'+
			      '<div class="board-view-btns">';
			      if('${loggedMember.memberNickname}' == 'admin' || '${loggedMember.memberNickname}' == n['memberNickname'])
			      {
			    	  content +=
			            	'<input type="button" value="수정" onclick=fn_updateNotice('+viewNo+')>'+
			            	'<input type="button" value="삭제" onclick=fn_deleteNotice('+viewNo+')>'
			      }
			      content +='</div>';
				
				$(".board-view-wrapper").html(content);
			}
		 });
		  
	 }
	 
	 
	 function fn_deleteNotice(viewNo) {
		 if(confirm("정말 게시글을 삭제하시겠습니까?"))
		 {
			 location.href='${path}/notice/noticeDelete.do?viewNo='+viewNo;
		 }
	 }
	 
	 function fn_updateNotice(viewNo) {
		 location.href='${path}/notice/noticeUpdate?viewNo='+viewNo;
	 }
	 
	 function fn_board_search(){
		 location.href='${path}/notice/noticeList?keyword='+$("#board-search-text").val();
	 }
	 function fn_search_write(){
		if(window.event.keyCode == 13)
		{
			fn_board_search();
		}
	 }
	 
</script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>