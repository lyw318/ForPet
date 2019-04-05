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
					<div id="noticeTitle${n.noticeSeq}" class="board-data-title" onclick="noticeView(${n.noticeSeq})" data-notice-content="${n.noticeContent}" data-member-nickname="${n.memberNickname}">${n.noticeTitle}</div>
					<div class="userBox">${n.memberNickname}</div>
					<div id="readCount${n.noticeSeq}">${n.readCount}</div>
					<div id="noticeDate${n.noticeSeq}">${n.noticeDate}</div>
				</div>
				</c:forEach>
			</div>
			<c:if test='${loggedMember!=null&&"admin" eq loggedMember.memberEmail}'>
			<button class="board-write" onclick="location.href='${path}/notice/noticeForm';">글쓰기</button>
            </c:if>
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
		 var content =
			 '<div class="board-view">' +
	         '<div class="board-view-title">' +
	             '<div>제목</div>' +
	             '<div>'+$("#noticeTitle"+viewNo).html()+'</div>' +
	         '</div>' +
	         '<div class="board-view-wrtier">' +
	             '<div>작성자</div>' +
	             '<div>'+ $("#noticeTitle"+viewNo).data("memberNickname") +'</div>'+
	         '</div>' +
	         '<div class="board-view-date-hit">' +
	             '<div>작성일</div>' +
	             '<div>'+$("#noticeDate"+viewNo).html()+ '</div>'+
	             '<div>조회수</div>' +
	             '<div>'+$("#readCount"+viewNo).html()+'</div>' +
	        '</div>' +
	         '<div class="board-view-content">' +
	             '<div>' +
	             $("#noticeTitle"+viewNo).data('noticeContent') + 
	             '</div>' +
	         '</div>' +
	      '</div>'+
	      '<div class="board-view-btns">';
	      if('${loggedMember.memberNickname}' == 'admin' || '${loggedMember.memberNickname}' == $("#noticeTitle"+viewNo).data("memberNickname"))
	      {
	    	  content +=
	            	'<input type="button" value="수정" onclick=fn_updateNotice('+viewNo+')>'+
	            	'<input type="button" value="삭제" onclick=fn_deleteNotice('+viewNo+')>'
	      }
	      content +='</div>';

	      var wrapper = $(".board-view-wrapper");
		  $(wrapper).html(content);
		  window.scrollTo(0,0);
		  
		 $.ajax({
			url:"${path}/notice/noticeView",
			dataType:"json",
			data:{"viewNo":viewNo},
			success:function(data)
			{
				$(".board-images").remove();
				if(data.length>0)
				{
					var content= '<span class="board-images">';
					for(var i=0; i<data.length;i++)
					{
						content += '<img src="${path}/resources/upload/noticeImage/'+data[i]+'"/>'
					}
	                content += '</span>'
	                $(".board-view-content").prepend(content);
				}
			}
		 });
		  
	 }
</script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>