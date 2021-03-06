
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<style>
.board-view-wrapper {
	text-align: left;
}
</style>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="Dev 등록결과" name="pageTitle" />
</jsp:include>
<link rel="stylesheet" href="${path }/resources/css/boardStyle.css" />
<section>
	<div class="board-title">
		<p>게시판</p>
	</div>
	<div class="board-view-wrapper">
		<div class="board-view">
			<div class="board-view-title">
				<div>제목</div>
				<div>${board.boardTitle }</div>
			</div>
			<div class="board-view-writer">
				<div>작성자</div>
				<div>${board.memberNickname }</div>
			</div>
			<div class="board-view-title">
				<div>작성일</div>
				<div>${board.boardDate }</div>
			</div>
			<div class="board-view-content">
				<div>${board.boardContent }</div>
			</div>
		</div>
		<br />
		<c:forEach items="${attachmentList}" var="a" varStatus="vs">
			<button type="button" class="filedownload"
				onclick="fileDownload('${a.originalFileName}','${a.renamedFileName }');">
				첨부파일${vs.count} - ${a.originalFileName }</button>
		</c:forEach>
		<c:if test="${loggedMember.memberEmail=='admin'||loggedMember.memberNickname==board.memberNickname}">
			<div class="board-view-btns" style="padding-bottom: 10px">
				<input type="button" value="수정" onclick="fn_updateBoard()"> 
				<input type="button" value="삭제" onclick="fn_deleteBoard()">
			</div>
		</c:if>
		<c:if test="${loggedMember.memberNickname!=null}">
			<div id="comment-container" style="text-align: center;">
				<div class="comment-editor">
					<form name="commentFrm" action="${path}/board/boardCommentInsert"
						method="post">
						<input type="hidden" name="memberSeq"
							value="${loggedMember!=null?loggedMember.memberSeq:''}" /> <input
							type="hidden" name="boardSeq" value="${board.boardSeq}" /> <input
							type="hidden" name="commentLevel" value="1" />
						<textarea name="commentText" cols="60" rows="3" style="width:70%"></textarea>
						<button type="submit" id="btn-insert" style="height: 35px;
				                                                    width: 50px;
				                                                    align-self: flex-end;
				                                                    text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.3);
				                                                    background-color: transparent;
				                                                    border: none;
				                                                    font-weight: bolder;
				                                                    opacity: 0.5;
				                                                    font-size: 15px;
				                                                    cursor: pointer;">등록</button>
					</form>
				</div>
			</div>
		</c:if>

		<table id="tbl-comment" style="width: 75%;">
			<c:if test="${comments!=null}">
				<c:forEach items="${comments}" var="c">
					<c:choose>
						<c:when test="${c.commentLevel==1 }">
							<tr class="level1" data-comment-seq="${c.commentSeq }">
								<td style="color:black;">
									작성자 : <sub class="comment=writer">${c.memberNickname }</sub>
									작성일 : <sub class="comment-date" style="color:black; font-size:14px">${c.commentDate }</sub> <br />
									${c.commentText }</td>
								<td><c:if test='${loggedMember!=null }'>
										<button class="btn-reply" value="${c.commentSeq }" style="cursor: pointer; cursor: pointer; background-color: white; border: none;">답글</button>
									</c:if> 
									<c:if test='${loggedMember!=null&&(c.memberNickname eq loggedMember.memberNickname||"admin" eq loggedMember.memberEmail)}'>
										<button class="btn-delete" value="${c.commentSeq }" style="cursor: pointer; cursor: pointer; background-color: white; border: none;">삭제</button>
									</c:if></td>
							</tr>
						</c:when>
						<c:otherwise>
							<tr class='level2' data-comment-seq="${c.commentSeq }">
								<td>작성자 : <sub>${c.memberNickname }</sub> 작성일 : <sub>${c.commentDate }</sub>
									<br/> ${c.commentText }</td>
								<td>
								 <c:if test='${loggedMember!=null }'>
		                        <button class="btn-reply" value="${c.commentSeq }" style="cursor: pointer; cursor: pointer; background-color: white; border: none;">답글</button>
		                        </c:if>
		                         <c:if test='${loggedMember!=null&&(c.memberNickname eq loggedMember.memberNickname||"admin" eq loggedMember.memberEmail)}'>
		                         <button class="btn-delete" value="${c.commentSeq }" style="cursor: pointer; cursor: pointer; background-color: white; border: none;">삭제</button>
		                         </c:if>
								</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</c:if>
		</table>
	</div>


</section>
<script>
function fn_deleteBoard(){
	location.href="${path}/board/deleteboard.do?boardSeq=${board.boardSeq}";
}

