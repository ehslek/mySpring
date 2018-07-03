<%@page contentType="text/html;charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML >
<HTML>
 <HEAD>
  <TITLE> samplesite/bookWrite.jsp </TITLE>

 </HEAD>

 <BODY>
	<h1>상품 등록</h1>
	<form name="frmWrite" method="post" 
	action ="<c:url value ='/book/bookWrite.do'/>">
	  책이름 : <input type="text" name="title"><br>
	  가격: <input type="text" name="price"><br>
	  출판사: <input type="text" name="publisher"><br><br>
	  <input type="submit" value="등록">
	  <input type="reset" value="취소">
	</form>

	<br><br>
	
	 <a href = "<c:url value ='/book/bookList.do'/>"> 책 목록 </a>

	 

 </BODY>
</HTML>
