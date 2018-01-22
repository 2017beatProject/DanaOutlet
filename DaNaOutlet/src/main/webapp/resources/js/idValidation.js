

function idValidation() {	
	$('#id> span').remove();

	if (getTextLength($('#id input').eq(0).val()) == 0) {
		$("<span id='idErr'> 아이디를 입력해주세요</span>").appendTo("#id");	
		returnTfCount++;
	}

	else if (getTextLength($('#id input').eq(0).val()) < 8) {
		$("<span id='idErr'> 아이디는 8자 이상입니다</span>").appendTo("#id");
		returnTfCount++;

	}

	else if (stringRegx.test($('#id input').eq(0).val())) {
		$("<span id='idErr'>한글과 ~!@\#$%<>^&*\()\-=+_\’ 는 포함할 수 없습니다.</span>")
				.appendTo("#id");

		returnTfCount++;
	}else if (!numRegx.test($('#id input').eq(0).val())) {
		$("<span id='idErr'>아이디에 숫자가 1개 이상 포함되어 있어야 합니다</span>").appendTo("#id");		
		returnTfCount++;
	

	}else if (!EngRegx.test($('#id input').eq(0).val())) {
		$("<div id='idErr'>아이디에 영문 글자 1개 이상 포함되어 있어야 합니다</span>").appendTo("#id");

		returnTfCount++;
}
	$('#idErr').css({			
		'position': 'relative',
	   'top': '10px',
	   'left': '20px',
	   'font-size': '13px',
	   'color':'deeppink'
	});
	
}

function pwValidation() {
	$('#pw span').remove();	

	if (getTextLength($('#pw input').eq(0).val()) == 0) {
		$("<span id='pwErr'> 비밀번호를를 입력해주세요</span>").appendTo("#pw");
		returnTfCount++;
	}

	else if (getTextLength($('#pw input').eq(0).val()) < 8) {
		$("<span id='pwErr'> 비밀번호는 8자 이상입니다</span>").appendTo("#pw");
		returnTfCount++;

	}

	else if (stringRegx.test($('#pw input').eq(0).val())) {
		$("<span id='pwErr'>한글과 ~!@\#$%<>^&*\()\-=+_\’ 는 포함할 수 없습니다.</span>")
				.appendTo("#pw");

		returnTfCount++;
	}else if (!numRegx.test($('#pw input').eq(0).val())) {
		$("<span id='pwErr'>비번에 숫자가 1개 이상 포함되어 있어야 합니다</span>").appendTo("#pw");		
		returnTfCount++;
	

	}else if (!EngRegx.test($('#pw input').eq(0).val())) {
		$("<span id='pwErr'>비밀번호에 영문 글자 1개 이상 포함되어 있어야 합니다</span>").appendTo("#pw");

		returnTfCount++;
}
	$('#pwErr').css({			
		'position': 'relative',
	   'top': '10px',
	   'left': '30px',
	   'font-size': '13px',
	   'color':'deeppink'
	});
}

