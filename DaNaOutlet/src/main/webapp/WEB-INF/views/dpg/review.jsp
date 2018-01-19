<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<html>

<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
<link rel="stylesheet" href="../resources/css/bootstrap.css">
<link rel="stylesheet" href="../resources/css/bootstrap-theme.css">
<script src="../resources/js/jquery.min.js"></script>
<script src="../resources/js/jquery-1.12.4.js"></script>
<script src="../resources/js/jquery.bxslider.js"></script>
<script src="../resources/js/bootstrap.js"></script>
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
			$(this).height((((content.split('\n').length) * 0.5) - 4) + 'em');
			$('#counter').html(content.length + '/1000');
		});
		$('#content').keyup();
	});
</script>
<style>
@media ( max-width : 768px) {
	.reviewImg {
		width: 80px;
	}
}
</style>
</head>

<body>
	<jsp:include page="../template/navigation.jsp" flush="false" />
	<div class="container">
		<div class="row">
			<div class="col-sm-8">
				<ol class="breadcrumb">
					<li><h1>리뷰게시판</h1></li>
					<li><a href="#">Home</a></li>
					<li><a href="#">Library</a></li>
					<li class="active">Data</li>
				</ol>
				<ul style="list-style: none;">
					<!-- 반복시작 --><c:forEach items="${imgList}" var="bean">
					<li>
						<div class="col-sm-2">
							<a href=""><img src="../resources/imgs/dpgimgs/${bean.dpgImgLink}" alt=""
								class="img-thumbnail reviewImg" /></a>
						</div>
						<div class="col-sm-8">
							<strong class="col-sm-12"><a href="#">${bean.dpgNum }:${bean.dpgTitle }</a></strong>
							<div class="col-sm-12">&nbsp;</div>
							<div class="col-sm-12">
								<span><a href="#">${bean.dpgWriter }</a></span> <span>2018.01.18</span>
								<div style="color: purple;">
									<span class="glyphicon glyphicon-thumbs-up">추천수</span> <span
										class="glyphicon glyphicon-comment">조회수</span> <span
										class="glyphicon glyphicon-tasks">댓글수</span>
								</div>
							</div>
						</div>
					</li>
					<li><div class="col-sm-12"><hr /></div></li>
					<!-- 반복 끝 --> </c:forEach> 
				</ul>
				<nav class="col-xs-12">
					<ul class="pagination">
						<li><a href="#">Previous</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">Next</a></li>
					</ul>
				</nav>
				<form class="form-inline col-xs-12">
					<div class="form-group">
						<select class="form-control">
							<option>제목+내용</option>
							<option>제목</option>
							<option>내용</option>
							<option>닉네임</option>
							<option>아이디</option>
						</select> <input type="text" class="form-control" id="exampleInputName2"
							placeholder="검색어를 입력하세요">
						<button type="submit" class="btn btn-default">확인</button>
					</div>
				</form>

			</div>
			<div class="col-sm-4 hidden-xs">
				<div>
					<ul class="bxslider">
						<li><img src="../resources/imgs/bxImgs/iu1.jpg" alt=""
							class="img-responsive" />
						<li><img src="../resources/imgs/bxImgs/iu2.jpg" alt=""
							class="img-responsive" /></li>
						<li><img src="../resources/imgs/bxImgs/iu3.jpg" alt=""
							class="img-responsive" /></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../template/footer.jsp" flush="false" />
</body>

</html>