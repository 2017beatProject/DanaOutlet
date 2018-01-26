<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="/resources/js/kakaoLogin.js"></script>
<script src="/resources/js/join.js"></script>
<script src="/resources/js/mailCheck.js"></script>
<script src="/resources/js/address.js"></script>
<script src="/resources/js/joinValidation.js"></script>
<script src="/resources/js/IdDoubleCheck.js"></script>
<script src="/resources/js/idValidation.js"></script>
<script src="/resources/js/mailCheck.js"></script>

<script>
	var authKey;
	var param = {};
	var resparam = {};

	function login() {
		$('#loginFunc').css({
			'display' : 'on'
		});
		$('#logoutFunc').css({
			'display' : 'none'
		});

	}
	function logout() {
		$('#logoutFunc').css({
			'display' : 'on'
		});
		$('#loginFunc').css({
			'display' : 'none'
		});
	}
	$(function() {//ready jquery...

		loginTool();// kakaologin.js에서 받아오는 로그인 기능
		joinFunc();//join.js에서 받아오는 회원가입 기능

		$('#logoutTestG').on('click', function() {
			loginCreate();
		});

		$('#loginChkMsg').css({
			'display' : 'none'
		});

		if ($('#loginChkMsg').text() == "true") {
			logout();
			logoutTool();
		} else {
			login();
		}
	});
</script>

<style>
body {
	padding-top: 70px;
}
</style>
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/"><img
				src="/resources/imgs/logo.png" alt="" height="25px" /></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="/">메인 </a></li>
				<li><a href="/search">상품검색</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">DPG
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="/dpg?startNum=0">DPG 메인</a></li>
						<li><a href="/dpg/review?startNum=0">리뷰</a></li>
						<li><a href="/dpg/board?startNum=0">게시판</a></li>
						<li><a href="#">Q&amp;A</a></li>
						<li class="divider"></li>
					</ul></li>
			</ul>
			<div class="nav navbar-nav navbar-right" id="loginFunc">
				<button type="button" class="btn btn-default navbar-btn"
					data-toggle="modal" data-target="#join">회원가입</button>
				<button type="button" class="btn btn-primary navbar-btn"
					data-toggle="modal" data-target="#login">로그인</button>
			</div>
			<div class="nav navbar-nav navbar-right" id="logoutFunc">
				<span id="loginChkMsg">${loginChk}</span> <span id="inFologinId">${loginInfo.nickName}님
					접속중</span>
				<button type="button" class="btn btn-primary navbar-btn" id="logout">로그아웃</button>

			</div>

		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>

<!-- 권한이 없습니다 -->

<div class="modal fade" id="noRight" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">권한이 없습니다</h4>
			</div>
			<div class="modal-body">
				<button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
			</div>
		</div>

	</div>
</div>
<!-- 삭제 하시겠습니까? -->

<div class="modal fade" id="DeleteConfim" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">삭제 하시겠습니까</h4>
			</div>
			<div class="modal-body">
				<a id="AtagDelete" type="button" class="btn btn-default" href="#"
					data-toggle="modal" data-target="#DeleteConfim">삭제</a>
				<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
			</div>
		</div>

	</div>
</div>

<!-- 로그인 시작 -->

<div class="modal fade" id="login" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">로그인</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="loginFrom" method="post">
					<div class="col-sm-12">&nbsp;</div>
					<div class="form-group">
						<label for="id" class="col-sm-2 control-label">아이디</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" id="loginId"
								name="loginId" placeholder="아이디">
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword3" class="col-sm-2 control-label">비밀번호</label>
						<div class="col-sm-9">
							<input type="password" class="form-control" id="loginPw"
								name="loginPw" placeholder="비밀번호">
						</div>
					</div>
					<div class="col-sm-12">&nbsp;</div>


					<div class="modal-footer">
						<div class="row">
							<a id="logoutTestG" class="btn "><img
								src="/resources/imgs/kakao_account_login_btn_medium_narrow.png"
								class="" /></a>
							<button type="submit" class="btn btn-primary">확인</button>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>
						</div>
					</div>
				</form>

			</div>
		</div>

	</div>
