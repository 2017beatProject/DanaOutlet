<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.js"></script>
<title>입력</title>
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
			$(this).height((((content.split('\n').length) * 0.5)) + 'em');
			$('#counter').html(content.length + '/1000');
		});
		$('#content').keyup();
	});

	/* 이미지 미리보기 */

	function getThumbnailPrivew(html, $target) {
		if (html.files && html.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$target.css('display', '');
				//$target.css('background-image', 'url(\"' + e.target.result + '\")'); // 배경으로 지정시
				$target
						.html('<img src="' + e.target.result + '" border="0" alt="" class="uploadImg img-rounded img-responsive"/>');
			}
			reader.readAsDataURL(html.files[0]);
		}
	}
</script>

<style>
@media ( max-width : 768px) {
	.uploadImg {
		width: 40%;
	}
}

@media ( min-width : 768px) and (max-width: 992px) {
	.uploadImg {
		width: 60%;
	}
}

@media ( min-width : 992px) and (max-width: 1200px) {
	.uploadImg {
		width: 80%;
	}
}

@media ( min-width : 1200px) {
	.uploadImg {
		width: 100%;
	}
}

/* 이미지 미리보기 */

/*.filebox label {
			display: inline-block;
			padding: .5em .75em;
			color: #999;
			font-size: inherit;
			line-height: normal;
			vertical-align: middle;
			background-color: #fdfdfd;
			cursor: pointer;
			border: 1px solid #ebebeb;
			border-bottom-color: #e2e2e2;
			border-radius: .25em;
			width: 100%;
			max-width: 100%;
		}*/

/*.filebox input[type="file"] {
			 파일 필드 숨기기 
			position: absolute;
			width: 1px;
			height: 1px;
			padding: 0;
			margin: -1px;
			overflow: hidden;
			clip: rect(0, 0, 0, 0);
			border: 0;
		}*/
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
							<h3>리뷰 입력</h3>
						</li>
						<li><a href="#">DPG</a></li>
						<li><a href="#">리뷰</a></li>
						<li class="active">글쓰기</li>
					</ol>
				</div>
				<div class="panel panel-default">



					<div class="panel-body">
						<form class="form-horizontal" id="form" action="" method="post"
							enctype="multipart/form-data" autocomplete="off">
							<div class="form-group">
								<label for="" class="col-sm-2">제목</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id=""
										placeholder="제목을 입력해 주세요" required="required">
								</div>
							</div>
							<hr>
							<div class="form-group filebox">
								<label for="" class="col-sm-2">사진</label> <input type="file"
									class="col-sm-10" name="cma_file" id="cma_file"
									accept="image/*" capture="camera"
									onchange="getThumbnailPrivew(this,$('#cma_image'))"
									required="required" />
								<div class="col-sm-12">&nbsp;</div>
								<div class="col-sm-2">&nbsp;</div>
								<div class="col-sm-9">
									<!-- 여기에 사진이 나타납니다 -->
									<div id="cma_image" style="display: none;"></div>
								</div>
							</div>


							<div class="form-group">
								<div class="col-sm-12">
									<textarea class="form-control" id="content" maxlength="1000"
										style="resize: vertical" placeholder="내용을 입력해 주세요"
										required="required"></textarea>
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
							class="img-responsive" /></li>
						<li><img src="../../../resources/imgs/bxImgs/iu2.jpg" alt=""
							class="img-responsive" /></li>
						<li><img src="../../../resources/imgs/bxImgs/iu3.jpg" alt=""
							class="img-responsive" /></li>
					</ul>
				</div>
			</div>
		</div>


	</div>
	<jsp:include page="../template/footer.jsp" flush="false" />
</body>

</html>
