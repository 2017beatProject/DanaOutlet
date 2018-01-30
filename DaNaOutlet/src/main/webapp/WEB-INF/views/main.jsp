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
		loadList(' ');
	});
	var load = function(keyword) {
		$("html,body").animate({
			scrollTop : $("#content").offset().top - 60
		}, 1000);
		loadList(keyword);
	}
	var loadList = function(keyword) {
		$('#content').empty();
		$
				.ajax({
					'url' : 'http://apis.skplanetx.com/11st/v2/common/products',
					'data' : {
						'version' : '1',
						'searchKeyword' : keyword + ", 가구", // 가구에 대한 것들을 불러온다
						'option' : 'Categories',
						'page' : '1', // 1페이지에서만
						'appKey' : '4c3dab31-521e-368c-86db-a60223eb7e22' // 이게 개발자 키
					},
					'success' : function(data) {
						console.log(data);
						datas = data;
						products = data.childNodes[0].childNodes[1];
						for (var i = 5; i < 29; i++) {
							var pruductTitle = products.childNodes[i].childNodes[1].firstChild.wholeText;
							$('#content')
									.append(
											'<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2" '
													+ 'style="padding: 3px 3px 3px 3px; height:100%;">'
													+ '<a data-toggle="modal" data-target="#modal-'+i+'">'
													+ '<img src="'
													+ products.childNodes[i].childNodes[14].firstChild.wholeText
													+ '" class="img-responsive hotDealImg" /></a></div>'
													// 모달창
													+ '<div class="modal fade"' 
												+ 'id="modal-'+i+'"'
												+ 'tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">'
													+ '<div class="modal-dialog modal-lg"><div class="modal-content"><div class="modal-body">'
													+ '<div class="row"><div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">'
													+ '<img src="'+products.childNodes[i].childNodes[14].firstChild.wholeText
													+ '" class="img-responsive" style="width:100%; height=100%;"/></div>'
													+ '<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">'
													+ '<hr />'
													+ '<h3><a href="'
													+ products.childNodes[i].childNodes[21].firstChild.wholeText
													+ '">'
													+ products.childNodes[i].childNodes[1].firstChild.wholeText
													+ '</a></h3><hr />'
													+ '<div class="col-lg-8 col-md-8 hidden-sm hidden-xs">'
													+ '셀러닉네임:'
													+ products.childNodes[i].childNodes[17].firstChild.wholeText
													+ '<br/>'
													+ '셀러아이디:'
													+ products.childNodes[i].childNodes[18].firstChild.wholeText
													+ '<br/>'
													+ '셀러등급:'
													+ products.childNodes[i].childNodes[19].firstChild.wholeText
													+ '<br/>'
													+ '상품평가점수:'
													+ products.childNodes[i].childNodes[20].firstChild.wholeText
													+ '<br/>'
													+ '배송비:'
													+ products.childNodes[i].childNodes[23].firstChild.wholeText
													+ '<br/>'
													+ '리뷰수:'
													+ products.childNodes[i].childNodes[24].firstChild.wholeText
													+ '</div><div class="col-lg-4 col-md-4 hidden-sm hidden-xs">'
													+ '<h4>'
													+ products.childNodes[i].childNodes[2].firstChild.wholeText
															.toString()
															.replace(
																	/\B(?=(\d{3})+(?!\d))/g,
																	",")
													+ 'krw</h4>'
													+ '</div></div></div></div></div></div></div>'
									);
						}
						;
					},
					'error' : function(data) {
						console.log("에러");
					}
				})
	}
</script>