</div>

<!-- 회원가입 시작 -->
<!-- Modal -->
<div class="modal fade" id="join" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">회원가입</h4>
			</div>
			<div class="modal-body">
				<!-- 폼 -->
				<form class="form-horizontal" action="/join" id="joinForm"
					method="post">
					<div class="form-group">
						<label for="id" class="col-sm-2 control-label">아이디</label>
						<div class="col-sm-7" id="id">
							<input type="text" class="form-control" placeholder="ID"
								id="idInput" name="loginId">
						</div>
						<div class="col-sm-2">
							<button class="btn btn-default" type="button" id="idDoubleCheck">중복확인</button>
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col-sm-2 control-label">암호</label>
						<div class="col-sm-7" id="pw">
							<input type="password" class="form-control" id="pwInput"
								name="loginPw" placeholder="Password">
						</div>
					</div>
					<div class="form-group" id="pw2">
						<label for="password-re" class="col-sm-2 control-label">암호확인</label>
						<div class="col-sm-7">
							<input type="password" class="form-control" id="pwInputRe"
								placeholder="Password-Re"> <span id="pwInputReErr">암호를
								확인해주세요.</span>
						</div>
						<div class="col-sm-2">
							<button class="btn btn-default" type="button">보기</button>
						</div>

					</div>
					<div class="form-group" id="name">
						<label for="name" class="col-sm-2 control-label">이름</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" placeholder="Name"
								id="userName" name="nickName"> <span id="nameErr">이름을
								입력해주세요.</span>
						</div>

					</div>
					<div class="form-group" id="birth">
						<label for="birth" class="col-sm-2 control-label">생년월일</label>
						<div class="col-sm-7">
							<input type="date" class="form-control" id="bDay" name="mbirth">
							<span id="bDayErr">생년월일을 입력해주세요.</span>
						</div>

					</div>
					<div class="form-group" id="number">
						<label for="Phone" class="col-sm-2 control-label">연락처</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" placeholder="Phone"
								id="phone" name="phone"> <span id="phoErr">전화번호를
								입력해주세요.</span>
						</div>

					</div>
					<div class="form-group" id="mail">
						<label for="mail" class="col-sm-2 control-label">이메일</label>
						<div class="col-sm-7">
							<input type="email" class="form-control" placeholder="e-Mail"
								name="mail" id="email"> <span id="emErr">올바른 이메일
								주소를 입력해주세요.</span>
						</div>

						<div class="col-sm-2">
							<button class="btn btn-default" type="button" id="send">인증메일전송</button>
						</div>
					</div>
					<div class="form-group" id="address">
						<label for="adress" class="col-sm-2 control-label">주소</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" placeholder="우편번호"
								id="postcode" name="addrn">
						</div>
						<div class="col-sm-2">
							<button class="btn btn-default" type="button"
								onclick="execDaumPostcode()">우편번호 찾기</button>
						</div>
					</div>
					<div class="form-group">
						<label for="adress" class="col-sm-1 control-label">&nbsp;</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" placeholder="도로명주소"
								id="roadAddress" name="addr">
						</div>
					</div>
					<div class="form-group">
						<label for="adress" class="col-sm-1 control-label">&nbsp;</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" placeholder="지번주소"
								id="jibunAddress"> <span id="addErr">올바른 주소를
								입력해주세요.</span>
						</div>

					</div>

					<div class="form-group" id="gender">
						<label for="gender" class="col-sm-2 control-label">성별</label>
						<div class="col-sm-7">
							<select class="form-control" id="sex" name="sex">
								<option value="">성별을 선택해주세요</option>
								<option value="남성">남성</option>
								<option value="여성">여성</option>
							</select> <span id="genErr">성별을 선택해주세요.</span>
						</div>

					</div>

					<div class="modal-footer">
						<button type="submit" class="btn btn-primary">확인</button>
						<button type="reset" class="btn btn-default">취소</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					</div>
				</form>
				<!-- 폼 종료 -->
			</div>

		</div>
	</div>
</div>
