<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forPet_MessageSendWindow</title>
<script src="${path }/resources/js/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="${path }/resources/css/msgSendWindowStyle.css" />
</head>
<body id="msgSendWindow">
	<header></header>
	<section>
		<c:if test="${msg == null }">
			<form action="${path}/community/insertMsg" method="post" onSubmit="return sendPopupSubmit()">
				<div class="msgSendBox">
					<div class="SendUserBox">
						보내는 사람 :&nbsp;&nbsp;
						${loggedMember.memberNickname}
						<input type="hidden" name=memberNickname value="${loggedMember.memberNickname}"/>
					</div>
					<div class="recUserBox">
						받는 사람 :&nbsp;&nbsp;
						${sendUserInfo.memberNickname}
						<input type="hidden" name="mMsgRcvNickname" value="${sendUserInfo.memberNickname}"/>
					</div>
					<div class="msContent">
						<textarea name="mMsgContent" id="mMsgContent"></textarea>
					</div>
					<div class="msBtnBox">
						<input type="submit" value="보내기" class="defaultBtn"/>
						<input type="button" value="취소" class="defaultBtn" onclick="sendPopupClose()"/>
					</div>
				</div>
			</form>
		</c:if>
		<c:if test="${msg != null }">
			<div class="msgSendBox">
				<div class="msMsg">
					${msg }
				</div>
				<div class="msBtnBox">
					<input type="button" value="닫기" class="defaultBtn" onclick="sendPopupClose()"/>
				</div>
			</div>
		</c:if>
	</section>
	<footer></footer>

	<script>
		function sendPopupSubmit() {
			var memberNickname = "${loggedMember.memberNickname}";
			var mMsgRcvNickname = "${sendUserInfo.memberNickname}";
			var friendType = "";

			// textarea 줄바꿈 적용
			var mMsgContent = $('#mMsgContent').val();
			mMsgContent = mMsgContent.replace(/(?:\r\n|\r|\n)/g, '<br/>');
			$('#mMsgContent').val(mMsgContent);

		    $.ajax({
		        url: "${path}/community/msgfriendSearch",
		        data: {"memberNickname":memberNickname, "mMsgRcvNickname":mMsgRcvNickname},
		        dataType: "html",
		        success: function (data) {
		        	friendType = data;
		        	var locFlag = "msgSend";
					var msg = {"memberNickname":memberNickname, "mMsgRcvNickname":mMsgRcvNickname, "locFlag":locFlag, "friendType":friendType};
					opener.parent.sendPopupMsg(msg);
		        }
		    })
			return true;
		}
		
		function sendPopupClose() {
			window.close();
		}
	</script>
</body>
</html>