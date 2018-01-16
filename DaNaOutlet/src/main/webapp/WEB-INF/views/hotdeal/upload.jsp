<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>파일 업로드 페이지</h1>
 	<form action="/upload" method="post" enctype="multipart/form-data">
 	productName(상품명, 이미지 파일명)<input type="text" name="productName"/><br/>
 	price(가격)<input type="number" name="price"><br/>
 	productIntro(설명)<input type="text" name="productIntro"></br>
 	link(핫딜 주소)<input type="text" name="link"></br>
 	file(사진파일)<input type="file" name="file"/><br/>
 	<button type="submit">전송</button>
 	</form>
</body>
</html>