<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- JSTL 태그 활성화 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="./header.jsp"/>

<h1>c:import</h1>
<hr>

<c:import url="https://search.naver.com/search.naver">
	<c:param name="query" value="java"/>
</c:import>

<c:import url="./footer.jsp"/>
