<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../resources/css/bootstrap.css">
<link rel="stylesheet" href="../resources/css/bootstrap-theme.css">
<script src="../resources/js/jquery.min.js"></script>
<script src="../resources/js/jquery-1.12.4.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="../resources/js/bootstrap.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
$(function() {
	$('#mnum').mouseenter(function() {
		$('#jbjb').css({
			'background-color': 'rgb(255,222,255)'
		})
		$('#mnum').css({
			'background-color' : 'rgb(255,222,255)'
		})
	});
	$('#mnum').mouseleave(function() {
		$('#mnum').css({
			'background-color' : 'white'
		})
		$('#jbjb').css({
			'background-color': 'white'
		})
	});
	$('#name').mouseenter(function() {
		$('#name').css({
			'background-color' : 'rgb(222,222,255)'
		})
		$('#jbjb').css({
			'background-color': 'rgb(222,222,255)'
		})
	});
	$('#name').mouseleave(function() {
		$('#name').css({
			'background-color' : 'white'
		})
		$('#jbjb').css({
			'background-color': 'white'
		})
	});
	$('#id').mouseenter(function() {
		$('#id').css({
			'background-color' : 'rgb(255,255,222)'
		})
		$('#jbjb').css({
			'background-color': 'rgb(255,255,222)'
		})
	});
	$('#id').mouseleave(function() {
		$('#id').css({
			'background-color' : 'white'
		})
		$('#jbjb').css({
			'background-color': 'white'
		})
	});
	$('#password').mouseenter(function() {
		$('#password').css({
			'background-color' : 'rgb(222,222,239)'
		})
		$('#jbjb').css({
			'background-color': 'rgb(222,222,239)'
		})
	});
	$('#password').mouseleave(function() {
		$('#password').css({
			'background-color' : 'white'
		})
		$('#jbjb').css({
			'background-color': 'white'
		})
	});
	$('#phone').mouseenter(function() {
		$('#phone').css({
			'background-color' : 'rgb(222,239,255)'
		})
		$('#jbjb').css({
			'background-color': 'rgb(222,239,255)'
		})
	});
	$('#phone').mouseleave(function() {
		$('#phone').css({
			'background-color' : 'white'
		})
		$('#jbjb').css({
			'background-color': 'white'
		})
	});
	$('#mail').mouseenter(function() {
		$('#mail').css({
			'background-color' : 'rgb(222,255,255)'
		})
		$('#jbjb').css({
			'background-color': 'rgb(222,255,255)'
		})
	});
	$('#mail').mouseleave(function() {
		$('#mail').css({
			'background-color' : 'white'
		})
		$('#jbjb').css({
			'background-color': 'white'
		})
	});
	$('#mbirth').mouseenter(function() {
		$('#mbirth').css({
			'background-color' : 'rgb(239,222,239)'
		})
		$('#jbjb').css({
			'background-color': 'rgb(239,222,239)'
		})
	});
	$('#mbirth').mouseleave(function() {
		$('#mbirth').css({
			'background-color' : 'white'
		})
		$('#jbjb').css({
			'background-color': 'white'
		})
	});
	$('#addr').mouseenter(function() {
		$('#addr').css({
			'background-color' : 'rgb(255,222,222)'
		})
		$('#jbjb').css({
			'background-color': 'rgb(255,222,222)'
		})
	}); 
	$('#addr').mouseleave(function() {
		$('#addr').css({
			'background-color' : 'white'
		})
		$('#jbjb').css({
			'background-color': 'white'
		})
	}); 
	$('#addrn').mouseenter(function() {
		$('#addrn').css({
			'background-color' : 'rgb(239,222,222)'
		})
		$('#jbjb').css({
			'background-color': 'rgb(239,222,222)'
		})
	});
	$('#addrn').mouseleave(function() {
		$('#addrn').css({
			'background-color' : 'white'
		})
		$('#jbjb').css({
			'background-color': 'white'
		})
	});
});
</script>
<style type="text/css">
	body{
		text-align: center;
	}
	ul{
		display: inline-block;
	}
	.container{
		background-color: aqua;
	}
	#jbjb{
		display: inline-block;
	}
</style>
</head>
<body>
<br/> 
<br/>
	<h2 id="jbjb">${bean.name }님의 정보</h2>
	<div class="container"> 
	
	<br/> 
	<br/> 
	<ul class="list-group">
		<li class="list-group-item" id="mnum">회원번호: ${bean.mnum }</li>
		<li class="list-group-item" id="name">이름: ${bean.name }</li>
		<li class="list-group-item" id="id">ID : ${bean.id }</li>
		<li class="list-group-item" id="password">Password : ${bean.password }</li>
		<li class="list-group-item" id="phone">Phone : ${bean.phone }</li>
		<li class="list-group-item" id="mail">Mail : ${bean.mail }</li>
		<li class="list-group-item" id="mbirth">Mbirth : ${bean.mbirth }</li>
		<li class="list-group-item" id="addr">Addr : ${bean.addr }</li>
		<li class="list-group-item" id="addrn">Addrn : ${bean.addrn }</li>
	</ul> 
	</div> 
	<button type="button" class="btn btn-warning">뒤로</button>
</body>
</html>