<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/bootstrap-theme.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/jquery-1.12.4.js"></script>
<script src="resources/js/jquery.bxslider.js"></script>
<script src="resources/js/bootstrap.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.bxslider').bxSlider({
			auto : true,
			speed : 300,
			pause : 2000,
			mode : 'horizontal',
			autoControlls : true,
			pager : true,
			autoHover : true,
			controls : false
		});
	});
</script>
<style type="text/css">
body {
	align-content: center; 
	text-overflow: inherit; 
	text-align: center;
	text-decoration: none; 
	font-size: 12px; 
	padding-top: 70px; 
	overflow-x:hidden;   
}
 
#hotdeal>li>a{text-decoration : none; }
.caption>a{text-decoration : none; } 
.col-sm-3>a{text-decoration : none;}
 a{
 	color: black;
 }
#footer {
	top: 450px; 
	right: 15px;
	background-color: blue; 
	width: 50px;
	height: 50px;
	position: fixed; 
	margin: 0px;
	text-decoration : none;
}
#topper { 
	top: 400px;
	right: 15px;
	background-color: white;
	width: 50px;
	height: 50px;
	position: fixed;
	margin: 0px;
	text-decoration : none;
}
#topper >a{
text-decoration : none;
}
#footer>a{
text-decoration : none;
}
#hotdeal {
	list-style-type: none;
}
#hotdeal>li {
	display: inline;
}
  
#alittle {
	display: inline-block;
	text-align: left;
}  
#iconImg{
	display: none; 
}
h5{
	text-align: left;
}
 @media(max-width:575px) {
	#iconImg{
	display: block; 
	
	} 
	#iconImg2{
	float: left;
	}
} 
#hot{
	float: left;
}
</style>
</head> 
<body>

	<nav class="navbar navbar-default navbar-fixed-top"> 
		<div class="container">
		
 	<jsp:include page="./template/navigation.jsp"/> 
		
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button> 
				 <a class="navbar-brand" href="#"> 
				<img src="resources/imgs/logo.png" alt="" height="30px">
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
	<!-- bxslider start -->
	<div>
		<ul class="bxslider">
			<li>
				<div>
					<h5>1/3</h5>
				</div> <img src="resources/imgs/1.jpg" width="100%" />
			</li> 
			<li> 
				<div>
					<h5>2/3</h5>
				</div> <img src="resources/imgs/2.jpg" width="100%" />
			</li>
			<li>
				<div>
					<h5>3/3</h5>
				</div> <img src="resources/imgs/3.jpg" width="100%" />
			</li>
		</ul>
	</div>
	<!-- bxslider end -->
	<!-- menubar start -->
	<div class="container">
		<div class="row">
			<div class="col-sm-3 col-xs-3">
				<a href="#"><img alt="" src="resources/imgs/t1.png" class="img-thumbnail" id="iconImg2"><br /><label id="iconImg">자동차</label></a>
			</div>
			<div class="col-sm-3 col-xs-3">
				<a href="#"><img alt="" src="resources/imgs/t2.png" class="img-thumbnail" id="iconImg2"><br /><label id="iconImg">자동차</label></a>
			</div>
			<div class="col-sm-3 col-xs-3">
				<a href="#"><img alt="" src="resources/imgs/t3.png" class="img-thumbnail" id="iconImg2"><br /><label id="iconImg">자동차</label></a>
			</div>
			<div class="col-sm-3 col-xs-3">
				<a href="#"><img alt="" src="resources/imgs/t4.png" class="img-thumbnail" id="iconImg2"><br /><label id="iconImg">자동차</label></a>
			</div>
			
		</div> 
		<div class="row">
			<div class="col-sm-3 col-xs-3">
				<a href="#"><img alt="" src="resources/imgs/t5.png" class="img-thumbnail" id="iconImg2"><br /><label id="iconImg">자동차</label></a>
			</div>
			<div class="col-sm-3 col-xs-3">
				<a href="#"><img alt="" src="resources/imgs/t6.png" class="img-thumbnail" id="iconImg2"><br /><label id="iconImg">자동차</label></a>
			</div>
			<div class="col-sm-3 col-xs-3">
				<a href="#"><img alt="" src="resources/imgs/t7.png" class="img-thumbnail" id="iconImg2"><br /><label id="iconImg">자동차</label></a>
			</div>
			<div class="col-sm-3 col-xs-3">
				<a href="#"><img alt="" src="resources/imgs/t8.png" class="img-thumbnail" id="iconImg2"><br /><label id="iconImg">자동차</label></a>
			</div> 
		</div> 
	</div>
	<!-- menubar end -->
	<!-- 쇼킹특가 -->
	<div class="navbar navbar-default" role="alert"><h3>쇼킹특가</h3></div>
	<!-- start -->
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-xs-6">
				<img src="resources/imgs/4.jpg" alt="...">
				<div class="caption">
					<a href="#">
						<h3>물건1</h3>
						<p>물건의 내용</p>
					</a>
				</div>
			</div>
			<div class="col-sm-6 col-xs-6">
				<img src="resources/imgs/3.jpg" alt="...">
				<div class="caption">
					<a href="#">
						<h3>물건2</h3>
						<p>물건의 내용</p>
					</a>
				</div>
			</div>
		</div>
	</div>
	<!-- end -->

	<!-- 쇼킹특가 end -->
	<!-- 핫딜 지금뜨는상품 -->
	<div>
		<div class="navbar navbar-default" role="alert"><h3>핫딜 지금 뜨는 상품</h3></div>
		<ul id="hotdeal">
			<li id="hot"><a href="#"><img alt="..." src="resources/imgs/3.jpg">
				<div id="alittle">
					<span>티몬 </span>
					<p>유가네 닭갈비 1+1/볶음밥 쿠폰적용가능</p>
					<div>
						<span>2,622개 구매</span> | <span>무료배송</span>
					</div>
					<span><strong>10,710</strong>원</span>
				</div> </a>
			</li>
		</ul>
	</div> 
	<!-- dd -->
	<div class="container">
		<div class="row">
			<div class="col-sm-5 col-xs-5">
				<img src="resources/imgs/4.jpg" alt="...">
				
			</div>
			<div class="col-sm-7 col-xs-7">
				<div id="alittle">
				<br/><br/>
					<span>티몬 </span>
					<p>유가네 닭갈비 1+1/볶음밥 쿠폰적용가능</p>
					<div>
						<span>2,622개 구매</span> | <span>무료배송</span>
					</div>
					<span><strong>10,710</strong>원</span>
				</div> 
			</div>
		</div>
	</div>
	<!-- dddd -->
	<!-- 핫딜 지금뜨는상품 end -->
	<div></div>
	<!--footer  -->
	<div id="footer">
		<a href="#">최근본상품</a>
	</div>
	<div id="topper">
		<a href=".navbar-header">△<br />Top
		</a>
	</div>
</body>

</html>