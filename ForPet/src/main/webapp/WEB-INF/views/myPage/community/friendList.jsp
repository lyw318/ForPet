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
                    <li>마이페이지 > 내 커뮤니티 > 친구관리</li>
                </ul>
            </div>
        </div>
    </div><br/>

	<div class="myPageMain_right">
        <div id="friendList">
            <form action="${path}/community/friendInsert" method="post" id="friendListFrmIn">
                <div class="friendBox">
                    <div class="friendBox_top">
                        <div class="friendSearch">
                            친구추가
                            &nbsp;&nbsp;
                            <input class="friendSearchText" type="text" name="memberNickname"/>
                            <button class="defaultBtn" type="button" onclick="fn_friendInsert()">추가</button>
                        </div>
                    </div>
                    <div class="friendBox_mid friendInList"></div>
                </div>
            </form>
            <form action="${path}/community/friendBlock" method="post" id="friendListFrmBl">
                <div class="friendBox">
                    <div class="friendBox_top">
                        <div class="friendSearch">
                            친구차단
                            &nbsp;&nbsp;
                            <input class="friendSearchText"  type="text" name="memberNickname"/>
                            <button class="defaultBtn" type="button" onclick="fn_friendBlock()">차단</button>
                        </div>
                    </div>
                    <div class="friendBox_mid friendBlList"></div>
                </div>
            </form>
        </div>
	</div>
</section>
<script>
 
	$(function() {
		$.ajax({
			url:"${path}/community/friendInList.do",
			dataType:"html",
			success:function(data) {
				$('.friendInList').html(data);
				userBox();
			}
		})
		$.ajax({
			url:"${path}/community/friendBlList.do",
			dataType:"html",
			success:function(data) {
				$('.friendBlList').html(data);
				userBox();
			}
		})
	})

    function fn_friendInsert() {
        $('#friendListFrmIn').submit();
    }
    
    function fn_friendNameClose(e) {
    	location.href='${path}/community/delFriend?mFriendSeq='+e;
    }

    function fn_friendBlock() {
        $('#friendListFrmBl').submit();
    }
    
    function fn_friendNameClose(e) {
    	location.href='${path}/community/delFriend?mFriendSeq='+e;
    }
    
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
