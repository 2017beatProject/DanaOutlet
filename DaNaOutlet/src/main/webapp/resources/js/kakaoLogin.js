
function loginTool() {

	// 일반 로그인----------------------------
	$('#loginFrom').on('submit', function() {
		var param = {
			'loginId' : $('#loginId').val(),
			'loginPw' : $('#loginPw').val()
		}
		$.ajax({
			'url' : '/login',
			'type' : 'post',
			'data' : param,
			'success' : function(data) {	
				alert("로그인성공 : "+data);				
				window.location.reload("#");
			},
			'err' : function(data) {
				alert("로그인에러");
			}

		});
		return false;
	});
	
	// 카카오 로그인--------------------------------
	Kakao.init('b3f2db2221e0c7bfa2a895430e4df2a8');
	// 카카오 로그인 버튼을 생성.		
//	Kakao.Auth.createLoginButton({
//		'container' : '#kakao-login-btn',
//		'persistAccessToken' : false,
//		'persistRefreshToken' : false,
//		'size' : 'small',
//		'success' : function(authObj) {			
//			authKey = authObj.access_token;
//			Kakao.API.request({
//				url : '/v1/user/me',
//				success : function(res) {
//					resparam = res;			
//					param = {
//						'loginId' : res.id,
//						'nickName' : res.properties.nickname
//					};
//					
//					$.ajax({
//						'url' : '/loginKakao',
//						'type' : 'post',
//						'data' : param,
//						'success' : function(data) {
//							window.location.reload("#");			
//						},
//						'err' : function(data) {
//							alert("로그인에러");
//						}
//					});	
//					
//				},
//				fail : function(error) {
//					alert("카카오로그인에러");
//				}
//			});			
//		}		
//	});
}

// ---------------------------로그인여부확인

function loginCreate() {
	Kakao.Auth.loginForm({
		'persistAccessToken' : false,
		'persistRefreshToken' : false,
		'success' : function(authObj) {			
			authKey = authObj.access_token;
			Kakao.API.request({
				url : '/v1/user/me',
				success : function(res) {
					resparam = res;			
					param = {
						'loginId' : res.id,
						'nickName' : res.properties.nickname
					};
					
					$.ajax({
						'url' : '/loginKakao',
						'type' : 'post',
						'data' : param,
						'success' : function(data) {
							window.location.reload("#");			
						},
						'err' : function(data) {
							alert("로그인에러");
						}
					});	
					
				},
				fail : function(error) {
					alert("카카오로그인에러");
				}
			});			
		}
		
	});
	}


//// f로그인생성




function loginChkTool(){
	$('#loginchk').on(
		'click',
		function() {
			Kakao.Auth.getStatus(function(statusObj) {
				console.log(statusObj);
				user = statusObj;
				if (statusObj.user != null) {
					console.log(statusObj.status + ":"
							+ statusObj.user.properties.nickname);
				} else {
					console.log("카카오로그아웃상태임");
				}
			});
 
		});// 로그인여부확인 end
}

function logoutTool(){
	$('#logout').on('click', function() {

		Kakao.Auth.logout(function() {
			$.ajax({
			 	'url' : '/logout',
				'type' : 'post',
				'data' : param,
				'success' : function(data) {					
					alert(data);				
					window.location.reload("#");
//					window.location.replace("http://developers.kakao.com/logout");
					
				},
				'err' : function(data) {
					alert(data);
				}						 
		 });						
		});
	});//로그아웃 비동기 통신 end				
}
