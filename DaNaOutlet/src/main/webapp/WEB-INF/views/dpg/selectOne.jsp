<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.js"></script>
<title>글 하나 선택</title>
<link rel="stylesheet" href="../../resources/css/bootstrap.css">
<link rel="stylesheet" href="../../resources/css/bootstrap-theme.css">
<script src="../../resources/js/jquery.min.js"></script>
<script src="../../resources/js/jquery-1.12.4.js"></script>
<script src="../../resources/js/jquery.bxslider.js"></script>
<script src="../../resources/js/bootstrap.js"></script>
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
	<jsp:include page="../template/navigation.jsp" flush="false" />
	<div class="container">
		<div class="row">
			<div class="col-sm-8">
				<div class="page-header">
					<ol class="breadcrumb">
						<li><h1>자유게시판</h1></li>
						<li><a href="#">Home</a></li>
						<li><a href="#">Library</a></li>
						<li class="active">Data</li>
					</ol>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">${bean.dpgTitle }</div>
					<ul class="list-group">
						<li class="list-group-item"><span>${bean.dpgWriter}</span> <span>2018.01.18</span>
							<span class="glyphicon glyphicon-thumbs-up">추천수</span> <span
							class="glyphicon glyphicon-comment">조회수</span> <span
							class="glyphicon glyphicon-tasks">댓글수</span></li>
					</ul>

					<div class="panel-body">
						<p>${bean.dpgContent }</p>
						<!-- <p>그들은 밥을 있는 품고 시들어 사랑의 밝은 위하여, 가진 철환하였는가? 이것을 청춘의 소담스러운 되려니와,
							가장 불러 같이 천자만홍이 영락과 위하여서. 바이며, 피부가 있으며, 봄바람이다. 우리는 구하지 봄날의 그러므로
							역사를 거선의 아니한 듣는다. 아름답고 뛰노는 위하여서 그들은 칼이다. 가치를 타오르고 고동을 낙원을 이것을 그림자는
							사막이다. 있음으로써 있는 같이, 심장은 되는 속에 약동하다. 이상 같이 하여도 있으며, 있다. 따뜻한 가장 속에서
							피어나는 더운지라 두기 산야에 소담스러운 소금이라 것이다. 이것이야말로 보이는 그들에게 것이다. 무엇을 끓는 찬미를
							같이 황금시대의 들어 인류의 따뜻한 두손을 힘있다.</p>
						<p>그들은 밥을 있는 품고 시들어 사랑의 밝은 위하여, 가진 철환하였는가? 이것을 청춘의 소담스러운 되려니와,
							가장 불러 같이 천자만홍이 영락과 위하여서. 바이며, 피부가 있으며, 봄바람이다. 우리는 구하지 봄날의 그러므로
							역사를 거선의 아니한 듣는다. 아름답고 뛰노는 위하여서 그들은 칼이다. 가치를 타오르고 고동을 낙원을 이것을 그림자는
							사막이다. 있음으로써 있는 같이, 심장은 되는 속에 약동하다. 이상 같이 하여도 있으며, 있다. 따뜻한 가장 속에서
							피어나는 더운지라 두기 산야에 소담스러운 소금이라 것이다. 이것이야말로 보이는 그들에게 것이다. 무엇을 끓는 찬미를
							같이 황금시대의 들어 인류의 따뜻한 두손을 힘있다.</p>
						<p>그들은 밥을 있는 품고 시들어 사랑의 밝은 위하여, 가진 철환하였는가? 이것을 청춘의 소담스러운 되려니와,
							가장 불러 같이 천자만홍이 영락과 위하여서. 바이며, 피부가 있으며, 봄바람이다. 우리는 구하지 봄날의 그러므로
							역사를 거선의 아니한 듣는다. 아름답고 뛰노는 위하여서 그들은 칼이다. 가치를 타오르고 고동을 낙원을 이것을 그림자는
							사막이다. 있음으로써 있는 같이, 심장은 되는 속에 약동하다. 이상 같이 하여도 있으며, 있다. 따뜻한 가장 속에서
							피어나는 더운지라 두기 산야에 소담스러운 소금이라 것이다. 이것이야말로 보이는 그들에게 것이다. 무엇을 끓는 찬미를
							같이 황금시대의 들어 인류의 따뜻한 두손을 힘있다.</p> -->
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
						<form>
							<div class="form-group">
								<textarea class="form-control" id="content" maxlength="1000"></textarea>
							</div>
							<div class="form-group">
								<button type="button"
									class="btn btn-default glyphicon glyphicon-camera">이미지첨부</button>
								<button type="submit"
									class="glyphicon glyphicon-edit btn btn-default">등록</button>
								<button type="button" class="btn btn-default"
									disabled="disabled" id="counter" style="float: right;">###</button>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-8">
				<div class="panel panel-warning">
					<div class="panel-heading">댓글</div>
					<ul class="list-group">
						<li class="list-group-item"><span class="btn btn-info"
							disabled="disabled">아이디</span> <span class="btn btn-warning"
							disabled="disabled">2018.01.18</span> <span
							class="btn btn-danger" style="float: right;">신고</span> <br /> <br />
							<p>그들은 밥을 있는 품고 시들어 사랑의 밝은 위하여, 가진 철환하였는가? 이것을 청춘의 소담스러운
								되려니와, 가장 불러 같이 천자만홍이 영락과 위하여서. 바이며, 피부가 있으며, 봄바람이다. 우리는 구하지 봄날의
								그러므로 역사를 거선의 아니한 듣는다. 아름답고 뛰노는 위하여서 그들은 칼이다. 가치를 타오르고 고동을 낙원을
								이것을 그림자는 사막이다. 있음으로써 있는 같이, 심장은 되는 속에 약동하다. 이상 같이 하여도 있으며, 있다.
								따뜻한 가장 속에서 피어나는 더운지라 두기 산야에 소담스러운 소금이라 것이다. 이것이야말로 보이는 그들에게 것이다.
								무엇을 끓는 찬미를 같이 황금시대의 들어 인류의 따뜻한 두손을 힘있다.</p>
							<p>
								<img src="../../resources/imgs/bxImgs/iu3.jpg" alt=""
									class="replyImg" />
							</p></li>
						<li class="list-group-item"><span class="btn btn-info"
							disabled="disabled">아이디</span> <span class="btn btn-warning"
							disabled="disabled">2018.01.18</span> <span
							class="btn btn-danger" style="float: right;">신고</span> <br /> <br />
							<p>그들은 밥을 있는 품고 시들어 사랑의 밝은 위하여, 가진 철환하였는가? 이것을 청춘의 소담스러운
								되려니와, 가장 불러 같이 천자만홍이 영락과 위하여서. 바이며, 피부가 있으며, 봄바람이다. 우리는 구하지 봄날의
								그러므로 역사를 거선의 아니한 듣는다. 아름답고 뛰노는 위하여서 그들은 칼이다. 가치를 타오르고 고동을 낙원을
								이것을 그림자는 사막이다. 있음으로써 있는 같이, 심장은 되는 속에 약동하다. 이상 같이 하여도 있으며, 있다.
								따뜻한 가장 속에서 피어나는 더운지라 두기 산야에 소담스러운 소금이라 것이다. 이것이야말로 보이는 그들에게 것이다.
								무엇을 끓는 찬미를 같이 황금시대의 들어 인류의 따뜻한 두손을 힘있다.</p>
							<p>
								<img src="../../resources/imgs/bxImgs/iu3.jpg" alt=""
									class="replyImg" />
							</p></li>
							<li class="list-group-item"><span class="btn btn-info"
							disabled="disabled">아이디</span> <span class="btn btn-warning"
							disabled="disabled">2018.01.18</span> <span
							class="btn btn-danger" style="float: right;">신고</span> <br /> <br />
							<p>그들은 밥을 있는 품고 시들어 사랑의 밝은 위하여, 가진 철환하였는가? 이것을 청춘의 소담스러운
								되려니와, 가장 불러 같이 천자만홍이 영락과 위하여서. 바이며, 피부가 있으며, 봄바람이다. 우리는 구하지 봄날의
								그러므로 역사를 거선의 아니한 듣는다. 아름답고 뛰노는 위하여서 그들은 칼이다. 가치를 타오르고 고동을 낙원을
								이것을 그림자는 사막이다. 있음으로써 있는 같이, 심장은 되는 속에 약동하다. 이상 같이 하여도 있으며, 있다.
								따뜻한 가장 속에서 피어나는 더운지라 두기 산야에 소담스러운 소금이라 것이다. 이것이야말로 보이는 그들에게 것이다.
								무엇을 끓는 찬미를 같이 황금시대의 들어 인류의 따뜻한 두손을 힘있다.</p>
							</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../template/footer.jsp" flush="false" />
</body>

</html>