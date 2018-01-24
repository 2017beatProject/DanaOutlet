<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.js"></script>
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
	var loadPage = 1;
	var loaded = true;
	var loadedNum;
	// 4c3dab31-521e-368c-86db-a60223eb7e22 요한
	// 831b2c9b-12a4-3b28-a338-a5832c3ef3dd 민건
	var lists = [];
	$("input[name='confirm']:checked").each(function(i) { //jQuery로 for문 돌면서 check 된값 배열에 담는다
		lists.push($(this).val());

	});

	$.ajax({
		'url' : 'http://localhost:8080/search',
		type : "GET",
		data : {
			'confirm' : lists
		},
		contentType : "application/x-www-form-urlencoded;charset=utf-8", //한글 깨짐 방지
		cache : false,
		success : function(data) {
		}
	});

	var loadList = function(num) {
		$
				.ajax({
					'url' : 'http://apis.skplanetx.com/11st/v2/common/products',
					'data' : {
						'version' : '1',
						'searchKeyword' : $('#productSearch').val() + ",가구",
						'option' : 'Categories',
						'page' : loadPage,
						'appKey' : '4c3dab31-521e-368c-86db-a60223eb7e22'
					},
					'success' : function(data) {
						console.log(data);
						datas = data;
						products = data.childNodes[0].childNodes[1];
						// alert(num);
						loadedNum = products.childNodes.length;
						for (var i = num; i < num + 5; i++) { //products.childElementCount
							$('#content')
									.append(
											'<li id="productList"><div class="row">'
													+ '<div class="col-sm-2"><a href="' + // 상품 이미지 div
							products.childNodes[i].childNodes[21].firstChild.wholeText + '"><img src="' + // url
							products.childNodes[i].childNodes[10].firstChild.wholeText + '" class="img-thumbnail" ></a></div>'
													+ // 이미지에 링크
													'<div class="col-sm-7"><h3><a href="' +
							products.childNodes[i].childNodes[21].firstChild.wholeText + '">'
													+ // 상품명
													products.childNodes[i].childNodes[1].firstChild.wholeText
													+ '</a></h3><br/>'
													+ // 상품명 /div
													'<b>셀러닉네임 : </b>'
													+ products.childNodes[i].childNodes[17].firstChild.wholeText
													+ '<br/>'
													+ '<b>셀러아이디 : </b>'
													+ '<strong>'
													+ products.childNodes[i].childNodes[18].firstChild.wholeText
													+ '</strong>'
													+ '<br/>'
													+ '<b>셀러등급 : </b><span>'
													+ products.childNodes[i].childNodes[19].firstChild.wholeText
													+ '</span><br/>'
													+ '<b>상품평가점수 : </b>'
													+ products.childNodes[i].childNodes[20].firstChild.wholeText
													+ '<br/>'
													+ '<b>할인:</b>'
													+ products.childNodes[i].childNodes[26].childNodes[0].wholeText
													+ '<br/>'
													+ '<b>배송비 : </b>'
													+ products.childNodes[i].childNodes[23].firstChild.wholeText
													+ '<br/>'
													+ '<b>리뷰수 : </b>'
													+ products.childNodes[i].childNodes[24].firstChild.wholeText
													+ '</div><div class="col-sm-3"><label for="">'
													+ '<br/><dd><br/><br/><br/><br/>'
													+ products.childNodes[i].childNodes[2].firstChild.wholeText
													+ '</dd></label><label for="">원</label><br/><br/><br/><br/><br/><br/><br/><br/><br/></li>'
													+ '<br/>'
													+ '<div style="border-bottom: thick;"></div>'
													+ '<br/>' + '<br/>'
									// 상품가격
									/*'구매만족도:' + products.childNodes[i].childNodes[25].firstChild.wholeText + '' +
									'미성년자판매여부:' + products.childNodes[i].childNodes[26].firstChild.wholeText + '' +
									 */
									);
						}
						;
					},
					'error' : function(data) {
						console.log("에러");
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
		if (loaded && $(window).scrollTop() + 1000 >= $(document).height()) { // 스크롤이 끝까지 왔으면
			loaded = false; // 아직 로딩 전인 것이고
			setTimeout(function() { // 0.5초 이후에 실행하는데
				num += 5; // 로딩할 숫자는 이정도이고
				if (num >= 50) { // 50개를 이미 불러왔으면
					loadPage += 1; // 다음 페이지로 넘어가서
					num = 1; // 다음 페이지의 첫번째 것을 불러와야 하니까
				}
				loaded = true; // 로딩 후인 것으로 바꾼다
				loadList(num); // 이제 로딩하자
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

h1 {
	text-align: center;
	font-family: "Helvetica Neue", Times, serif;
}

#search {
	float: right;
}

span {
	color: purple;
}

a {
	text-decoration: none !important;
	color: black;
}

dd {
	color: blue;
}

strong {
	color: green;
}

#productList {
	padding: 5px 0px 5px 5px;
	margin-bottom: 5px;
	border-bottom: 1px solid #cccc;
}
</style>
</head>

<body>
	<jsp:include page="template/navigation.jsp" flush="false" />

	<h1>검 색 페 이 지</h1>
	<br />
	<!-- <a href="join">회원가입</a> -->
	<div class="container">
		거실<input type="checkbox" name="confirm" value="거실"> &nbsp; 공부방<input
			type="checkbox" name="confirm" value="공부방">&nbsp; 침실<input
			type="checkbox" name="confirm" value="침실">&nbsp; 주방<input
			type="checkbox" name="confirm" value="주방"> &nbsp; 유아가구<input
			type="checkbox" name="confirm" value="유아가구">&nbsp; 소품<input
			type="checkbox" name="confirm" value="소품">&nbsp; 패브릭<input
			type="checkbox" name="confirm" value="패브릭"> &nbsp; 인테리어<input
			type="checkbox" name="confirm" value="인테리어">&nbsp; 화장실<input
			type="checkbox" name="confirm" value="화장실">&nbsp; 사무실<input
			type="checkbox" name="confirm" value="사무실"> &nbsp; 천장<input
			type="checkbox" name="confirm" value="천장">&nbsp; 공구<input
			type="checkbox" name="confirm" value="공구">
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div class="form-inline">
					<div class="form-group" id="search">
						<!--<label for="productSearch">상품검색</label>-->
						<input type="text" id="productSearch" name="productSearch" />
						<button id="btn" class="btn btn-default">검색</button>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-12">&nbsp;</div>
		<div class="col-sm-9">
			<ul id="content">
				<!-- 여기에 검색결과를 불러옵니다 -->
			</ul>
		</div>
		<div class="col-sm-3">
			<jsp:include page="template/bxslider.jsp" flush="false" />
		</div>
	</div>
	<jsp:include page="template/footer.jsp" flush="false" />
</body>

</html>