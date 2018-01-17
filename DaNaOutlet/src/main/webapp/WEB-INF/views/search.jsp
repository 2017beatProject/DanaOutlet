<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>

<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>검색</title>
	<link rel="stylesheet" href="../resources/css/bootstrap.css">
	<link rel="stylesheet" href="../resources/css/bootstrap-theme.css">
	<script src="../resources/js/jquery.min.js"></script>
	<script src="../resources/js/jquery-1.12.4.js"></script>
	<script src="../resources/js/jquery.bxslider.js"></script>
	<script src="../resources/js/bootstrap.js"></script>

	<script>
		var datas;
		var products;
		var num = 1;
		var loaded = true;
		var loadedNum;


		// 4c3dab31-521e-368c-86db-a60223eb7e22 요한
		// 831b2c9b-12a4-3b28-a338-a5832c3ef3dd 민건
		var loadList = function(num) {
			$.ajax({
				'url': 'http://apis.skplanetx.com/11st/v2/common/products',
				'data': {
					'version': '1',
					'searchKeyword': $('#productSearch').val() + ",가구",
					'option': 'Categories',
					'page': '1',
					'appKey': '4c3dab31-521e-368c-86db-a60223eb7e22'
				},
				'success': function(data) {
					console.log(data);
					datas = data;
					products = data.childNodes[0].childNodes[1];
					// alert(num);
					loadedNum = products.childNodes.length;
					for (var i = num; i < num + 5; i++) { //products.childElementCount
						$('#content').append('<li id="productList"><div class="row">' +
							'<div class="col-sm-2"><a href="' + // 상품 이미지 div
							products.childNodes[i].childNodes[21].firstChild.wholeText + '"><img src="' + // url
							products.childNodes[i].childNodes[10].firstChild.wholeText + '" class="img-thumbnail" ></a></div>' + // 이미지에 링크
							'<div class="col-sm-7"><a href="' +
							products.childNodes[i].childNodes[21].firstChild.wholeText + '">' + // 상품명
							products.childNodes[i].childNodes[1].firstChild.wholeText + '</a><br/>' + // 상품명 /div
							'셀러닉네임:' + products.childNodes[i].childNodes[17].firstChild.wholeText + '<br/>' +
							'셀러아이디:' + products.childNodes[i].childNodes[18].firstChild.wholeText + '<br/>' +
							'셀러등급:' + products.childNodes[i].childNodes[19].firstChild.wholeText + '<br/>' +
							'상품평가점수:' + products.childNodes[i].childNodes[20].firstChild.wholeText + '<br/>' +
							'배송비:' + products.childNodes[i].childNodes[23].firstChild.wholeText + '<br/>' +
							'리뷰수:' + products.childNodes[i].childNodes[24].firstChild.wholeText +
							'</div><div class="col-sm-3"><label for="">' + '<br/>' +
							products.childNodes[i].childNodes[2].firstChild.wholeText + '</label><label for="">원</label></div></li>' // 상품가격
							/*'구매만족도:' + products.childNodes[i].childNodes[25].firstChild.wholeText + '' +
							'미성년자판매여부:' + products.childNodes[i].childNodes[26].firstChild.wholeText + '' +
							'할인:' + products.childNodes[i].childNodes[26].childNodes[0].wholeText + */
						);
					};
				},
				'error': function(data) {
					alert("에러");
				}
			});
		};
		var search = function() {
			$('#content').empty(); //remove();
			loadList(num);
		};
		$(function() {
			$('#btn').on('click', search);
		});
		$(document).ready(function() {
			search();
		});
		$(window).scroll(function() {

			if (loaded && $(window).scrollTop() + 1000 >= $(document).height()) {
				loaded = false;
				setTimeout(function() {
					num += 5;

					if (loadedNum >= num + 5) {
						loaded = true;
					}
					loadList(num);
				}, 500)
			}
		});
	</script>
	<style>
		ul {
			list-style: none;
		}

		li {
			margin-top: 5px;
		}

		#pageNumber {
			display: inline;
		}
	</style>
</head>

<body>
	<h1>
		검색페이지
	</h1>
	<a href="join">회원가입</a>

	<div class="container">
		<div class="row">
			<div class="col-xs-12" >
				<div class="form-inline">
					<div class="form-group">
						<!--<label for="productSearch">상품검색</label>-->
						<input type="text" id="productSearch" name="productSearch" />
						<button id="btn" class="btn btn-default">검색</button>
					</div>
				</div>
			</div>
		</div>
		<ul id="content">
			<!-- 여기에 검색결과를 불러옵니다 -->
		</ul>
	</div>

</body>

</html>
