<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h1>dpg test page</h1>
	<form method="post" enctype="multipart/form-data">
	file<input type="file" name="file"/><br/>
	dpgTitle<input type="text" name="dpgTitle"/><br/>
	dpgWriter<input type="text" name="dpgWriter"/><br/> <!-- 세션에서 자동으로 입력되는부분 -->
	dpgFrom<input type="text" name="dpgFrom"/><br/> <!-- 카톡인지아닌지 체크 세션에서 자동입력 -->
	dpgSubject<input type="text" name="dpgSubject"/><br/>
	dpgContent<input type="text" name="dpgContent"/><br/>
	dpgCount<input type="number" name="dpgCount"/><br/>
	<button type="submit">전송</button>
	</form>
	<a href="/dpg/list/1">이미지 있는 게시판</a>
	<a href="/dpg/list/2">이미지 없는 게시판</a>
</body>
</html>