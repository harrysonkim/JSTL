<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
<title>jstl_06.jsp</title>
<style type="text/css">
table{
	text-align: center;
}
th, td{
	border: 1px solid #ccc;
	width: 200px;
}
th{
	color:red;
}

</style>
</head>
<body>

<h1>c:forEach</h1>
<hr>

<c:forEach var="i" begin="1" end="10">
	<h3>${i}</h3>

</c:forEach>

<hr>

<c:forEach var="i" begin="2" end="20" step="3">
	<h3>${i}</h3>

</c:forEach>

<hr>

<%-- Quiz. 1~100까지의 합 구하기 --%>
<c:set var="sum" value = "0" />

<c:forEach var="i" begin="1" end="100" step="1">

	<c:set var="sum" value ="${sum + i }" />

</c:forEach>

<h3>${sum }</h3>

<hr>

<h1>구구단</h1>
<%-- 2-9단 출력 --%>

<div id="gugudan">
<c:set var="result" value = "0" />

<table>
<tr>
	<c:forEach var="i" begin="2" end="9" step="1">
	<th>
		<h1>${i} 단</h1>
	</th>
	</c:forEach>
</tr>	
<tr>
<c:forEach var="i" begin="2" end="9" step="1">
	<td>
		<c:forEach var="j" begin="1" end="9" step="1">
			<c:set var="result" value ="${ i * j }" />
			<h5>${i} X ${ j } = ${result }</h5>
		</c:forEach>
	</td>
</c:forEach>
</tr>
</table>
</div>

<hr>

<h3>Iterator로 forEach구문 사용하기</h3>


<% // 자바 Map 객체 생성
	Map<Integer, String> map = new HashMap<>();
	map.put(1,"Apple");
	map.put(2,"Banana");
	map.put(3,"Cherry");
%>

<table>
<tr>
	<th>키</th>
	<th>값</th>
</tr>
<c:forEach var="iter" items="<%=map %>">
<tr>
	<td>${iter.key}</td>
	<td>${iter.value}</td>
</tr>
</c:forEach>
</table>

<hr>

<% List<String> list = new ArrayList<>();
	list.add("Alice");
	list.add("Bob");
	list.add("Clare");
	list.add("Dave");
	list.add("Edward");

%>

<table>
<c:forEach var="iter" items="<%=list %>" varStatus="stat" begin="1"  end="3" step="2">
<c:if test="${stat.first }">
<tr>
	<td>Name[${stat.index }]</td>
	<td>${stat.count}번째 반복</td>
	<td>${iter}</td>
</tr>
</c:if>

<c:if test="${stat.last }">
<tr>
	<td>Name[${stat.index }]</td>
	<td>${stat.count}번째 반복</td>
	<td>${iter}</td>
</tr>
</c:if>

<c:if test="${not stat.last }">
<tr>
	<td>-------------------</td>
	<td>-------------------</td>
	<td>-------------------</td>
</tr>
</c:if>

<tr>
	<td>begin : ${stat.bejin }</td>
	<td>end : ${stat.end }</td>
	<td>begin : ${stat.step }</td>
</tr>




</c:forEach>
</table>









</body>
</html>