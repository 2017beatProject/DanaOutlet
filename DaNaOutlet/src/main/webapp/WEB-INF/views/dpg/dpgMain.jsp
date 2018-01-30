<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.js"></script>
<title>DPG 메인</title>
<link rel="stylesheet" href="../resources/css/bootstrap.css">
<link rel="stylesheet" href="../resources/css/bootstrap-theme.css">
<script src="../resources/js/jquery.min.js"></script>
<script src="../resources/js/jquery-1.12.4.js"></script>
<script src="../resources/js/jquery.bxslider.js"></script>
<script src="../resources/js/bootstrap.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="../resources/imgs/favicon.png" />
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
		/* $(document).ready(
				function() {
					// $('#reviewList').css('width', $(window).width() - 50);
					if ($('#bxImgForHeight').outerHeight() > 288) {
						$('#reviewList').css('height',
								$('#bxImgForHeight').outerHeight());
						$('#boardList').css('height',
								$('#bxImgForHeight').outerHeight());
						$(window).resize(
								function() {
									// $('.test').css('width', $(window).width() - 50);
									$('#reviewList').css(
											'height',
											$('#bxImgForHeight')
													.outerHeight());
									$('#boardList').css(
											'height',
											$('#bxImgForHeight')
													.outerHeight());
								});
					} else {
						$('#reviewList').css('height', 350);
						// $('#boardList').css('height', 350);
						$(window).resize(function() {
							// $('.test').css('width', $(window).width() - 50);
							$('#reviewList').css('height', 350);
							//$('#boardList').css('height', 290);
						});
					}
				}); */
	});
