
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
	Kakao.init('1ed0a4ca651380fc768bf01eb21201e5');
	// 카카오 로그인 버튼을 생성.

	Kakao.Auth.createLoginButton({
		'container' : '#kakao-login-btn',
		'persistAccessToken' : false,
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

// ---------------------------로그인여부확인
function loginChkTool(){
	$('#loginchk').on(
		'click',
		function() {
			Kakao.Auth.getStatus(function(statusObj) {
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
					window.location.reload("#");
				},
				'err' : function(data) {
					alert("로그아웃에러");
				}						 
		 });
		});

	});//로그아웃 비동기 통신 end
	
}
