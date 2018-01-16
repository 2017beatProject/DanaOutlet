<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>파일 업로드 페이지</h1>
 	<form action="/upload" method="post" enctype="multipart/form-data">
 	productName<input type="text" name="productName"/><br/>
 	price<input type="number" name="price"><br/>
 	productIntro<input type="text" name="productIntro"></br>
 	link<input type="text" name="link"></br>
 	file<input type="file" name="file"/><br/>
 	<button type="submit">전송</button>
 	</form>
</body>
</html>