<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!-- 테그 넣는거 주의 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<jsp:include page="/WEB-INF/views/common/header.jsp">
 <jsp:param value="Dev 등록결과" name="pageTitle" />
</jsp:include>

<section>
 <div>
  <h1>에러발생</h1>
  <h2 style="color: red;">
   <%=exception.getMessage()%>
  </h2>
  <h4>
   <a href="${path }/">메인화면으로 가요!</a>
  </h4>

 </div>


</section>


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
