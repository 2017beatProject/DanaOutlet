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
<link rel="stylesheet" href="../../resources/css/bootstrap.css">
<link rel="stylesheet" href="../../resources/css/bootstrap-theme.css">
<script src="../../resources/js/jquery.min.js"></script>
<script src="../../resources/js/jquery-1.12.4.js"></script>
<script src="../../resources/js/jquery.bxslider.js"></script>
<script src="../../resources/js/bootstrap.js"></script>
<script src="../../resources/js/replyCall.js"></script>
<script>
var param;
	$(document).ready(function() {
		
		param={'num' : $('#dpgNum').text()};
		
		replyCall(param);
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
		
		//댓글입력
		$('#replyAdd').on("submit", function(){
			var param={					
					'replyId':'',
					'replyContent':'',
					'replyDate':'',
					'replyDepth':'',
					'replyConId':'',
					'fatherContentsNum':'',
					'replyImgsLink':''
					
			};
				$.ajax({
					'url':"/replyAdd",
					'data':param,
					'success':function(){
						console.log("댓글입력 성공");
					}
				});	
			alert("폼?");
			return false;//일단 묶어두기
		});//replyAdd end
	/* 		<form id="replyAdd">
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
					
					int replyLog;
					String replyId;
					String replyContent;
					Date replyDate;
					int replyDepth;
					String replyConId;
					int fatherContentsNum;
					String replyImgsLink;</div>
			
			
		</form> */
		
			
			
		});// window ready end
		
		

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
						<li><h1>${bean.dpgSubject }</h1></li>
						<li><a href="/">Main</a></li>
						<li><a href="/board">DPG</a></li>
						<li class="active">${bean.dpgSubject }</li>
					</ol>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">${bean.dpgTitle }
					<span style="float:right" id="dpgNum">${bean.dpgNum }</span>
					</div>					
					<ul class="list-group">
						<li class="list-group-item"><span>[${bean.dpgFrom}]${bean.dpgWriter }</span> <span>(${bean.dpgNalja })</span>
							<span class="glyphicon glyphicon-thumbs-up">추천수</span> <span
							class="glyphicon glyphicon-comment">조회수</span> <span
							class="glyphicon glyphicon-tasks">댓글수</span></li>
					</ul>

					<div class="panel-body">
						${bean.dpgContent }
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
						<form id="replyAdd">
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
					<ul class="list-group" id="replysTotal">
						
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
