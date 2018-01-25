var errList = [ "pwInputReErr", "nameErr", "bDayErr", "genErr", "phoErr",
		"emErr", "addErr" ];
var inputList = [ "pwInputRe", "userName", "bDay", "sex", "phone", "email",
		"roadAddress" ];
var pwToggle;

/* 아래부터는 메인 */
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

function getTextLength(str) {
	var len = 0;
	for (var i = 0; i < str.length; i++) {
		if (escape(str.charAt(i)).length == 6) {
			len++;
		}
		len++;
	}
	return len;
}// 특수문자값검사

// 회원가입하기 기능
function joinFunc() {
	idchk = false;
	mailchk = false;
	resetText();
	IddoubleCheck();
	var idChk = $('#id input').eq(0).val();
	
	$("#mail button").on('click', function() {
		mmail = $('#email').find('input').eq(0).val();
		mailCheck();
	});

	$('#joinForm').on('submit', function() {
		returnTfCount = 0;
		result = false;
		idValidation();// id validation 검사
		pwValidation();
		resetText();
		submitCheck();// id를 제외한 나머지 text부분 null값 검사  && idchk && mailchk
		if (returnTfCount == 0) {
			result = true;
		} else {
			result = false;
		}
		alert(returnTfCount+"카운터 값 경고!");
		return result;
	});
}
