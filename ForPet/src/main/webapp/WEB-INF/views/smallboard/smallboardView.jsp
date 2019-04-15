   <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <c:set var="path" value="${pageContext.request.contextPath}"/>
   
   <jsp:include page="/WEB-INF/views/common/header.jsp">
      <jsp:param value="Dev 등록결과" name="pageTitle"/>
   </jsp:include>
    <link rel="stylesheet" href="${path }/resources/css/boardStyle.css"/>
   <section>
   <div class="board-title">
       				<p>소모임 게시판</p>
       			</div>
   <div class="board-view-wrapper">
              <div class="board-view">
                  <div class="board-view-title">
                      <div>제목</div>
                      <div>${smallboard.smallboardTitle }</div>
                  </div>
                  <div class="board-view-writer">
                      <div>작성자</div>
                      <div>${smallboard.memberNickname }</div>
                  </div>
                  <div class="board-view-title">
                      <div>작성일</div>
                      <div>${smallboard.smallboardDate }</div>
                  </div>
                  <div class="board-view-title">
                      <div>종류</div>
                      <div>${smallboard.smallboardKategorie}</div>
                  </div>
                  <div class="board-view-content">
                      <div>
                      ${smallboard.smallboardContent }
                      </div>
                  </div>
               </div>
               <br/>
       		   <c:if test="${loggedMember.memberNickname=='admin'||loggedMember.memberNickname==smallboard.memberNickname}">
                <div class="board-view-btns" style="padding-bottom:10px">
                     <input type="button" value="수정" onclick=fn_updateSmallBoard()>
                     <input type="button" value="삭제" onclick=fn_deletSmalleBoard()>
                </div>
                </c:if>
                <c:if test="${loggedMember.memberNickname!=null}">
	         <div id="comment-container" style="text-align: center;">
	         	<div class="comment-editor">
	            	<form name="commentFrm" action="${path}/smallboard/smallboardCommentInsert" method="post">
		               <input type="hidden" name="memberSeq" value="${loggedMember!=null?loggedMember.memberSeq:''}"/>
		               <input type="hidden" name="smallboardSeq" value="${smallboard.smallboardSeq}"/>
		               <input type="hidden" name="sbcommentLevel" value="1"/>
		               <textarea name="sbcommentText" cols="60" rows="3"></textarea>
		               <button type="submit" id="btn-insert">등록</button>
	            	</form>
	            </div>
	         </div> 
	         </c:if>
         
    		<table id="tbl-comment">
    		<c:if test="${comments!=null}">
    			<c:forEach items="${comments}" var="c">
    				<c:choose >
    				<c:when test="${c.sbcommentLevel==1 }">
    				<tr class="level1" data-sbcomment-seq="${c.sbcommentSeq }">
    					<td>
    						작성자 : <sub class="comment=writer">${c.memberNickname }</sub>
    						작성일 : <sub class="comment-date">${c.sbcommentDate }</sub>
    						<br/>
    						${c.sbcommentText }
    					</td>
    					<td>
    						<c:if test='${loggedMember!=null }'>
								<button class="btn-reply" value="${c.sbcommentSeq }">답글</button>
							</c:if> 
    						<c:if test='${loggedMember!=null&&(c.memberNickname eq loggedMember.memberNickname||"admin" eq loggedMember.memberNickname)}'>
    							<button class="btn-delete" value="${c.sbcommentSeq }">삭제</button>
    						</c:if>
    					</td>
    				</tr>
    				</c:when>
    				<c:otherwise>
    					<tr class='level2'>
							<td>
								작성자 : <sub>${c.memberNickname }</sub>
								작성일 : <sub>${c.sbcommentDate }</sub>
								<br/>
								${c.sbcommentText }
							</td>
							<td>
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
   function fn_deletSmalleBoard(){
		location.href="${path}/smallboard/deletesmallboard.do?smallboardSeq=${smallboard.smallboardSeq}";
	}

	function fn_updateSmallBoard(){
		location.href="${path}/smallboard/updatesmallboard.do?smallboardSeq=${smallboard.smallboardSeq}";
	}
	  $(function(){
  		$(".btn-delete").on('click',function(){
  			if(!confirm("정말로 삭제하시겠습니까?")) return;
  			var sbcommentSeq=$(event.target).parent().parent().data('sbcommentSeq');
  			location.href="${path}/smallboard/smallboardCommentDelete?sbcommentSeq="+sbcommentSeq+"&smallboardSeq="+${smallboard.smallboardSeq};
  		});
  		});
	  $(function(){
          $("textarea[name=commentText]").focus(function(){
             if(${loggendMember==null})
             {
                fn_loginAlert();
                
             }
          });
          $(function(){ 
              $(".btn-reply").on("click",function(){
                 if(${loggedMember!=null?"true":"false"}){
                	 
                	var tr=$("<tr></tr>");
                    var html="<td style='display:none;text-align:left;' colspan=2>";
                    html+="<form action='${path}/smallboard/smallboardCommentInsert' method='post'>";
                    html+="<input type='hidden' name='memberSeq' value='${loggedMember!=null?loggedMember.memberSeq:''}'/>";
                    html+="<input type='hidden' name='smallboardSeq' value='${smallboard.smallboardSeq}'/>";
                    html+="<input type='hidden' name='sbcommentLevel' value='2'/>";
                    html+="<input type='hidden' name='sbcommentRef' value='"+$(event.target).val()+"'/>";
                    html+="<textarea cols='60' rows='1' name='sbcommentText'></textarea>";
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
			    section#board-container{width:600px; margin:0 auto; text-align:center;}
			    section#board-container h2{margin:10px 0;}
			    table#tbl-board{width:500px; margin:0 auto; border:1px solid black; border-collapse:collapse; clear:both; }
			    table#tbl-board th {width: 125px; border:1px solid; padding: 5px 0; text-align:center;} 
			    table#tbl-board td {border:1px solid; padding: 5px 0 5px 10px; text-align:left;}
			    table#tbl-comment{width:580px; margin:0 auto; border-collapse:collapse; clear:both; } 
			    table#tbl-comment tr td{border-bottom:1px solid; border-top:1px solid; padding:5px; text-align:left; line-height:120%;}
			    table#tbl-comment tr td:first-of-type{padding: 5px 5px 5px 50px;}
			    table#tbl-comment tr td:last-of-type {text-align:right; width: 100px;}
			    table#tbl-comment button.btn-reply{display:none;}
			    table#tbl-comment button.btn-delete{display:none;}
			    table#tbl-comment tr:hover {background:lightgray;}
			    table#tbl-comment tr:hover button.btn-reply{display:inline;}
			    table#tbl-comment tr:hover button.btn-delete{display:inline;}
			    table#tbl-comment tr.level2 {color:gray; font-size: 14px;}
			    table#tbl-comment sub.comment-writer {color:navy; font-size:14px}
			    table#tbl-comment sub.comment-date {color:tomato; font-size:10px}
			    table#tbl-comment tr.level2 td:first-of-type{padding-left:100px;}
			    table#tbl-comment tr.level2 sub.comment-writer {color:#8e8eff; font-size:14px}
			    table#tbl-comment tr.level2 sub.comment-date {color:#ff9c8a; font-size:10px}
			    table#tbl-comment textarea{margin: 4px 0 0 0;}
			    table#tbl-comment button.btn-insert2{width:60px; height:23px; color:white; background:#3300ff; position:relative; top:-5px; left:10px;}
    		</style>
   <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>