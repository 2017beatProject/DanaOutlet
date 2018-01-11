<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<div>

<c:forEach items="{list}" var="bean">
<ul>	
	<li id="mnum"><a href="{bean.mnum}"></a>회원번호 : {bean.mnum}</li>
	<li><a href="{bean.mnum}"></a>성명 : {bean.mname}</li>	
</ul>
</c:forEach>
</div>

</body>
</html>