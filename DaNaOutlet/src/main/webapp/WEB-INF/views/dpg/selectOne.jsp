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
<script src="../../resources/js/buttonSession.js"></script>
<script>
	var loginInfoId = "${loginInfo.loginId}";
	var writer = "${bean.dpgLoginId }";
	var root= "board";
	$(document)
			.ready(
					function() {
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
						$('#AtagDelete')
								.click(
										function() {
											if (loginInfoId == writer) {
												$
														.ajax({
															'url' : '/dpg/delete/'
																	+ '${bean.dpgNum}',
															'method' : 'DELETE',
															'success' : function() {
																window.location
																		.replace("/dpg/"+root+"?startNum=0");
															}
														});
											}
										});	
						$('.AtagReplyDelete').click(
								
								function() {	 								   
									var replyLog=$(this).parent().find('span').last().text();
									var replyConId=$(this).parent().find('span').first().text();																		
									replySession(replyConId);
									if (loginInfoId == replyConId) {								 		
										
										$
												.ajax({       
													'url' : '/reply/delete/'+replyLog,
					 								'method' : 'DELETE',
													'success' : function() {
														window.location
																.replace("/dpg/"+root+"/${bean.dpgNum}");
													}
												});
									}
								});
						buttonSession(root, ${bean.dpgNum});    

					});
	$(function() {
		$('#replyContent').keyup(function(e) {
			var content = $(this).val();
			$(this).height((((content.split('\n').length) * 0.5) - 9) + 'em');
			$('#counter').html(content.length + '/1000');
		});
		$('#replyContent').keyup();
	});
	
	function getThumbnailPrivew(html, $target) {
	      if (html.files && html.files[0]) {
	         var reader = new FileReader();
	         reader.onload = function(e) {
	            $target.css('display', '');
	            //$target.css('background-image', 'url(\"' + e.target.result + '\")'); // 배경으로 지정시
	            $target
	                  .html('<img src="' + e.target.result + '" border="0" alt="" class="img-responsive"/>');
	         }
	         reader.readAsDataURL(html.files[0]);
	      }
	   }
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
			<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
				<div class="page-header">
					<ol class="breadcrumb">
						<li><h1>자유게시판</h1></li>
						<li><a href="/">Home</a></li>
						<li><a href="/dpg?startNum=0">DPG</a></li>
						<li class="active">리뷰</li>
					</ol>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">${bean.dpgTitle }
						<a type="button" id="AtagEdit" class="btn btn-default" href="#"
							data-toggle="modal" data-target="#noRight">수정</a>
						<button id="ButDelete" type="button" class="btn btn-default"
							data-toggle="modal" data-target="#DeleteConfim">삭제</button>
					</div>

					<ul class="list-group">
						<li class="list-group-item"><span>${bean.dpgWriter}</span> <span>${bean.dpgNalja }</span>
							<span class="glyphicon glyphicon-thumbs-up">추천수</span> <span
							class="glyphicon glyphicon-comment">조회수</span> <span
							class="glyphicon glyphicon-tasks">댓글수</span></li>
					</ul>

					<div class="panel-body">
						<p>${bean.dpgContent }</p>
					</div>
				</div>

				<div class="panel panel-success">
					<div class="panel-body">
						<form method="post" id="replyAddForm" action="/replyAdd"
							enctype="multipart/form-data">
							<input type="hidden" name="replyNickName"
								value="${loginInfo.nickName}"> <input type="hidden"
								name="replyConId" value="${loginInfo.loginId}"> <input
								type="hidden" name="fatherContentsNum" value="${bean.dpgNum }">
							<input type="hidden" name="fatherFrom" value="board">
							<div class="form-group">
								<textarea class="form-control" name="replyContent"
									maxlength="1000" required="required" id="replyContent"
									style="resize: vertical;"></textarea>
							</div>

							<div class="form-group">
								<label for="cma_file"
									class="btn btn-default glyphicon glyphicon-camera">이미지첨부</label>

								<input type="file" name="file" id="cma_file" accept="image/*"
									capture="camera"
									onchange="getThumbnailPrivew(this,$('#cma_image'))"
									style="display: none;" />

								<button type="button" class="btn btn-default"
									disabled="disabled" id="counter" style="float: right;">###</button>
								<hr />
								<div id="cma_image"
									style="width: 100%; max-width: 100%; border: 1px solid #000; display: none;"></div>

							</div>

						</form>
					</div>
				</div>

				<div class="panel panel-warning">
					<div class="panel-heading">댓글</div>
					<ul class="list-group">
						<c:forEach items="${reply }" var="reply">
							<li class="list-group-item"><span style="display: none">${reply.replyConId }</span>
								<span class="btn btn-info" disabled="disabled">${reply.replyNickName }</span>
								<span class="btn btn-warning" disabled="disabled">${reply.replyDate }</span>
								<a type="button" class="AtagReplyDelete btn btn-danger"
								data-toggle="modal" data-target="#noRight" style="float: right">삭제</a><span
								style="display: none">${reply.replyLog }</span> <br /> <br />
								<p>${reply.replyContent }</p>
								<p>
									<img
										src="../../resources/imgs/replyImgs/${reply.replyImgsLink }"
										alt="" class="replyImg" />
								</p></li>
						</c:forEach>

					</ul>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 hidden-xs">
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
	</div>
	<jsp:include page="../template/footer.jsp" flush="false" />
</body>

</html>