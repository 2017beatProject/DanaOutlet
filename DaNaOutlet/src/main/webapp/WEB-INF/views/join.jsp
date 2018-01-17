<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="author" content="Cho">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>

<link rel="stylesheet" media="(min-width:699px)" type="text/css"
	href="../resources/css/join.css" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script src="../resources/js/address.js"></script>
<script src="../resources/js/joinValidation.js"></script>
<script src="../resources/js/IdDoubleCheck.js"></script>
<script src="../resources/js/idValidation.js"></script>
<script src="../resources/js/mailCheck.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	var errList = [ "pwInputReErr", "nameErr", "bDayErr",
			"genErr", "phoErr", "emErr" ,"addErr" ];
	var inputList = [ "pwInputRe", "userName", "bDay", "sex",
			"phone", "email", "roadAddress" ];
	var pwToggle;

	/*  아래부터는 메인*/
	var returnTfCount = 0;
	var datakit = "";
	var midlist = "";
	var result = false;
	var mid;
	var tmp;
	var idchk;
	var mmail;
	var maildata;
	var mailchk;
	var stringRegx = new RegExp(/[~!@\#$%<>^&*\()\-=+_\’]|[ㄱ-ㅎ]|[가-힣]/gi);
	var EngRegx = new RegExp(/[a-z]|[A-Z]/gi);
	var numRegx = new RegExp(/[0-9]/gi);

	function getTextLength(str) {
		var len = 0;
		for (var i = 0; i < str.length; i++) {
			if (escape(str.charAt(i)).length == 6) {
				len++;
			}
			len++;
		}
		return len;
	}

	$(function() {
		idchk = false;
		mailchk = false;
		resetText();
		IddoubleCheck();
		var idChk = $('#id input').eq(0).val();

		$("#mail button").on('click', function() {
			mmail = $('#email').find('input').eq(0).val();
			mailCheck();
		});

		$('form').on('submit', function() {

			result = false;
			idValidation();//id validation 검사
			pwValidation();//pw validation 검사
			submitCheck();//id를 제외한 나머지 text부분 null값 검사	

			if (returnTfCount == 0 && idchk && mailchk) {
				result = true;
			} else {
				result = false;
			}
			alert("경고");
			return result;
		});

	});
</script>
</head>
<body>
	<jsp:include page="template/login_template.jsp"></jsp:include>

	<div data-role="page">
		<div data-role="header">
			<h1>회원가입</h1>
		</div>
		<div data-role="content">
			<form id="joinForm" method="post">

				<div id="id">
					<label for="id">아이디</label> <input type="text" name="id"
						id="idInput" />
					<button type="button" id="idDoubleCheck">중복확인</button>
				</div>
				<div id="pw">
					<label for="password">비밀번호</label> <input type="password"
						name="password" id="pwInput" />					
				</div>

				<div id="pw2">
					<label for="password2">비밀번호 확인</label> <input type="password"
						id="pwInputRe" name="password2" />
					<button type="button" onclick="showPW();">보기</button>
					<div id="pwInputReErr">암호를 확인해주세요.</div>
				</div>
				<div id="name">
					<label for="name">이름</label> <input type="text" id="userName"
						name="name">
					<div id="nameErr">이름을 입력해주세요.</div>
				</div>
				<div id="birth">
					<label for="birth">생년월일</label> <input type="date" id="bDay"
						name="mbirth">
					<div id="bDayErr">생년월일을 입력해주세요.</div>
				</div>
				<div id="number">
					<label for="phone">연락처</label> <input type="number" id="phone"
						name="phone">
					<div id="phoErr">전화번호를 입력해주세요.</div>
				</div>
				<div id="mail">
					<label for="mail">e_mail</label> <input type="email" name="mail"
						id="email" />
					<button type="button" id="send">인증메일전송</button>
					<div id="emErr">올바른 이메일 주소를 입력해주세요.</div>
				</div>
				<div id="address">
					<label for="address">주소</label> <input type="text" id="postcode"
						placeholder="우편번호" name="addrn"> <input type="button"
						onclick="execDaumPostcode()" value="우편번호 찾기"><br> <input
						type="text" id="roadAddress" placeholder="도로명주소" name="addr"><br>
					<input type="text" id="jibunAddress" placeholder="지번주소"> <span
						id="guide" style="color: #999"></span>
						<div id="addErr">올바른 주소를 입력해주세요.</div>
				</div>
				<div id="gender">
					<label for="gender">성별</label> <select id="sex" name="sex">
						<option value="">성별을 선택해주세요</option>
						<option value="남성">남성</option>
						<option value="여성">여성</option>
					</select>
					<div id="genErr">성별을 선택해주세요.</div>
				</div>
				<div id="joinbtn">
					<button type="submit" value="가입">가입</button>
					<button type="reset" value="취소">취소</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>