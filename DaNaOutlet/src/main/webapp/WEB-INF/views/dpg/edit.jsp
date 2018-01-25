<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 하나 선택</title>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/bootstrap-theme.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/jquery-1.12.4.js"></script>
<script src="resources/js/jquery.bxslider.js"></script>
<script src="resources/js/bootstrap.js"></script>
<script>
	$(document).ready(function() {
		$('.bxslider').bxSlider({
			auto : true,
			speed : 300,
			pause : 2000,
			mode : 'horizontal',
			autoControlls : true,
			pager : false,
			autoHover : true,
			controls : false
		});
	});
	$(function() {
		$('#content').keyup(function(e) {
			var content = $(this).val();
			$(this).height((((content.split('\n').length) * 0.5) - 9) + 'em');
			$('#counter').html(content.length + '/1000');
		});
		$('#content').keyup();
	});
</script>

<style>
@media ( max-width : 768px) {
	.replyImg {
		width: 200px;
	}
}

@media ( min-width : 768px) and (max-width: 992px) {
	.replyImg {
		width: 300px;
	}
}

@media ( min-width : 992px) and (max-width: 1200px) {
	.replyImg {
		width: 400px;
	}
}

@media ( min-width : 1200px) {
	.replyImg {
		width: 500px;
	}
}
</style>
</head>
<body>
	<%-- <jsp:include page="../template/navigation.jsp" flush="false" /> --%>
	<div class="container">
		<div class="row">
			<div class="col-sm-8">
				<div class="page-header">
					<ol class="breadcrumb">
						<li><h1>글 수정</h1></li>
					</ol>
				</div>
				<div class="panel panel-default">
					<div class="form-group">
						<label for="subject">글제목:</label> <input type="text"
							class="form-control" name="subject" id="subject"
							placeholder="원래 작성된 글 들어갈곳">
					</div>
					<ul class="list-group">
						<li class="list-group-item">글쓴이:<strong> 김도진</strong> <span>sysdate</span>
							 
						</li>  
					</ul>   
 
					<div class="form-group">
						<label for="content">내용:</label>
						
						<textarea class="form-control" rows="100" name="content"
							id="content" placeholder="원래 작성된 글 들어갈 곳."></textarea>
							<button type="button"
							class="btn btn-default glyphicon glyphicon-camera"
							style="float: right;">이미지첨부</button>&nbsp;
					</div>
				</div>
			</div>
			<div class="col-sm-4 hidden-xs ">
				<div>
					<ul class="bxslider">
						<li><img src="../../resources/imgs/bxImgs/iu1.jpg" alt=""
							class="img-responsive" />
						<li><img src="../../resources/imgs/bxImgs/iu2.jpg" alt=""
							class="img-responsive" /></li>
						<li><img src="../../resources/imgs/bxImgs/iu3.jpg" alt=""
							class="img-responsive" /></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-8">
				<div class="panel panel-success">
					<div class="panel-body">
						<button type="submit"
							class="glyphicon glyphicon-edit btn btn-default">등록</button>
						<button type="submit"
							class="glyphicon glyphicon-edit btn btn-default"
							style="float: right;">뒤로가기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>