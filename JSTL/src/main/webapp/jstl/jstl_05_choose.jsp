<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- JSTL 태그 활성화 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_05_choose.jsp</title>
</head>
<body>

<h1>c:choose</h1>
<h3>전달파라미터 choose 페이지</h3>
<hr>

<c:choose>

	<c:when test="${param.sel eq 1}">
		<p>1을 선택하셨습니다</p>
	</c:when>
	<c:when test="${param.sel eq 2}">
		<p>2을 선택하셨습니다</p>
	</c:when>
	<c:when test="${param.sel eq 3}">
		<p>3을 선택하셨습니다</p>
	</c:when>
	<c:otherwise>
		<p>1,2,3중에 선택해주세요</p>
	</c:otherwise>

</c:choose>

<h3><a href="./jstl_05.jsp">선택화면</a></h3>


</body>
</html>