function fn_updateBoard(){
	location.href="${path}/board/updateboard.do?boardSeq=${board.boardSeq}";
}

function fileDownload(oName,rName)
{
	oName=encodeURIComponent(oName);
	location.href="${path}/board/boardDown.do?oName="+oName+"&rName="+rName;
}
        $(function(){
            $("textarea[name=commentText]").focus(function(){
               if(${loggendMember==null})
               {
                  fn_loginAlert();
                  
               }
            });
        
        	  $(function(){
        		$(".btn-delete").on('click',function(){
        			if(!confirm("정말로 삭제하시겠습니까?")) return;
        			var commentseq=$(event.target).parent().parent().data('commentSeq');
        			location.href="${path}/board/boardCommentDelete?commentSeq="+commentseq+"&boardSeq="+${board.boardSeq};
        		});
        		});
        	  
        	  
        	  $(function(){ 
              $(".btn-reply").on("click",function(){
                 if(${loggedMember!=null?"true":"false"}){
                	 
                	var tr=$("<tr></tr>");
                    var html="<td style='display:none;text-align:left;' colspan=2>";
                    html+="<form action='${path}/board/boardCommentInsert' method='post'>";
                    html+="<input type='hidden' name='memberSeq' value='${loggedMember!=null?loggedMember.memberSeq:''}'/>";
                    html+="<input type='hidden' name='boardSeq' value='${board.boardSeq}'/>";
                    html+="<input type='hidden' name='commentLevel' value='2'/>";
                    html+="<input type='hidden' name='commentRef' value='"+$(event.target).val()+"'/>";
                    html+="<textarea cols='60' rows='1' name='commentText'></textarea>";
                    html+="<button type='submit'>등록</button>";
                    html+="</form></td>";
                    tr.html(html);
                    tr.insertAfter($(this).parent().parent()).children("td").slideDown(0);
                    
                    $(this).off('click');
                    
                    tr.find("form").submit(function(){
                       if(${loggedMember!=null?"true":"false"})
                       {
                          fn_loginAlert();
                          event.preventDefault();
                          return;
                       }
                       var content=$(this).children('textarea').val().trim().length;
                       if(content==0)
                       {
                          alert("내용을 입력하세요");
                          event.preventDefault();
                          return;
                       }
                    });
                    
				}
                else{
                    fn_loginAlert();
                }
           });
       });
        });
        </script>

<style>
section#board-container {
	width: 600px;
	margin: 0 auto;
	text-align: center;
}

section#board-container h2 {
	margin: 10px 0;
}

table#tbl-board {
	width: 500px;
	margin: 0 auto;
	border: 1px solid black;
	border-collapse: collapse;
	clear: both;
}

table#tbl-board th {
	width: 125px;
	border: 1px solid;
	padding: 5px 0;
	text-align: center;
}

table#tbl-board td {
	border: 1px solid;
	padding: 5px 0 5px 10px;
	text-align: left;
}

table#tbl-comment {
	width: 580px;
	margin: 0 auto;
	border-collapse: collapse;
	clear: both;
}

table#tbl-comment tr td {
	border-bottom: 1px solid;
	border-top: 1px solid;
	padding: 5px;
	text-align: left;
	line-height: 120%;
}

table#tbl-comment tr td:first-of-type {
	padding: 5px 5px 5px 50px;
}

table#tbl-comment tr td:last-of-type {
	text-align: right;
	width: 100px;
}

table#tbl-comment button.btn-reply {
	display: none;
}

table#tbl-comment button.btn-delete {
	display: none;
}

table#tbl-comment tr:hover {
	background: lightgray;
}

table#tbl-comment tr:hover button.btn-reply {
	display: inline;
}

table#tbl-comment tr:hover button.btn-delete {
	display: inline;
}

table#tbl-comment tr.level2 {
	color: gray;
	font-size: 14px;
}

table#tbl-comment sub.comment-writer {
	color: navy;
	font-size: 14px
}

table#tbl-comment sub.comment-date {
	color: tomato;
	font-size: 10px
}

table#tbl-comment tr.level2 td:first-of-type {
	padding-left: 100px;
}

table#tbl-comment tr.level2 sub.comment-writer {
	color: #8e8eff;
	font-size: 14px
}

table#tbl-comment tr.level2 sub.comment-date {
	color: #ff9c8a;
	font-size: 10px
}

table#tbl-comment textarea {
	margin: 4px 0 0 0;
}

table#tbl-comment button.btn-insert2 {
	width: 60px;
	height: 23px;
	color: white;
	background: #3300ff;
	position: relative;
	top: -5px;
	left: 10px;
}
</style>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>