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
<title>jstl_05.jsp</title>
</head>
<body>

<h1>c:choose</h1>
<hr>

<form action="./jstl_05_choose.jsp" method="get">

<select name="sel">
	<option value="0" selected="selected">선택안함</option>
	<option>1</option>
	<option>2</option>
	<option>3</option>
</select>

<button>전송</button>

</form>





</body>
</html>