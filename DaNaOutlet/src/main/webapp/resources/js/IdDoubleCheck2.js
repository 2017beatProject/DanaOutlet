var doubleRetrun =false;
function IddoubleCheck2() {
	
				$('#doubleMsg').remove();
				$('#idErr').remove();
				
				mid = $('#id').find('input').eq(0).val();
				
				$.ajax({
					
					'url' : '/idDoubleChk',
					'type' : 'POST',
					'data' : {
						'chkId' : mid
					},
					'error' : function() {
						alert("경고");
					},
					'success' : function(data) {
						if (data=="true") {
							$('<span id="doubleMsg"> 중복된 아이디입니다</span>')
									.appendTo('#id');
							console.log(data + "if");
							doubleRetrun = false;
						} else if(data=="false") {
							$('<span id="doubleMsg"> 중복되지 않은 아이디입니다</span>')
									.appendTo('#id');
							console.log(data + "else");
							doubleRetrun = true;
						}

					}

				});
				return doubleRetrun ;
}