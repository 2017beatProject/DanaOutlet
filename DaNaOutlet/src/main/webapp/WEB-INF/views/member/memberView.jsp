<%@ page language="java" contentType="text/html; charset=UTf-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/bootstrap-theme.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/jquery-1.12.4.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="resources/js/bootstrap.js"></script>
<title>Insert title here</title>
<style type="text/css">
	body{
		text-align: center;
	}
	ul{
		display: inline-block;
	}
	
	
</style>
<script type="text/javascript">

</script>
</head>
<body>
<h1>회원리스트</h1>

<c:forEach items="${list}" var="bean">
	<div class="container">
	<h3>${bean.mnum}</h3>
	<ul class="list-group">
		<li class="list-group-item" id="mnum"> 회원번호: ${bean.mnum}</li>
		<li class="list-group-item" id="name"> 이름: <a href="/member/${bean.mnum}">${bean.name}</a></li>
		<li class="list-group-item" id="id">ID : ${bean.id}</li>
		<li class="list-group-item" id="password">Password : ${bean.password}</li>
		<li class="list-group-item" id="phone">Phone : ${bean.phone}</li>
		<li class="list-group-item" id="mail">Mail : ${bean.mail}</li>
		<li class="list-group-item" id="mbirth">Mbirth : ${bean.mbirth}</li>
		<li class="list-group-item" id="addr">Addr : ${bean.addr}</li>
		<li class="list-group-item" id="addrn">Addrn : ${bean.addrn}</li>	
	</ul> 
	</div>  
</c:forEach>
<button type="button" class="btn btn-warning">뒤로</button>
</body>
</html>