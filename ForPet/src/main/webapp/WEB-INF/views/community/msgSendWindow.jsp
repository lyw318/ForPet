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
		<form action="" method="post">
			<div class="msgSendBox">
				<div>보내는 사람</div>
				<div>받는 사람</div>
				<div>
					<textarea name="" id="" cols="30" rows="10"></textarea>
				</div>
				<div>
					보낸쪽지함에 저장
				</div>
				<div>
					<input type="submit" value="보내기"/>
					<input type="button" value="취소"/>
				</div>
			</div>
		</form>
	</section>
	<footer></footer>
</body>
</html>