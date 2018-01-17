<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>dpg page</h1>
 	<c:forEach items="${list}" var="bean">
 		<ul>
 			<li>${bean.dpgNum }</li>
 			<li>${bean.dpgTitle }</li>
 			<li>${bean.dpgWriter }</li>
 			<li>${bean.dpgFrom }</li>
 			<li>${bean.dpgSubject }</li>
 			<li>${bean.dpgImgLink }</li>
 			<li>${bean.dpgContent }</li>
 			<li><img src="../resources/imgs/dpgimgs/${bean.dpgImgLink}"></li>
 		</ul>
 	</c:forEach> 
</body>
</html>