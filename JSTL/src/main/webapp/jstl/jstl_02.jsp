<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- JSTL 태그 활성화 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_02.jsp</title>
</head>
<body>



<c:out value="HELLO! JSTL"/><br>
Hello! JSTL
<hr>

elData : <c:out value="${elData}"/><br> <%-- null --%>
empty elData : <c:out value="${ empty elData }"/><%-- true --%>
<hr>

<c:out value="${elData}" default="elData값이 null이다"/>
<hr>

<c:out value="" default="elData값이 null이다"/><%-- default가 동작하지 않는다 --%>
<hr>

<%-- 잘못 사용(적용)한 경우 --%>
<%-- 	1. value를 빈 칸으로 작성해도 null값 취급하지 않는다 --%>
<%-- 	2. value값을 "null"을 작성한 건 단순 문자열 "null" 취급한다 --%>
빈 문자열 적용 : <c:out value="" default="빈 문자열 출력"/> <br>
"null" 적용 : <c:out value="null" default="빈 문자열 출력"/><%-- default가 동작하지 않는다 --%>
<hr>

EL null : <c:out value="${null}" default="EL null 적용"/> <br>
Expression null : <c:out value="<%= null %>" default="Expression null 적용"/><br>

<%-- JSTL의 속성값으로 Scriptlet 코드를 사용해서는 안된다 --%>
<%-- 단순 문자열, EL Expression만 사용해야 한다 --%>

<c:out value="<% out.append(null); %>" default="Scriptlet null 적용"/>

<hr>

<c:out value="<h3>태그출력</h3>"/>

<c:out value="<h3>태그출력</h3>" escapeXml="false"/><%-- 태그를 문자로 보지 않는다! --%>

<hr>

<%= "<h3>Expression 태그 출력</h3>" %>

<%= "&lt;h3&gt;Expression 태그 출력&lt;h3&gt;" %>

<hr>

${"<h3>태그 출력 </h3>" }

<hr>

띄어쓰기 : &nbsp <br><br>

왼쪽꺽쇠: &lt; <br>
오른쪽꺽쇠 : &gt;<br><br>

왼쪽 2중 꺽쇠 : &laquo;<br>
오른쪽 2중 꺽쇠 : &raquo;<br>

왼쪽 화살표 : &larr;<br>
오른쪽 화살표 : &rarr;<br><br>

<hr>

<%--ASCII코드를 이용한 기호 글자표헌 --%>
<%-- &#코드번호; --%>

97 ASCII : &#97;<br>
37 ASCII : &#37;<br>

60 ASCII : &#60;<br>
62 ASCII : &#62;<br>

&#128420;




</body>
</html>