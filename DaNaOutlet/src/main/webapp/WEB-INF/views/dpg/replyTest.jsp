<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<h1>댓글테스트</h1>



<div>
<c:forEach items="${list}" var="bean">
<ul>
	<li>${bean.replyLog}</li>
	<li>${bean.replyId}</li>
	<li>${bean.replyContent}</li>
	<li>${bean.replyDate}</li>
	<li>${bean.replyDepth}</li>
	<li>${bean.replyConId}</li>
	<li>${bean.fatherContentsNum}</li>
		
</ul>
</c:forEach>

</div>

</body>
</html>