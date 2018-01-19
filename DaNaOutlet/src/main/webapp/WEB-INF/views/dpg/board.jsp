<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		
		$('#pages').css({
			'position':'relative',
			'left':'200px'			
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
</head>

<body>
	<jsp:include page="../template/navigation.jsp" flush="false" />
	<div class="container">
		<div class="row">
			<div class="col-sm-8">
				<ol class="breadcrumb">
					<li><h1>자유게시판</h1></li>
					<li><a href="#">Home</a></li>
					<li><a href="#">Library</a></li>
					<li class="active">Data</li>
				</ol>
				<table class="table table-hover">


					<tr>
						<th>글번호</th>
						<th>제목</th>
						<th class="hidden-xs">작성자</th>
						<th class="hidden-xs hidden-sm">작성일</th>
						<th class="hidden-xs hidden-sm hidden-md">조회</th>
					</tr>
					<tr>
						<td>1</td>
						<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit,</td>
						<td class="hidden-xs">BxSlider</td>
						<td class="hidden-xs hidden-sm">2018.1.16</td>
						<td class="hidden-xs hidden-sm hidden-md">56</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit,</td>
						<td class="hidden-xs">BxSlider</td>
						<td class="hidden-xs hidden-sm">2018.1.16</td>
						<td class="hidden-xs hidden-sm hidden-md">56</td>
					</tr>
					<tr>
						<td>3</td>
						<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit,</td>
						<td class="hidden-xs">BxSlider</td>
						<td class="hidden-xs hidden-sm">2018.1.16</td>
						<td class="hidden-xs hidden-sm hidden-md">56</td>
					</tr>
				</table>
				<nav id="pages" class="col-xs-12">
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
				<form class="form-inline col-xs-8" style="float: right;">
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
			<div  class="col-sm-4 hidden-xs ">
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
</body>

</html>
