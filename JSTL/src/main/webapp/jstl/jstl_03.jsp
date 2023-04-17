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
<title>jstl_03.jsp</title>
</head>
<body>

<h1>c:set</h1>
<hr>

<!-- 컨텍스트정보(data = DATA123)를 page컨텍스트영역에 등록 -->
<c:set var="data" value="DATA123"/>
data : ${data }

<hr>

<%-- 세션 컨텍스트 정보로 등록하기 --%>
<c:set var="sessionData" value="SESSION_DATA" scope="session"/>

<a href="./jstl_03_session.jsp">세션확인</a>

<hr>

<% // 자바 영역에 만들어진 맵 객체
	Map map = new HashMap();%>

<%-- 자바영역의 변수를 EL이 접근할 수 없다 --%>
<%-- null출력한다 --%>
map : ${map } <br> 

<%-- 자바영역의 변수는 표현식으로 접근할 수 있다 --%>
<%-- 빈(empty) 맵 출력  --%>
map : <%=map %> <br> 

<hr>

<%-- target속성으로 지정된 map객체의 property로 추가된다 --%>
<%-- map.put() --%>
<c:set target="<%=map %>" property="A" value="Alice"/>
<c:set target="<%=map %>" property="B" value="Bob"/>

<%-- 맵에 추가된 데이터 확인하기 --%>
map : <%= map %>

<%--맵 객체를 session컨텍스트 정보로 등록하기 --%>
<c:set var="m" value="<%=map %>" scope="session"/><br>

map : ${map }<br>
m : ${m }<br>

<hr>

<%-- User DTO를 이용한 자바빈 객체 생성(session스코프) --%>
<jsp:useBean id="userInfo" class="dto.User" scope="session"></jsp:useBean>
userInfo : ${userInfo }<br>

<%-- 자바빈 객체의 프로퍼티에 값 넣기 --%>
<jsp:setProperty property="userId" name="userInfo" value="Apple"/> <%-- 액션태그 --%>
<c:set property="userPw" target="${userInfo }" value="Banana"/> <%-- JSTL Core태그 --%>
userInfo : ${userInfo }

<hr>

<%-- 모든 컨텍스트 영역에서 sessionData변수 제거 --%>
<c:remove var="sessionData"/>

<% //컨텍스트 정보 객체
	pageContext.getAttribute("name");
	pageContext.setAttribute("name", "value");
	pageContext.removeAttribute("name");

	// pageContext, request, session, application객체 모두에
	// get, set, remove Attribute 메소드가 존재
	
	
%>




</body>
</html>