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
	<h2> 여기 밑은 그냥 이미지리스트</h2>
 	<c:forEach items="${imgList}" var="bean">
 		<ul>
 			<li>${bean.dpgNum }</li>
 			<li>${bean.dpgTitle }</li>	
 			<li>${bean.dpgImgLink }</li>
 			<li><img src="../resources/imgs/dpgimgs/${bean.dpgImgLink}"></li>
 		</ul>
 	</c:forEach> 
 	
 	
 	
 	<h2> 여기 밑은 이미지 없는것들</h2>
 	<c:forEach items="${list}" var="bean">
 		<ul>
 			<li>${bean.dpgNum }</li>
 			<li>${bean.dpgTitle }</li>
 			<li>${bean.dpgWriter }</li>
 		</ul>
 	</c:forEach> 
 	
 	<h2>  여기 밑은 베스트 이미지</h2>
 	
 	<c:forEach items="${bestList}" var="bean">
 		<ul>
 			<li>${bean.dpgNum }</li>
 			<li>${bean.dpgTitle }</li>
 			<li>${bean.dpgImgLink }</li>
 			<li><img src="../resources/imgs/dpgimgs/${bean.dpgImgLink}"></li>
 		</ul>
 	</c:forEach>
 	
 	
 	<h2>  여기 밑은 공지사항</h2>
 	
 	<c:forEach items="${adminList}" var="bean">
 		<ul>
 			<li>${bean.dpgNum }</li>
 			<li>${bean.dpgTitle }</li>
 			<li>${bean.dpgImgLink }</li>
 			<li>${bean.dpgContent }</li>
 			<li><img src="../resources/imgs/dpgimgs/${bean.dpgImgLink}"></li>
 		</ul>
 	</c:forEach> 
 	
 	<%-- <c:forEach items="${list}" var="bean">
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
 	</c:forEach>  --%>
</body>
</html>