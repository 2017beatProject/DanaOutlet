<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.js"></script>
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
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
		/* $.ajax({
			'url' : 'http://apis.skplanetx.com/11st/v2/common/products',
			'data' : {
				'version' : '1',
				'searchKeyword' : $('#productSearch').val() + ",가구",
				'option' : 'Categories',
				'page' : loadPage,
				'appKey' : '4c3dab31-521e-368c-86db-a60223eb7e22'
			},'success' : function(data) {
				datas = data;
				products = data.childNodes[0].childNodes[1];
			}
			
		}); */
	});
</script>

<style type="text/css">
.navbar-default {
	margin-bottom: 0px;
	padding-bottom: 0px;
}
</style>
</head>
<body>
	<jsp:include page="template/navigation.jsp" />


	<div class="container">
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">

					<img src="../resources/imgs/main/carou1.jpg" alt=""
						class="img-responsive" />
					<div class="carousel-caption">
						<strong>&nbsp;사람을 향합니다</strong><br /> <img
							src="../../../resources/imgs/dalogo.png" alt="다나n아울렛&#8482;"
							width="150px">
					</div>
				</div>

				<div class="item">

					<img src="../resources/imgs/main/carou2.jpg" alt=""
						class="img-responsive" />
					<div class="carousel-caption">
						<strong>&nbsp;사람을 향합니다</strong><br /> <img
							src="../../../resources/imgs/dalogo.png" alt="다나n아울렛&#8482;"
							width="150px">
					</div>
				</div>
				<div class="item">

					<img src="../resources/imgs/main/carou3.jpg" alt=""
						class="img-responsive" />
					<div class="carousel-caption">
						<strong>&nbsp;사람을 향합니다</strong><br /> <img
							src="../../../resources/imgs/dalogo.png" alt="다나n아울렛&#8482;"
							width="150px">
					</div>
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<div class="container well">
		<div class="row">
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="/search?keyword=거실"><img
					src="../resources/imgs/main/gridButton/거실.png" alt=""
					class="img-responsive" /></a> <a href="/search?keyword=거실"><strong>거실</strong></a>
			</div>
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="/search?keyword=공부방"><img
					src="../resources/imgs/main/gridButton/공부방.png" alt=""
					class="img-responsive" /></a> <a href="/search?keyword=공부방"><strong>공부방</strong></a>
			</div>
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="/search?keyword=침실"><img
					src="../resources/imgs/main/gridButton/침실.png" alt=""
					class="img-responsive" /></a> <a href="/search?keyword=침실"><strong>침실</strong></a>
			</div>
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="/search?keyword=주방"><img
					src="../resources/imgs/main/gridButton/주방.png" alt=""
					class="img-responsive" /></a> <a href="/search?keyword=주방"><strong>주방</strong></a>
			</div>
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="/search?keyword=유아가구"><img
					src="../resources/imgs/main/gridButton/유아가구.png" alt=""
					class="img-responsive" /></a> <a href="/search?keyword=유아가구"><strong>유아가구</strong></a>
			</div>
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="/search?keyword=소품"><img
					src="../resources/imgs/main/gridButton/소품.png" alt=""
					class="img-responsive" /></a> <a href="/search?keyword=소품"><strong>소품</strong></a>
			</div>
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="/search?keyword=패브릭"><img
					src="../resources/imgs/main/gridButton/패브릭.png" alt=""
					class="img-responsive" /></a> <a href="/search?keyword=패브릭"><strong>패브릭</strong></a>
			</div>
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="/search?keyword=인테리어"><img
					src="../resources/imgs/main/gridButton/인테리어.png" alt=""
					class="img-responsive" /></a> <a href="/search?keyword=인테리어"><strong>인테리어</strong></a>
			</div>
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="/search?keyword=화장실"><img
					src="../resources/imgs/main/gridButton/화장실.png" alt=""
					class="img-responsive" /></a> <a href="/search?keyword=화장실"><strong>화장실</strong></a>
			</div>
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="/search?keyword=사무실"><img
					src="../resources/imgs/main/gridButton/사무실.png" alt=""
					class="img-responsive" /></a> <a href="/search?keyword=사무실"><strong>사무실</strong></a>
			</div>
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="/search?keyword=천장"><img
					src="../resources/imgs/main/gridButton/천장.png" alt=""
					class="img-responsive" /></a> <a href="/search?keyword=천장"><strong>천장</strong></a>
			</div>
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="/search?keyword=공구"><img
					src="../resources/imgs/main/gridButton/공구.png" alt=""
					class="img-responsive" /></a> <a href="/search?keyword=공구"><strong>공구</strong></a>
			</div>


		</div>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12">오늘의 추천</div>
			<!-- 전면광고 bxSlider -->
			<div class="col-sm-12" id="bxFirst" style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px; border: 0px 0px 0px 0px;">
				<ul class="bxslider">
					<li><img src="../resources/imgs/main/bx1.jpg" alt=""
						class="img-responsive bxImg" />
					<li><img src="../resources/imgs/main/bx2.jpg" alt=""
						class="img-responsive bxImg" /></li>
					<li><img src="../resources/imgs/main/bx3.jpg" alt=""
						class="img-responsive bxImg" /></li>
				</ul>
			</div>
			<!-- 전면광고 끝 -->
		</div>
		<div class="row">
			<div class="col-sm-12">테마쇼핑</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3"
				style="padding: 0px 0px 0px 0px">
				<img src="../resources/imgs/main/cube1.jpg" alt=""
					class="img-responsive bxImg" />
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3"
				style="padding: 0px 0px 0px 0px">
				<img src="../resources/imgs/main/cube2.jpg" alt=""
					class="img-responsive bxImg" />
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3"
				style="padding: 0px 0px 0px 0px">
				<img src="../resources/imgs/main/cube3.jpg" alt=""
					class="img-responsive bxImg" />
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3"
				style="padding: 0px 0px 0px 0px">
				<img src="../resources/imgs/main/cube4.jpg" alt=""
					class="img-responsive bxImg" />
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">뜨는 상품</div>
		</div>
	</div>



	<jsp:include page="template/footer.jsp" />
</body>

</html>