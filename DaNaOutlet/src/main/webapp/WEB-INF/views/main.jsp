<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
	<title>Home</title>
	<!-- http://apis.skplanetx.com/11st/v2/common/products?version={version}&page={page}&count={count}&searchKeyword={searchKeyword}&sortCode={sortCod -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.js"></script>
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

	
	<script>
	var datas;
	var products;
	 
	$(function(){	
	
		  //<![CDATA[
		    // 사용할 앱의 JavaScript 키를 설정해 주세요.
		    Kakao.init('1ed0a4ca651380fc768bf01eb21201e5');
		    // 카카오 로그인 버튼을 생성합니다.
		    Kakao.Auth.createLoginButton({
		      container: '#kakao-login-btn',
		      success: function(authObj) {
		        alert(JSON.stringify(authObj));
		      },
		      fail: function(err) {
		         alert(JSON.stringify(err));
		      }
		    });
		  //]]>
		
	
		$('#btn').on('click',function(){
			$('ul').remove();

			$.ajax({			
				'url': 'http://apis.skplanetx.com/11st/v2/common/products',			
				'data': {			
					'version':'1',
					'searchKeyword':$('#productSearch').val()+",가구",
					'option':'Categories',
					'appKey': '831b2c9b-12a4-3b28-a338-a5832c3ef3dd'
			},
				'success':function(data){
					datas=data;
					products=data.childNodes[0].childNodes[1];
					for(var i=1;i<products.childElementCount;i++){
						$('#test').append('<div id="proView"><ul><li>'+
									   '상품코드:'+products.childNodes[i].childNodes[0].firstChild.wholeText+'</li><li>'+
									   '상품이름:'+products.childNodes[i].childNodes[1].firstChild.wholeText+'</li><li>'+
									   '상품가격:'+products.childNodes[i].childNodes[2].firstChild.wholeText+'원</li><li>'+
									   '상품이미지:<img src="'+products.childNodes[i].childNodes[10].firstChild.wholeText+'"></li><li>'+
									   '셀러닉네임:'+products.childNodes[i].childNodes[17].firstChild.wholeText+'</li><li>'+
									   '셀러아이디:'+products.childNodes[i].childNodes[18].firstChild.wholeText+'</li><li>'+
									   '셀러등급:'+products.childNodes[i].childNodes[19].firstChild.wholeText+'</li><li>'+
									   '상품평가점수:'+products.childNodes[i].childNodes[20].firstChild.wholeText+'</li><li>'+
									   '배송비:'+products.childNodes[i].childNodes[23].firstChild.wholeText+'</li><li>'+
									   '리뷰수:'+products.childNodes[i].childNodes[24].firstChild.wholeText+'</li><li>'+
									   '구매만족도:'+products.childNodes[i].childNodes[25].firstChild.wholeText+'</li><li>'+
									   '미성년자판매여부:'+products.childNodes[i].childNodes[26].firstChild.wholeText+'</li><li>'+
									   '할인:'+products.childNodes[i].childNodes[26].childNodes[0].wholeText+'</li></ul></div>'						   
									   				   
									   )
						
					}
									
					
				},
				'error':function(data){
					alert("에러");
				}
				
				
			}
					);
		
		});
		
		
		
	});
	
	</script>

</head>
<body>
<h1>
	Hello world!  
</h1>

<a href="join">회원가입</a>
<a id="kakao-login-btn"></a>
<a href="http://developers.kakao.com/logout"></a>
<div id="test">	
	<label for="productSearch">상품검색</label>
	<input type="text" id="productSearch" name="productSearch"/>
	<button id="btn">검색</button>
</div>


</body>
</html>
