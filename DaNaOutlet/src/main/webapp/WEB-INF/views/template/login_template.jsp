<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="../resources/js/jquery-1.12.4.js"></script>
<script>
$(function(){
	
	$('#loginbtn').on('click', function(){
		var param={			
				'loginId':$('#loginId').val(),
				'loginPw':$('#loginPw').val()
		}
		$.ajax({			
			'url':'/login',
			'type':'post',
			'data': param,
			'success':function(data){
				alert("통신성공"+data);
			},
			'err':function(data){
				alert("로그인에러");	
			}
			
			
		});
		return false;
	});
	
});

</script>

</head>
<body>

<div id="loginDiv">
	<form>
	<div id="loginIdDiv">
		<label for="loginId">아&nbsp;이&nbsp;디&nbsp;</label> <input type="text" id="loginId"
			name="loginId" placeholder="아이디" />
	</div>
	<div id="loginPwDiv">
		<label for="loginPw">비밀번호</label> <input type="password" id="loginPw"
			name="loginPw" placeholder="비밀번호" />
			<button id="loginbtn" type="submit">확인</button>
	</div>	
	</form>
	</div>
</body>
</html>