<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
<link rel="stylesheet" href="../resources/css/bootstrap.css">
<link rel="stylesheet" href="../resources/css/bootstrap-theme.css">
<script src="../resources/js/jquery.min.js"></script>
<script src="../resources/js/jquery-1.12.4.js"></script>
<script src="../resources/js/jquery.bxslider.js"></script>
<script src="../resources/js/bootstrap.js"></script>
<style>
ul {
	list-style: none;
}

li {
	margin-top: 5px;
}
</style>

</head>

<body>
	<h1>공용 게시판 - 차후 수정합시다</h1>
	<div class="container">
		<table class="table table-hover">
			<tr>
				<th>제목</th>
				<th class="hidden-xs">작성자</th>
				<th class="hidden-xs hidden-sm">작성일</th>
				<th class="hidden-xs hidden-sm hidden-md">조회</th>
			</tr>
			<tr>
				<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit,</td>
				<td class="hidden-xs">BxSlider</td>
				<td class="hidden-xs hidden-sm">2018.1.16</td>
				<td class="hidden-xs hidden-sm hidden-md">56</td>
			</tr>
			<tr>
				<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit,</td>
				<td class="hidden-xs">BxSlider</td>
				<td class="hidden-xs hidden-sm">2018.1.16</td>
				<td class="hidden-xs hidden-sm hidden-md">56</td>
			</tr>
			<tr>
				<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit,</td>
				<td class="hidden-xs">BxSlider</td>
				<td class="hidden-xs hidden-sm">2018.1.16</td>
				<td class="hidden-xs hidden-sm hidden-md">56</td>
			</tr>
		</table>
		<form class="form-inline">
			<div class="form-group">
				<select class="form-control">
					<option>제목+내용</option>
					<option>제목</option>
					<option>내용</option>
					<option>닉네임</option>
					<option>아이디</option>
				</select> <input type="text" class="form-control" id="exampleInputName2"
					placeholder="검색어를 입력하세요">
				<button type="submit" class="btn btn-default">확인</button>
			</div>
		</form>
	</div>

	<h1>이미지가 함께 있는 게시판</h1>
	<div class="container">
		<ul>
			<li>
				<div class="row">
					<div class="col-sm-2">
						<img src="../resources/imgs/hotdealimgs/soju01.jpg" alt=""
							class="img-thumbnail" />
					</div>
					<div class="col-sm-8">Lorem ipsum dolor sit amet, consectetur
						adipiscing elit,</div>
					<div class="col-sm-2">Lorem ipsum dolor sit amet, consectetur
						adipiscing elit,</div>
				</div>
			</li>
			<li>
				<div class="row">
					<div class="col-sm-2">
						<img src="../resources/imgs/hotdealimgs/soju01.jpg" alt=""
							class="img-thumbnail" />
					</div>
					<div class="col-sm-8">Lorem ipsum dolor sit amet, consectetur
						adipiscing elit,</div>
					<div class="col-sm-2">Lorem ipsum dolor sit amet, consectetur
						adipiscing elit,</div>
				</div>
			</li>
			<li>
				<div class="row">
					<div class="col-sm-2">
						<img src="../resources/imgs/hotdealimgs/soju01.jpg" alt=""
							class="img-thumbnail" />
					</div>
					<div class="col-sm-8">Lorem ipsum dolor sit amet, consectetur
						adipiscing elit,</div>
					<div class="col-sm-2">Lorem ipsum dolor sit amet, consectetur
						adipiscing elit,</div>
				</div>
			</li>
		</ul>
		<div class="row">&nbsp;</div>
		<form class="form-inline">
			<div class="form-group">
				<select class="form-control">
					<option>제목+내용</option>
					<option>제목</option>
					<option>내용</option>
					<option>닉네임</option>
					<option>아이디</option>
				</select> <input type="text" class="form-control" id="exampleInputName2"
					placeholder="검색어를 입력하세요">
				<button type="submit" class="btn btn-default">확인</button>
			</div>
		</form>
	</div>

	<h1>글타래로 내려오는 게시판</h1>
	
	<!-- a href 에서 내용 div의 id를 넣어주면 자동으로 열립니다, 복붙해서 쓰세요 -->
	<div class="container">
		<div class="panel-group" id="accordion" role="tablist"
			aria-multiselectable="false">

			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingTwo">
					<h4 class="panel-title">
						<a class="collapsed" data-toggle="collapse"
							data-parent="#accordion" href="#content-1" aria-expanded="true"
							aria-controls="collapseOne"> 공지사항 </a>
					</h4>
				</div>
				<div id="content-1" class="panel-collapse collapse in"
					role="tabpanel" aria-labelledby="headingOne">
					<div class="panel-body">
						<h3>여기에 공지사항이 들어갑니다</h3>
					</div>
				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingTwo">
					<h4 class="panel-title">
						<a class="collapsed" data-toggle="collapse"
							data-parent="#accordion" href="#content-2" aria-expanded="false"
							aria-controls="collapseTwo"> Collapsible Group Item #2 </a>
					</h4>
				</div>
				<div id="content-2" class="panel-collapse collapse" role="tabpanel"
					aria-labelledby="headingTwo">
					<div class="panel-body">
						<img src="../resources/imgs/hotdealimgs/soju01.jpg" alt=""
							class="img-responsive" /><br /> 
							<h3>아이유는 예쁩니다, 이것은 사실이죠</h3>
					</div>
				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingThree">
					<h4 class="panel-title">
						<a class="collapsed" data-toggle="collapse"
							data-parent="#accordion" href="#content-3" aria-expanded="false"
							aria-controls="collapseThree"> Collapsible Group Item #3 </a>
					</h4>
				</div>
				<div id="content-3" class="panel-collapse collapse" role="tabpanel"
					aria-labelledby="headingThree">
					<div class="panel-body">Anim pariatur cliche reprehenderit,
						enim eiusmod high life accusamus terry richardson ad squid. 3 wolf
						moon officia aute, non cupidatat skateboard dolor brunch. Food
						truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor,
						sunt aliqua put a bird on it squid single-origin coffee nulla
						assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer
						labore wes anderson cred nesciunt sapiente ea proident. Ad vegan
						excepteur butcher vice lomo. Leggings occaecat craft beer
						farm-to-table, raw denim aesthetic synth nesciunt you probably
						haven't heard of them accusamus labore sustainable VHS.</div>
				</div>
			</div>
		</div>

		<form class="form-inline">
			<div class="form-group">
				<select class="form-control">
					<option>제목+내용</option>
					<option>제목</option>
					<option>내용</option>
					<option>닉네임</option>
					<option>아이디</option>
				</select> <input type="text" class="form-control" id="exampleInputName2"
					placeholder="검색어를 입력하세요">
				<button type="submit" class="btn btn-default">확인</button>
			</div>
		</form>
	</div>

</body>

</html>
