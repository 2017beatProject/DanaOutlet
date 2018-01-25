<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>입력</title>
<link rel="stylesheet" href="../../../resources/css/bootstrap.css">
<link rel="stylesheet" href="../../../resources/css/bootstrap-theme.css">
<script src="../../../resources/js/jquery.min.js"></script>
<script src="../../../resources/js/jquery-1.12.4.js"></script>
<script src="../../../resources/js/jquery.bxslider.js"></script>
<script src="../../../resources/js/bootstrap.js"></script>
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
			$(this).height((((content.split('\n').length) * 0.5)) + 'em');
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
						<li>
							<h3>게시글 입력</h3>
						</li>
						<li><a href="#">DPG</a></li>
						<li><a href="#">게시판</a></li>
						<li class="active">글쓰기</li>
					</ol>
				</div>
				<div class="panel panel-default">



					<div class="panel-body">
						<form class="form-horizontal" method="post">
							<input type="hidden" name="dpgFrom" value="${loginInfo.loginFrom }"/>
							<input type="hidden" name="dpgWriter" value="${loginInfo.nickName }"/>
							<input type="hidden" name="dpgLoginId" value="${loginInfo.loginId }"/>
							<input type="hidden" name="dpgSubject" value="자유게시판"/>
							<div class="form-group">
								<label for="" class="col-sm-1 control-label">제목</label>
								<div class="col-sm-11">
									<input type="text" class="form-control" id="" name="dpgTitle"
										placeholder="제목을 입력해 주세요" required="required" value="${bean.dpgTitle }"> 
								</div>
							</div>
							<hr>
							<div class="form-group">
								<div class="col-sm-12">
									<textarea  class="form-control" id="content" maxlength="1000" name="dpgContent"
										style="resize: vertical" placeholder="내용을 입력해 주세요" 
										
										required="required">${bean.dpgContent }</textarea>
								</div>

							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<button type="submit"
										class="glyphicon glyphicon-edit btn btn-default">등록</button>
									<button type="button" class="btn btn-default"
										disabled="disabled" id="counter" style="float: right;">###</button>
								</div>
							</div>
						</form>

					</div>
				</div>
			</div>


			<div class="col-sm-4 hidden-xs ">
				<div>
					<ul class="bxslider">
						<li><img src="../../../resources/imgs/bxImgs/iu1.jpg" alt=""
							class="img-responsive" />
						<li><img src="../../../resources/imgs/bxImgs/iu2.jpg" alt=""
							class="img-responsive" /></li>
						<li><img src="../../../resources/imgs/bxImgs/iu3.jpg" alt=""
							class="img-responsive" /></li>
					</ul>
				</div>
			</div>
		</div>
		<!--<div class="row">
					<div class="col-sm-8">
						<div class="panel panel-success">
							<div class="panel-body">
								<form>
									<div class="form-group">
										<textarea class="form-control" id="content" maxlength="1000"></textarea>
									</div>
									<div class="form-group">
										<button type="button" class="btn btn-default glyphicon glyphicon-camera">이미지첨부</button>
										<button type="submit" class="glyphicon glyphicon-edit btn btn-default">등록</button>
										<button type="button" class="btn btn-default" disabled="disabled" id="counter" style="float: right;">###</button>
									</div>
								</form>

							</div>
						</div>
					</div>
				</div>-->

	</div>
	<jsp:include page="../template/footer.jsp" flush="false" />
</body>

</html>
