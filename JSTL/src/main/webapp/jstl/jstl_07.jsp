<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- JSTL 태그 활성화 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_07.jsp</title>
</head>
<body>

<h1>c:forTokens</h1>
<hr>

<% String fruits = "Apple:Banana:Cherry:Durian"; %>

<c:forTokens items="<%=fruits %>" delims=":" var="f">
	${f }<br>
</c:forTokens>

<hr>

<% String names = "Alice Bob Clare Edward"; %>
<c:forTokens items="<%=names %>" delims=" " var="name">
	${name}<br>
</c:forTokens>

<hr>

<% for(String n : names.split(" ") ) { %>
	<%= n  %>님 <br>
<% } %>

<hr>

<c:forEach items='<%=fruits.split(":")%>' var="fruit">
	${fruit}<br>
</c:forEach>

<hr>







</body>
</html>