<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
<c:when test="${cnt == 0 }">
<script>
	alert("삭제실패");
	location.href='${pageContext.request.contextPath }/reservation/mypage'; 
</script>
</c:when>
<c:otherwise>
<script>
	alert("삭제성공");
	location.href='${pageContext.request.contextPath }/reservation/mypage';
</script>
</c:otherwise>
</c:choose>
</body>
</html>