<style type="text/css">
.navbar-default {
	margin-bottom: 0px;
	padding-bottom: 0px;
}
/* .hotDealImg {
	min-width: 100%;
} */
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

	<!-- 버튼 12개 -->
	<div class="container well">
		<div class="row">
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="javascript:void(0);" onclick="load('거실')"><img
					src="../resources/imgs/main/gridButton/거실.png" alt=""
					class="img-responsive" /></a> <a href="javascript:void(0);"
					onclick="load('거실')"><strong>거실</strong></a>
			</div>
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="javascript:void(0);" onclick="load('공부방')"><img
					src="../resources/imgs/main/gridButton/공부방.png" alt=""
					class="img-responsive" /></a> <a href="javascript:void(0);"
					onclick="load('공부방')"><strong>공부방</strong></a>
			</div>
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="javascript:void(0);" onclick="load('침실')"><img
					src="../resources/imgs/main/gridButton/침실.png" alt=""
					class="img-responsive" /></a> <a href="javascript:void(0);"
					onclick="load('침실')"><strong>침실</strong></a>
			</div>
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="javascript:void(0);" onclick="load('주방')"><img
					src="../resources/imgs/main/gridButton/주방.png" alt=""
					class="img-responsive" /></a> <a href="javascript:void(0);"
					onclick="load('주방')"><strong>주방</strong></a>
			</div>
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="javascript:void(0);" onclick="load('유아가구')"><img
					src="../resources/imgs/main/gridButton/유아가구.png" alt=""
					class="img-responsive" /></a> <a href="javascript:void(0);"
					onclick="load('유아가구')"><strong>유아가구</strong></a>
			</div>
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="javascript:void(0);" onclick="load('소품')"><img
					src="../resources/imgs/main/gridButton/소품.png" alt=""
					class="img-responsive" /></a> <a href="javascript:void(0);"
					onclick="load('소품')"><strong>소품</strong></a>
			</div>
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="javascript:void(0);" onclick="load('패브릭')"><img
					src="../resources/imgs/main/gridButton/패브릭.png" alt=""
					class="img-responsive" /></a> <a href="javascript:void(0);"
					onclick="load('패브릭')"><strong>패브릭</strong></a>
			</div>
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="javascript:void(0);" onclick="load('인테리어')"><img
					src="../resources/imgs/main/gridButton/인테리어.png" alt=""
					class="img-responsive" /></a> <a href="javascript:void(0);"
					onclick="load('인테리어')"><strong>인테리어</strong></a>
			</div>
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="javascript:void(0);" onclick="load('화장실')"><img
					src="../resources/imgs/main/gridButton/화장실.png" alt=""
					class="img-responsive" /></a> <a href="javascript:void(0);"
					onclick="load('화장실')"><strong>화장실</strong></a>
			</div>
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="javascript:void(0);" onclick="load('사무실')"><img
					src="../resources/imgs/main/gridButton/사무실.png" alt=""
					class="img-responsive" /></a> <a href="javascript:void(0);"
					onclick="load('사무실')"><strong>사무실</strong></a>
			</div>
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="javascript:void(0);" onclick="load('천장')"><img
					src="../resources/imgs/main/gridButton/천장.png" alt=""
					class="img-responsive" /></a> <a href="javascript:void(0);"
					onclick="load('천장')"><strong>천장</strong></a>
			</div>
			<div class="col-lg-1 col-md-2 col-sm-3 col-xs-4 text-center">
				<a href="javascript:void(0);" onclick="load('공구')"><img
					src="../resources/imgs/main/gridButton/공구.png" alt=""
					class="img-responsive" /></a> <a href="javascript:void(0);"
					onclick="load('공구')"><strong>공구</strong></a>
			</div>


		</div>
	</div>


	<div class="container-fluid">


		<div class="row">

			<!-- 여기에 이미지를 불러옵니다 -->
			<div class="col-xs-12" id="content">
				<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2"
					style="padding: 0px 0px 0px 0px">
					<a data-toggle="modal" data-target="#modal-0"><img
						src="../resources/imgs/main/cube1.jpg"
						class="img-responsive hotDealImg" /></a>
				</div>
				<div class="modal fade" id="modal-0" tabindex="-1" role="dialog"
					aria-labelledby="myLargeModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-body">
								<div class="row">
									<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
										<img src="../resources/imgs/main/cube1.jpg"
											class="img-responsive" />
									</div>
									<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
										<hr />
										<h3>
											<a href="">아이유는 아름답습니다, 부정할 수 없는 진실이죠</a>
										</h3>
										<hr />
										<div class="col-lg-8 col-md-8 hidden-sm hidden-xs">
											<label>셀러닉네임:프리메이드</label><br /> <label>셀러아이디:yoonsung</label><br />
											<label>셀러등급:1</label><br /> <label>상품평가점수:4199</label><br />
											<label>배송비:무료</label><br /> <label>리뷰수:2371</label><br />
										</div>
										<div class="col-lg-4 col-md-4 hidden-sm hidden-xs">
											<h4>65535krw</h4>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>


			</div>


		</div>

		<!-- bxSlider - 차후에 6개로 구현 -->
		<div class="row">
			<div class="col-sm-12">오늘의 추천</div>
			<div class="col-sm-12" id="bxFirst"
				style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px; border: 0px 0px 0px 0px;">
				<ul class="bxslider">
					<li><img src="../resources/imgs/main/bx1.jpg" alt=""
						class="img-responsive bxImg" /></li>
					<li><img src="../resources/imgs/main/bx2.jpg" alt=""
						class="img-responsive bxImg" /></li>
					<li><img src="../resources/imgs/main/bx3.jpg" alt=""
						class="img-responsive bxImg" /></li>
				</ul>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12">뜨는 상품</div>
		</div>
	</div>



	<jsp:include page="template/footer.jsp" />
</body>

</html>