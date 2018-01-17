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
</script>
<style>
ul {
	list-style: none;
}

li {
	margin-top: 5px;
}

@media ( max-width : 800px) {
	.img-thumbnail {
		height: 100px;
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
	<jsp:include page="../template/navigation.jsp" flush="false" />
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

						<c:forEach items="${adminList}" var="bean">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#content-${bean.dpgNum }"> ${bean.dpgTitle } </a>
									</h4>
								</div>
								<div id="content-${bean.dpgNum }"
									class="panel-collapse collapse">
									<div class="panel-body">
										<c:choose>
											<c:when test="${bean.dpgImgLink eq ''}">
											</c:when>
											<c:when test="${bean.dpgImgLink eq null}">
											</c:when>
											<c:otherwise>
												<img src="../resources/imgs/dpgimgs/${bean.dpgImgLink}"
													class="img-responsive">
											</c:otherwise>
										</c:choose>
										<p>${bean.dpgContent }</p>
									</div>
								</div>
							</div>
						</c:forEach>



					</div>
				</div>
			</div>
			<!-- 공지사항 끝 -->

			<div class="row">
				<div class="col-sm-4">
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
				<div class="col-sm-4">
					<div class="panel panel-warning">
						<div class="panel-heading">
							<h3 class="panel-title">이미지 있는 게시판</h3>
						</div>
						<div class="panel-body">
							<ul class="list-group">
								<c:forEach items="${imgList }" var="bean">
									<li class="list-group-item">
										<div class="row">
											<div class="col-sm-6">
												<img src="../resources/imgs/dpgimgs/${bean.dpgImgLink }"
													alt="" class="img-thumbnail" />
											</div>
											<div class="col-sm-6">${bean.dpgTitle }</div>
										</div>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>

				</div>
				<div class="col-sm-4">
					<div class="panel panel-success">
						<div class="panel-heading">
							<h3 class="panel-title">게시판</h3>
						</div>
						<div class="panel-body">
							<table class="table table-hover">
								<tr>
									<th>제목</th>
									<th class="hidden-xs">작성자</th>
								</tr>
								<c:forEach items="${list }" var="bean">
									<tr>
										<td>${bean.dpgTitle }</td>
										<td class="hidden-xs">${bean.dpgWriter }</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>

				</div>
			</div>
			<div class="row">&nbsp;</div>
			<div class="row">
				<div class="col-sm-7">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title">베스트</h3>
						</div>
						<div class="panel-body">
							<ul class="list-group">
								<c:forEach items="${bestList}" var="bean">
									<li class="list-group-item">
										<div class="row">
											<div class="col-sm-3">
												<img src="../resources/imgs/dpgimgs/${bean.dpgImgLink}"
													alt="" class="img-thumbnail" />
											</div>
											<div class="col-sm-9">${bean.dpgTitle }</div>
										</div>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>

				</div>
				<div class="col-sm-5">
					광고 배너(정적 이미지) <img src="../resources/imgs/hotdealimgs/soju06.jpg"
						alt="" class="img-responsive" />
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
