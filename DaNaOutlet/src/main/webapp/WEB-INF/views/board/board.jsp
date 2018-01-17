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
<style>
ul {
	list-style: none;
}

li {
	margin-top: 5px;
}

@media ( max-width : 800px) {
	.img-thumbnail {
		width: 150px;
	}
}

#footer {
	top: 450px;
	right: 15px;
	background-color: blue;
	width: 50px;
	height: 50px;
	position: fixed;
	margin: 0px;
	text-decoration: none;
}

#topper {
	top: 400px;
	right: 15px;
	background-color: white;
	width: 50px;
	height: 50px;
	position: fixed;
	margin: 0px;
	text-decoration: none;
}

#topper>a {
	text-decoration: none;
}

#footer>a {
	text-decoration: none;
}
</style>
</head>

<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"> <img
					src="resources/imgs/logo.png" alt="" height="30px">
				</a>
			</div>

			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="">메인</a></li>
					<li><a href="#">가구 분류</a></li>
					<li><a href="#">게시판</a></li>
					<li><a href="#">이벤트</a></li>
					<li><a class="btn btn-default" data-toggle="collapse"
						href="#collapseExample" aria-expanded="false"
						aria-controls="collapseExample" placeholder=".col-xs-4">검색</a></li>
				</ul>
				<div class="collapse" id="collapseExample">
					<div class="well">
						<input type="text" class="form-control" placeholder="Text input">
					</div>
				</div>
			</div>
		</div>
	</nav>
	<div class="container-fluid">
		<!-- 게시판 링크들 나열 시작 -->
		<div class="row">
			<div class="col-sm-12">
				<strong>각각의 게시판 링크들이 여기에 들어갑니다</strong> Lorem ipsum dolor sit amet,
				consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
				labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
				exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat. Duis aute irure dolor in reprehenderit in voluptate velit
				esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
				cupidatat non proident, sunt in culpa qui officia deserunt mollit
				anim id est laborum.
			</div>
		</div>
		<!-- 게시판 링크들 나열 끝 -->
		<div class="row">&nbsp;</div>
	</div>
	<!-- 게시판들 그리드 시작 -->
	<div class="container">
		<!-- 공지사항 시작 -->
		<div class="row">
			<div class="col-sm-12">
				<div class="container">
					<div class="panel-group" id="accordion" role="tablist"
						aria-multiselectable="false">
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingTwo">
								<h4 class="panel-title">
									<a class="collapsed" data-toggle="collapse"
										data-parent="#accordion" href="#content-1"
										aria-expanded="true" aria-controls="collapseOne"> 공지사항 </a>
								</h4>
							</div>
							<div id="content-1" class="panel-collapse collapse in"
								role="tabpanel" aria-labelledby="headingOne">
								<div class="panel-body">
									<h3>여기에 공지사항이 들어갑니다</h3>
								</div>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingTwo">
								<h4 class="panel-title">
									<a class="collapsed" data-toggle="collapse"
										data-parent="#accordion" href="#content-2"
										aria-expanded="false" aria-controls="collapseTwo">
										Collapsible Group Item #2 </a>
								</h4>
							</div>
							<div id="content-2" class="panel-collapse collapse"
								role="tabpanel" aria-labelledby="headingTwo">
								<div class="panel-body">
									<img src="../resources/imgs/hotdealimgs/soju01.jpg" alt=""
										class="img-responsive" /><br />
									<h3>아이유는 예쁩니다, 이것은 사실이죠</h3>
								</div>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingThree">
								<h4 class="panel-title">
									<a class="collapsed" data-toggle="collapse"
										data-parent="#accordion" href="#content-3"
										aria-expanded="false" aria-controls="collapseThree">
										Collapsible Group Item #3 </a>
								</h4>
							</div>
							<div id="content-3" class="panel-collapse collapse"
								role="tabpanel" aria-labelledby="headingThree">
								<div class="panel-body">Anim pariatur cliche
									reprehenderit, enim eiusmod high life accusamus terry
									richardson ad squid. 3 wolf moon officia aute, non cupidatat
									skateboard dolor brunch. Food truck quinoa nesciunt laborum
									eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on
									it squid single-origin coffee nulla assumenda shoreditch et.
									Nihil anim keffiyeh helvetica, craft beer labore wes anderson
									cred nesciunt sapiente ea proident. Ad vegan excepteur butcher
									vice lomo. Leggings occaecat craft beer farm-to-table, raw
									denim aesthetic synth nesciunt you probably haven't heard of
									them accusamus labore sustainable VHS.</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 공지사항 끝 -->

			<div class="row">
				<div class="col-sm-4">

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
								<img src="../resources/imgs/hotdealimgs/soju02.jpg" alt=""/>
								<div class="carousel-caption">...</div>
							</div>
							<div class="item">
								<img src="../resources/imgs/hotdealimgs/soju03.jpg" alt=""/>
								<div class="carousel-caption">...</div>
							</div>
							<div class="item">
								<img src="../resources/imgs/hotdealimgs/soju04.jpg" alt=""/>
								<div class="carousel-caption">...</div>
							</div>
						</div>

						<!-- Controls -->
						<a class="left carousel-control" href="#carousel-example-generic"
							role="button" data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="right carousel-control"
							href="#carousel-example-generic" role="button" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right"
							aria-hidden="true"></span> <span class="sr-only">Next</span>
						</a>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">이미지 있는 게시판</h3>
						</div>
						<div class="panel-body">
							<ul class="list-group">
								<li class="list-group-item">
									<div class="row">
										<div class="col-sm-6">
											<img src="../resources/imgs/hotdealimgs/soju01.jpg" alt=""
												class="img-thumbnail" />
										</div>
										<div class="col-sm-6">Lorem ipsum dolor sit amet,
											consectetur adipiscing elit,</div>
									</div>
								</li>
								<li class="list-group-item">
									<div class="row">
										<div class="col-sm-6">
											<img src="../resources/imgs/hotdealimgs/soju01.jpg" alt=""
												class="img-thumbnail" />
										</div>
										<div class="col-sm-6">Lorem ipsum dolor sit amet,
											consectetur adipiscing elit,</div>
									</div>
								</li>
							</ul>
						</div>
					</div>

				</div>
				<div class="col-sm-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">게시판</h3>
						</div>
						<div class="panel-body">
							<table class="table table-hover">
								<tr>
									<th>제목</th>
									<th class="hidden-xs">작성자</th>
								</tr>
								<tr>
									<td>Lorem ipsum dolor sit amet, consectetur adipiscing
										elit,</td>
									<td class="hidden-xs">BxSlider</td>
								</tr>
								<tr>
									<td>Lorem ipsum dolor sit amet, consectetur adipiscing
										elit,</td>
									<td class="hidden-xs">BxSlider</td>
								</tr>
								<tr>
									<td>Lorem ipsum dolor sit amet, consectetur adipiscing
										elit,</td>
									<td class="hidden-xs">BxSlider</td>
								</tr>
							</table>
						</div>
					</div>

				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<h2>베스트</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-7">
					<h3>최근 올라온 게시글 - 일정 조회수 이상</h3>
					<ul>
						<li>
							<div class="row">
								<div class="col-sm-3">
									<img src="../resources/imgs/hotdealimgs/soju04.jpg" alt=""
										class="img-thumbnail" />
								</div>
								<div class="col-sm-9">Lorem ipsum dolor sit amet,
									consectetur adipiscing elit,</div>
							</div>
						</li>
						<li>
							<div class="row">
								<div class="col-sm-3">
									<img src="../resources/imgs/hotdealimgs/soju04.jpg" alt=""
										class="img-thumbnail" />
								</div>
								<div class="col-sm-9">Lorem ipsum dolor sit amet,
									consectetur adipiscing elit,</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="col-sm-5">
					<h3>광고 배너(이미지)</h3>
					<img src="../resources/imgs/hotdealimgs/soju06.jpg" alt=""
						class="img-responsive" />
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<h2>댓글/답글</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<h3>최근 댓글</h3>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
					eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
					ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
					aliquip ex ea commodo consequat. Duis aute irure dolor in
					reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
					pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
					culpa qui officia deserunt mollit anim id est laborum.
				</div>
				<div class="col-sm-6">
					<h3>최근 답글</h3>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
					eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
					ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
					aliquip ex ea commodo consequat. Duis aute irure dolor in
					reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
					pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
					culpa qui officia deserunt mollit anim id est laborum.
				</div>
			</div>
			<div class="row">&nbsp;</div>
		</div>
	</div>
	<!-- <div id="footer">
		<a href="#">최근본상품</a>
	</div>
	<div id="topper">
		<a href=".navbar-header">△<br />Top
		</a>
	</div> -->
	<footer class="footer">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-12">
					<strong>여기에 footer가 들어갈 예정입니다</strong> Lorem ipsum dolor sit amet,
					consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
					labore et dolore magna aliqua. Ut enim ad minim veniam, quis
					nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Duis aute irure dolor in reprehenderit in voluptate
					velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
					occaecat cupidatat non proident, sunt in culpa qui officia deserunt
					mollit anim id est laborum.
				</div>
			</div>
		</div>
	</footer>

</body>

</html>
