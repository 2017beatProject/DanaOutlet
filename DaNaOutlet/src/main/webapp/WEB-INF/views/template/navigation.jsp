<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
				src="../resources/imgs/logo.png" alt="" height="25px" /></a>
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
						<li><a href="/board">DPG 메인</a></li>
						<li><a href="#">공지사항</a></li>
						<li><a href="/board/detail">게시판</a></li>
						<li><a href="#">Q&amp;A</a></li>
						<li class="divider"></li>
					</ul></li>
			</ul>
			<div class="nav navbar-nav navbar-right">
				<button type="button" class="btn btn-default navbar-btn"
						data-toggle="modal" data-target="#join">회원가입</button>
				<button type="button" class="btn btn-primary navbar-btn"
						data-toggle="modal" data-target="#login">로그인</button>
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
							<form class="form-horizontal">
								<div class="col-sm-12">&nbsp;</div>
								<div class="form-group">
									<label for="id" class="col-sm-2 control-label">아이디</label>
									<div class="col-sm-9">
										<input type="text" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">암호</label>
									<div class="col-sm-9">
										<input type="password" class="form-control">
									</div>
								</div>
								<div class="col-sm-12">&nbsp;</div>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary">확인</button>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>
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
							<form class="form-horizontal">
								<div class="form-group">
									<label for="id" class="col-sm-2 control-label">아이디</label>
									<div class="col-sm-7">
										<input type="email" class="form-control" placeholder="ID">
									</div>
									<div class="col-sm-2">
										<button class="btn btn-default" type="button">중복확인</button>
									</div>
								</div>
								<div class="form-group">
									<label for="password" class="col-sm-2 control-label">비밀번호</label>
									<div class="col-sm-7">
										<input type="password" class="form-control"
											placeholder="Password">
									</div>
								</div>
								<div class="form-group">
									<label for="password-re" class="col-sm-2 control-label">비밀번호</label>
									<div class="col-sm-7">
										<input type="password" class="form-control"
											placeholder="Password-Re">
									</div>
									<div class="col-sm-2">
										<button class="btn btn-default" type="button">보기</button>
									</div>
								</div>
								<div class="form-group">
									<label for="name" class="col-sm-2 control-label">이름</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" placeholder="Name">
									</div>
								</div>
								<div class="form-group">
									<label for="birth" class="col-sm-2 control-label">생년월일</label>
									<div class="col-sm-7">
										<input type="date" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label for="Phone" class="col-sm-2 control-label">연락처</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" placeholder="Phone">
									</div>
								</div>
								<div class="form-group">
									<label for="mail" class="col-sm-2 control-label">이메일</label>
									<div class="col-sm-7">
										<input type="email" class="form-control" placeholder="e-Mail">
									</div>
									<div class="col-sm-2">
										<button class="btn btn-default" type="button">인증메일전송</button>
									</div>
								</div>
								<div class="form-group">
									<label for="adress" class="col-sm-2 control-label">주소</label>
									<div class="col-sm-7">
										<input type="text" class="form-control" placeholder="우편번호">
									</div>
									<div class="col-sm-2">
										<button class="btn btn-default" type="button">우편번호 찾기</button>
									</div>
								</div>
								<div class="form-group">
									<label for="adress" class="col-sm-1 control-label">&nbsp;</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="도로명주소">
									</div>
								</div>
								<div class="form-group">
									<label for="adress" class="col-sm-1 control-label">&nbsp;</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="지번주소">
									</div>
								</div>
								<div class="form-group">
									<label for="gender" class="col-sm-2 control-label">성별</label>
									<div class="col-sm-7">
										<select class="form-control">
											<option value="">성별을 선택해주세요</option>
											<option value="남성">남성</option>
											<option value="여성">여성</option>
										</select>
									</div>
								</div>
							</form>
							<!-- 폼 종료 -->
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary">확인</button>
							<button type="reset" class="btn btn-default">취소</button>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>