</script>
<style>
ul {
	list-style: none;
}
li {
	margin-top: 5px;
}
@media ( max-width : 768px) {
	.img-thumbnail {
		/* height: 40%px;
		width: 40%; */
		
	}
	/* .bxslider {
		display: none;
	} */
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
	<jsp:include page="../template/navigation.jsp" />
	<div class="container">
		<div class="row">&nbsp;</div>
	</div>
	<!-- 게시판들 그리드 시작 -->
	<div class="container">
		<!-- 공지사항 시작 -->
		<div class="row">
			<div class="col-sm-10 col-sm-offset-1">
				<div class="panel-group" id="accordion" role="tablist"
					aria-multiselectable="false">
					<c:forEach items="${adminList}" var="bean">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#content-${bean.dpgNum }"> <c:set var="text"
											value="${bean.dpgTitle}" /> <c:if
											test="${fn:length(text) lt 30}">
											${text }
									</c:if> <c:if test="${fn:length(text) ge 30}">
										${fn:substring(text,0,30)}...
									</c:if>
									</a>
								</h4>
							</div>
							<div id="content-${bean.dpgNum }" class="panel-collapse collapse">
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
	</div>
	<!-- <hr style="margin: 3px 3px 3px 3px; padding: 3px 3px 3px 3px;" /> -->
	<div class="well">
		<div class="container">

			<div class="row">
				<!-- bxSlider 광고판 삽입 -->
				<div class="col-sm-3 hidden-xs" style="padding-right: 10px"
					id="bxImgForHeight">
					<jsp:include page="../template/bxslider.jsp" flush="false" />
				</div>

				<!-- 리뷰게시판 -->
				<div class="col-sm-4"
					style="margin: 0px 0px 0px 0px; padding: 0px 0px 0px 0px;">
					<div class="panel panel-primary" id="reviewList">
						<div class="panel-heading">
							<h3 class="panel-title">
								<a href="/dpg/review?startNum=0">리뷰</a>
							</h3>
						</div>
						<div class="panel-body"
							style="margin: 0px 2px 2px 1px; padding: 0px 0px 0px 0px;">
							<ul class="list-group">
								<c:forEach items="${imgList }" var="bean">
									<li class="list-group-item">
										<div class="row ">
											<div class="col-sm-6 col-xs-3">
												<a href="../dpg/review/${bean.dpgNum}"><img
													src="../resources/imgs/dpgimgs/${bean.dpgImgLink }" alt=""
													class="img-responsive" /></a>
											</div>
											<div class="col-sm-6 col-xs-9"
												style="margin: 0px; padding: 0px;">
												<a href="../dpg/review/${bean.dpgNum}"> <span
													class="hidden-xs"> <c:set var="text"
															value="${bean.dpgTitle}" /> <c:if
															test="${fn:length(text) lt 12}">
														${text }
													</c:if> <c:if test="${fn:length(text) ge 12}">
														${fn:substring(text,0,12)}...
													</c:if>
												</span> <span class="visible-xs-block"> ${bean.dpgTitle } </span>
												</a>
											</div>
										</div>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>

				</div>

				<!-- 게시판 -->
				<div class="col-sm-5" style="padding-left: 10px">
					<div class="panel panel-primary" id="boardList">
						<div class="panel-heading">
							<h3 class="panel-title">
								<a href="/dpg/board?startNum=0">게시판</a>
							</h3>
						</div>
						<div class="panel-body">
							<table class="table table-hover"
								style="padding-bottom: 0px; margin-bottom: 0px;">
								<tr>
									<th>제목</th>
									<th class="hidden-xs">작성자</th>
								</tr>
								<%
									int boardTitleNum = 0;
								%>
								<c:forEach items="${list }" var="bean">
									<tr
										class="<%boardTitleNum += 1;
				if (boardTitleNum >= 6 && boardTitleNum <= 7) {%>visible-xs hidden-sm visible-md visible-lg<%} else if (boardTitleNum > 7) {%>visible-xs visible-lg hidden-sm hidden-md<%}%>">
										<td><a href="../dpg/board/${bean.dpgNum}"> <span
												class="hidden-xs"> <c:set var="text"
														value="${bean.dpgTitle}" /> <c:if
														test="${fn:length(text) lt 8}">
													${text }
												</c:if> <c:if test="${fn:length(text) ge 8}">
													${fn:substring(text,0,8)}...
												</c:if>
											</span> <span class="visible-xs-block"> ${bean.dpgTitle } </span>
										</a></td>
										<td class="hidden-xs">${bean.dpgWriter }</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- <hr style="margin: 3px 3px 3px 3px; padding: 3px 3px 3px 3px;" /> -->
	<div class="container">
		<!-- <div class="row">
			<div class="col-sm-12">&nbsp;</div>
		</div> -->
		<div class="row">
			<div class="col-sm-4" style="padding: 0px 5px 0px 5px;">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">베스트 리뷰</h3>
					</div>
					<div class="panel-body">
						<ul class="list-group">
							<c:forEach items="${bestList}" var="bean">
								<li class="list-group-item">
									<div class="row">
										<div class="col-sm-6 col-xs-3">
											<a href="../dpg/review/${bean.dpgNum}"> <img
												src="../resources/imgs/dpgimgs/${bean.dpgImgLink}" alt=""
												class="img-responsive" /></a>
										</div>
										<div class="col-sm-6 col-xs-9"
											style="margin: 0px; padding: 0px;">
											<a href="../dpg/review/${bean.dpgNum}"><c:set var="text"
													value="${bean.dpgTitle}" /> <c:if
													test="${fn:length(text) lt 21}">
											${text }
									</c:if> <c:if test="${fn:length(text) ge 21}">
										${fn:substring(text,0,21)}...
									</c:if></a>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>

			</div>
			<div class="col-sm-4" style="padding: 0px 5px 0px 5px;">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">베스트 게시글</h3>
					</div>
					<div class="panel-body" style="padding: 7px 2px 7px 2px;">
						<ul class="list-group">
							<c:forEach items="${bestNoneList}" var="bean">
								<li class="list-group-item"><a
									href="../dpg/board/${bean.dpgNum}"><c:set var="text"
											value="${bean.dpgTitle}" /> <c:if
											test="${fn:length(text) lt 17}">
											${text }
									</c:if> <c:if test="${fn:length(text) ge 17}">
										${fn:substring(text,0,17)}...
									</c:if></a></li>
							</c:forEach>
						</ul>
					</div>
				</div>

			</div>
			<div class="col-sm-4" style="padding: 0px 5px 0px 5px;">
				<img src="../resources/imgs/hotdealimgs/soju06.jpg" alt=""
					class="img-responsive" />
			</div>
		</div>

		<!-- <div class="row">&nbsp;</div> -->
	</div>


	<jsp:include page="../template/footer.jsp" flush="false" />

</body>

</html>