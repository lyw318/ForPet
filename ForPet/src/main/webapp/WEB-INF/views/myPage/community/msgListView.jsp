<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/myPage/myPageCommon.jsp" %>

<link rel="stylesheet" href="${path }/resources/css/myPage_msgListStyle.css" />

    <div class="myPageMain_top">
        <div class="myPageMain_topBox">
            <div class="myPageMain_loc">
                <ul>
                    <li onclick="location.href='${path}/main/myPageMain'">
                        <img src="${path}/resources/images/back.png" width="18px">
                    </li>
                    <li>MyPage</li>
                    <li>마이페이지 > 내 쪽지함 > 상세보기</li>
                </ul>
            </div>
        </div>
    </div><br/>
	<div class="myPageMain_right">
		<div id="msgListView">
			<div class="msgSendBox">
				<div class="SendUserBox">
					보낸 사람 :&nbsp;&nbsp;
					${mmOne.memberNickname}
					<input type="hidden" name=memberNickname value="${mmOne.memberNickname}"/>
				</div>
				<div class="recUserBox">
					받은 시간 :&nbsp;&nbsp;
					${mmOne.mMsgDate}
					<input type="hidden" name="mMsgDate" value="${mmOne.mMsgDate}"/>
				</div>
				<div class="msContent">
					${mmOne.mMsgContent}
				</div>
				<div class="msBtnBox">
					<input type="button" value="답장하기" class="defaultBtn" onclick="fn_msgSendWindow('${mmOne.memberNickname}','msgListView')"/>
					<input type="button" value="목록보기" class="defaultBtn" onclick="javascript:location.href='${path }/community/msgList'"/>
				</div>
			</div>
		</div>
	</div>
</section>
<script>

</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
