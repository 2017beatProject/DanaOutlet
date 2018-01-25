<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.js"></script>
<title>다나와 DPG</title>
<!-- <link rel="stylesheet" href="../resources/css/bootstrap.css">
<link rel="stylesheet" href="../resources/css/bootstrap-theme.css"> -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- <script src="../resources/js/bootstrap.js"></script> -->
<script>
	$(function() {
		var param = {
			'num' : $('#dpgNum').text()
		};		
				$.ajax({
					'url' : '/replyCall',
					'data' : param,
					'success' : function(data) {
							console.log("댓글호출성공"+ data.list.length +"나오냐"+"3tddd44t44");
						$('#replysTotal').append("<div id='replys'>");
						
						for (var i = 0; i < data.list.length; i++) {/* 댓글수만큼 반복문*/
							$('#replysTotal')
									.append(
											"<ul><li>"
													+ "<div='replyImg'></div>"
													+ "<div id='replySub'>"
													+ "<div id='replyUser'>"
													+ "<span>L11</span><span>"+data.list[i].id+"</span></div>"
													+"<span>"+data.list[0].nalja+"</span>"
													+ "<div id='replyOption'>"
													+ "<ul><li><span>말풍선</span><strong>댓글</strong></li>"
													+ "<li><a>신고</a></li></ul></div></div>"
													+ "<div id='replyContents'>"+data.list[0].contents+"</div>"
													+ "<div id='replyPlus'>"													
													+ "<button><strong><span>따봉아이콘</span>추천</strong>"
													+ "<span>0</span></button></div></li></ul>");
						}
						$('#replysTotal').append("</div>");
					},
					'err' : function() {
						console.log("댓글 호출 실패");
					}
				});
	});
</script>
</head>
<body>
	<div>
		<!-- 전체 -->
		<div>
			<!-- 자유게시판 해더 -->
			<div>
				<a href="#"><h4>자유게시판</h4></a><a><button>☆</button></a>
			</div>
			<div>
				<p>
					<a href="#">DPG</a> ><a href="#">커뮤니티</a> ><a href="#">${bean.dpgSubject }</a>
				</p>
			</div>
		</div>
		<div>
			<!-- 제목쪽 해더 -->
			<h4>[글번호:</h4><h4 id="dpgNum">${bean.dpgNum }</h4><h4>]${bean.dpgTitle }</h4>
			<div>
				<div>
					<div>
						<!-- 닉네임쪽div  -->
						<a><span>멤버분류: ${bean.dpgFrom }</span><span>${bean.dpgWriter }</span></a><a>ip</a><span>date</span>
						<div>
							<dl>
								<span>조회수</span>
								<dd>숫자</dd>
							</dl>
							<dl>
								<span>좋아요</span>
								<dd>숫자</dd>
							</dl>
							<dl>
								<span>댓글수</span>
								<dd>숫자</dd>
							</dl>
						</div>
					</div>
				</div>
				<div>
					<!-- 프린트쪽div -->
					<button>인쇄</button>
					<button>공유</button>
					<button>글꼴-</button>
					<button>글꼴+</button>
				</div>
			</div>
		</div>
		<div>
			<!-- content 내용 -->

			<p>(이미지링크)${bean.dpgImgLink }</p>
			<p>(DB텍스트)${bean.dpgContent }</p>
			<p>
			<%-- 	<img src="../resources/imgs/dpgimgs/${bean.dpgImgLink}"> --%>
			</p>
		</div>
		<div>
			<!-- tag and 신고 -->
			<dl>
				<dd>
					<em>tag</em><span>등록된태그</span>
				</dd>
			</dl>
			<a href="#"><span>싸이렌모양</span>신고</a>
		</div>

		<div>
			<!-- 다른글보기, 인기글 -->
			<div>
				<!--다른글보기 -->
				<div>
					<div>
						<strong><span>아이디</span>님의 다른글보기</strong>
					</div>
					<div>
						<strong>1</strong>/3
						<button>←</button>
						<button>→</button>
					</div>
				</div>
				<div>
					<ul>
						<li><a>...</a></li>
						<li><a>...</a></li>
						<li><a>...</a></li>
						<li><a>...</a></li>
						<li><a>...</a></li>
					</ul>
				</div>
			</div>
			<div>
				<!-- 자유게시판 인기글 -->
				<div>
					<div>
						<strong>자유게시판 인기 글</strong>
					</div>
					<div>
						<strong>1</strong>/3
						<button>←</button>
						<button>→</button>
					</div>
				</div>
				<div>
					<ul>
						<li><a>...</a></li>
						<li><a>...</a></li>
						<li><a>...</a></li>
						<li><a>...</a></li>
						<li><a>...</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div>
			<!-- 댓글쓰기  -->
			<div>
				<label>이미지첨부인풋파일라벨</label>
				<textarea rows="" cols="">댓글작성가능</textarea>
				<button>등록</button>
			</div>
			<div>한글1000자, 영문 2000자</div>
		</div>
		
		<!-- 댓글모음 -->
		<div id="replysTotal"></div>
	</div>

</body>
</html>