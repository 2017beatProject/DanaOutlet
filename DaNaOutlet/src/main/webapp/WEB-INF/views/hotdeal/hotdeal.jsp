<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>hotdeal page</h1>
 	<c:forEach items="${list}" var="bean">
 		<ul>
 			<li>${bean.price }</li>
 			<li>${bean.hotDealNum }</li>
 			<li>${bean.link }</li>
 			<li><img src="../resources/imgs/hotdealimgs/${bean.productName }"></li>
 			<li>${bean.productIntro }</li>
 		</ul>
 	</c:forEach> 
</body>
</html>