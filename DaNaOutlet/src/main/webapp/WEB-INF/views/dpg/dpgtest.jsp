
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	<button type="submit">전송</button>
	</form>
</body>
</html>
