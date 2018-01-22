function mailCheck(){

$.ajax({
						'url' : '/mailCheck',
						'type' : 'POST',
						'data' : {'email':$('#email').serialize()},
						'error' : function() {
							alert('발송실패');
						},
						'success' : function(data) {
							var tf = true;
							maildata = data;
							console.log(data.valueOf());
							if (data) {
								$('<span>이메일이 발송되었습니다</span>')
										.appendTo('#mail');
								$('span').css({
									"color" : "deeppink",
									"font-size" : "13px",
									"position" : "absolute",
									"left" : "350px",
									"top" : "0px"
								});					
								
							} else{
								$('<span>이메일 발송 실패, 다시 시도해주세요</span>')
										.appendTo('#mail');
								$('span').css({
									"color" : "deeppink",
									"font-size" : "13px",
									"position" : "absolute",
									"left" : "350px",
									"top" : "0px"
								});
							}
						}
					});
}