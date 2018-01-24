<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.js"></script>
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

	var loadList = function(num) {
		$
				.ajax({
					'url' : 'http://apis.skplanetx.com/11st/v2/common/products',
					'data' : {
						'version' : '1',
						'searchKeyword' : $('#productSearch').val() + ",가구",
						'option' : 'Categories',
						'page' : loadPage,
						'appKey' : '831b2c9b-12a4-3b28-a338-a5832c3ef3dd'
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
											'<hr /><div class="row">'
													+ '<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4"><a href="' + // 상품 이미지 div
							products.childNodes[i].childNodes[21].firstChild.wholeText + '"><img src="' + // url
							products.childNodes[i].childNodes[14].firstChild.wholeText + '" class="img-responsive img-rounded" ></a></div>'
													+ '<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">'
													+ '<div class="col-xs-12"><hr class="visible-xs"/><a href="' 
															+ products.childNodes[i].childNodes[21].firstChild.wholeText 
															+ '"><h4 style="margin-top:0px;">'
													+ products.childNodes[i].childNodes[1].firstChild.wholeText
													+ '</h4></a><hr/>'
													+ '</div>' // 모두 차지하는 제목 div 종료
													+ '<div class="col-xs-8">'
													+ '셀러닉네임 : '
													+ products.childNodes[i].childNodes[17].firstChild.wholeText
													+ '<br/>'
													+ '셀러아이디 : '
													+ '<strong>'
													+ products.childNodes[i].childNodes[18].firstChild.wholeText
													+ '</strong>'
													+ '<br/>'
													+ '셀러등급 : <span>'
													+ products.childNodes[i].childNodes[19].firstChild.wholeText
													+ '</span><br/>'
													+ '상품평가점수 : '
													+ products.childNodes[i].childNodes[20].firstChild.wholeText
													+ '<br/>'
													+ '할인:'
													+ products.childNodes[i].childNodes[26].childNodes[0].wholeText
													+ '<br/>'
													+ '배송비 : '
													+ products.childNodes[i].childNodes[23].firstChild.wholeText
													+ '<br/>'
													+ '리뷰수 : '
													+ products.childNodes[i].childNodes[24].firstChild.wholeText
													+ '</div>' // 상품정보 div 종료
													/* + '</div>' // 제목 아래 div 종료 */
													+ '<div class="col-xs-4">'
													+ '<h4>'
													+ products.childNodes[i].childNodes[2].firstChild.wholeText
															.toString()
															.replace(
																	/\B(?=(\d{3})+(?!\d))/g,
																	",")
													+ 'krw</h4>' + '</div>'
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
		$("#productSearch").keyup(function(e) {
			if (e.keyCode == 13) {
				search();
			}
		});
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

</head>

<body>
	<jsp:include page="template/navigation.jsp" flush="false" />

	<div class="jumbotron">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<p>삶, 우주, 모든 것의 시작이 되는 우리의 집, 그 곳을 채우는 가구. 그 곳에 조금 더 가깝게 다가서고자
						합니다.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
					<strong>당신에게 최적화된 가구를 찾기 시작할 때, 언제나 당신 곁에</strong><img
						src="../resources/imgs/dalogo.png" alt="다나n아울렛&#8482;"
						width="150px">
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
					<input type="text" id="productSearch" name="productSearch" />
					<button id="btn" class="btn btn-default">검색</button>
				</div>

			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-sm-9">
				<div id="content">
					<!-- 여기에 검색결과를 불러옵니다 -->
				</div>
			</div>
			<div class="col-sm-3">
				<jsp:include page="template/bxslider.jsp" flush="false" />
			</div>
		</div>
	</div>

	<jsp:include page="template/footer.jsp" flush="false" />
</body>

</html>