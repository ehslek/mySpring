<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>pdDetail</title>
<script type="text/javascript">
	function del(){
		if (confirm("삭제하시겠습니까?")) {
			location.href="<c:url value='/pd/pdDelete.do?no=${param.no}'/>";
		}
	}
/* 	function del(no){
		if (confirm("삭제하시겠습니까?")) {
			location.href="pdDelete.jsp?no="+no;
		}
	} */
</script>
</head>
<body>

	<h1>책 상세보기</h1>
	<p>${param.no} 을 클릭하였습니다</p>
	번호 : ${param.no}<br>
	상품명 : ${vo.title}<br>
	가격 : <fmt:formatNumber value = "${vo.price }" pattern="#,###"/> 원<br>
	책상표 : ${vo.publisher } <br>
	등록일 : ${vo.joindate} <br>
	
	<a href="<c:url value='/book/bookList.do'/>">목록</a>
	<a href="<c:url value='/book/bookEdit.do?no=${param.no }'/>">수정</a>
	<%--<a href="pdDelete.jsp?no=<%=no%>">삭제</a>--%>
	<%-- <a href="#" onclick="del(<%=no%>)">삭제</a> --%>
	<a href="#" onclick="del()">삭제</a>
	
</body>
</html>