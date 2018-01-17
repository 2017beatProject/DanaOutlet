<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/bootstrap.css">

<link rel="stylesheet" href="../resources/css/bootstrap-theme.css">

<script src="../resources/js/jquery.min.js"></script>
<script src="../resources/js/bootstrap.js"></script>
<script>
	$(function() {
		var param = {
			'num' : $('#dpgNum').text()
		};

		$('ul').append("<li>하이하이</li>");

		$.ajax({
			'url' : '/replyCall',
			'data' : param,
			'success' : function(data) {
				console.log(data.list[0].id);
				console.log(data.list[0].contents);
				console.log(data.list[0].nalja);
				console.log(data.list[0].depth);
				console.log(data.list[0].conId);
				console.log(data.list[0].fatherNum);
				$('ul li').eq(8).append("<li>"+data.list[0].id+":"+data.list[0].contents+":"+data.list[0].nalja+"</li>").css(
				{
					'color':'red'						
				});
			},
			'err' : function() {
				console.log("댓글 호출 실패");
			}

		});

	});
</script>
</head>


<body>
	<h1>dpg page</h1>
	<c:forEach items="${list}" var="bean">
		<ul>
			<li id="dpgNum">${bean.dpgNum }</li>
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