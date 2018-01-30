 function buttonSession(root,num) {
	if (loginInfoId == writer) {
		$('#AtagEdit').attr('href',
				"/dpg/"+root+"/"+num+"/input?idx=1");
		$('#AtagEdit').attr('data-toggle', "");
		$('#AtagEdit').attr('data-target', "");
		$('#AtagDelete').attr('data-toggle', "");
		$('#AtagDelete').attr('data-target', "");
	}else if (!(loginInfoId !="")) {
		$('#AtagEdit').attr('data-toggle', "modal");
		$('#AtagEdit').attr('data-target', "#login");							
		$('#ButDelete').attr('data-toggle', "modal");
		$('#ButDelete').attr('data-target', "#login");
	}else if(loginInfoId != writer){
		$('#ButDelete').attr('data-toggle', "modal");
		$('#ButDelete').attr('data-target', "#noRight");
	}

	if(loginInfoId ==""){
		$('#replyAddForm').find('input').last().before("<button type='button' data-toggle='modal' data-target='#login' class='glyphicon glyphicon-edit btn btn-default'>등록</button>");
	}else{
		$('#replyAddForm').find('input').last().before("<button type='submit' class='glyphicon glyphicon-edit btn btn-default'>등록</button>");
	}
	
}
function replySession(replyConId){
	if(loginInfoId==replyConId){
		$('.AtagReplyDelete').attr('data-toggle', "");
		$('.AtagReplyDelete').attr('data-target', "");
	}else if(loginInfoId ==""){
		$('.AtagReplyDelete').attr('data-toggle', "modal");
		$('.AtagReplyDelete').attr('data-target', "#login");
	}else if(loginInfoId !=replyConId){
		$('.AtagReplyDelete').attr('data-toggle', "modal");
		$('.AtagReplyDelete').attr('data-target', "#noRight");
	}
}
