<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- JSTL 태그 활성화 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_03_session.jsp</title>
</head>
<body>

<h1>c:set session</h1>
<h3>세션 데이터 확인</h3>
<hr>

page영역 : ${data }<br>

session영역 : ${sessionData }<br><br>

<a href="./jstl_03.jsp">이전페이지</a>

<h3>세션에 등록된 맵 객체 허용</h3>

맵 객체 : ${m }<br>

A Property: ${m.A }<br>
B Property: ${m.B }<br>

A Property: ${m.get("A") }<br>
B Property: ${m["B"] }<br>

<hr>

<% out.print("B Property : "); %>
<% out.print( ( (Map) request.getSession().getAttribute("m") ).get("B") ); %>

userInfo : ${userInfo }

</body>
</html>