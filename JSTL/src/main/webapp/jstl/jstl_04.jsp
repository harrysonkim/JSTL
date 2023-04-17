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
<title>jstl_04.jsp</title>
</head>
<body>

<h1>c:if</h1>
<hr>

<c:if test="true">
	<h3>TRUE: 무조건 실행</h3>
</c:if>

<c:if test="false">
	<h3>FALSE: 무조건 실행하지 않음</h3>
</c:if>

<%-- test속성값이 true일 때 수행된다 --%>
<%-- test속성값이 true가 아니면 수행되지 않는다 --%>

<%-- true false로 적는게 좋다 --%>
<c:if test="단순 문자열">
	<h3>출력이 될까?</h3>
</c:if>

<hr>


<c:if test="${10 eq 10 }">
	<h3>출력!!!!!!!!!</h3>
</c:if>

확인 <br>
test="${10 eq 10 } "<br>
확인 <br>
<%-- test속성값이 마지막에 빈칸이 들어가지 않도록 조심하자 --%>

<hr>

<%-- 컨트롤러에서 전달한 모델값 --%>
<% request.setAttribute("boardList", null); %>

<%-- 뷰 구현 코드 --%>

<%-- 게시글 조회 결과가 없을 경우 --%>
<c:if test="${empty boardList }">

<h3>조회 결과가 없습니다</h3>

</c:if>

<%-- 게시글 조회 결과가 있을 경우 --%>
<c:if test="${not empty boardList }">
<table>
	<tr>
		<td>조회 결과 보여주는 테이블</td>
	</tr>
</table>
</c:if>






</body>
</html>