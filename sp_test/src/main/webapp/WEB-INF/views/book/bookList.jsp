
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.DriverManager"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>책 목록</h1>

	<table border="1" style="width: 500px">
		<tr>
			<th>번호</th>
			<th>책이름</th>
			<th>가격</th>
			<th>출판사</th>
			<th>등록일</th>

		</tr>

		<c:forEach var="vo" items="${list }">
		<tr>
			<td>${vo.no}</td>
			<td>
			<a href="<c:url value='/book/bookDetail.do?no=${vo.no }'/>">
			${vo.title}</a></td>
			
			<td style="text-align: right">
			<fmt:formatNumber value="${vo.price}" pattern="#,###"/>원</td>
			
			<td>
			${vo.publisher }
			</td>
			
			
			<td>
			<fmt:formatDate value="${vo.joindate}" pattern="yyyy-MM-dd" />
			</td>
		</tr>

		</c:forEach>

		<tr></tr>

	</table>
	<br>
	<br>
	<a href="<c:url value='/book/bookWrite.do'/>">책 등록</a>

</body>
</html>