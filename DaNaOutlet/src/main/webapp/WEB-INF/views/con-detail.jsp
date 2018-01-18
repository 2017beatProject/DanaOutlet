<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/bootstrap-theme.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/jquery-1.12.4.js"></script>
<script src="resources/js/jquery.bxslider.js"></script>
<script src="resources/js/bootstrap.js"></script>
<script type="text/javascript">

	$(function(){
		$('#gheader').css({

		});

	});
	
</script>
<style type="text/css">
.jumbotron>div>div{
	display: inline-block;
	float: left;
}
#nav{
	float: right; 
}
#jayuheader
</style> 
</head> 
<body>
<div><!-- 전체 -->
	<div class="jumbotron">
	<div id="jayuheader"><!-- 자유게시판 해더 --> 
		<div id="jayu"><h4>자유게시판</h4><span><button>☆</button></span></div>
		<div id="nav"><p><a href="#">DPG</a> ><a href="#">커뮤니티</a> ><a href="#">자유게시판</a></p></div>
		</div>
		</div>
		<div><!-- 제목쪽 해더 -->
			<h4>제목</h4>
			<div>
				<div>
					<div><!-- 닉네임쪽div  -->
						<a><span>LS</span><span>MB블루스</span></a><a>ip</a><span>date</span>
						<div>
							<dl><span>조회수</span><dd>숫자</dd></dl>
							<dl><span>좋아요</span><dd>숫자</dd></dl>
							<dl><span>댓글수</span><dd>숫자</dd></dl>
						</div>
					</div>
				</div>
				<div><!-- 프린트쪽div -->
					<button>인쇄</button><button>공유</button><button>글꼴-</button><button>글꼴+</button> 
				</div>
			</div>
		</div>
	<div><!-- content 내용 -->
		<p>123123123123123123123123123123123</p>
		<p>123123123123123123123123123123123</p>
		<p><img alt="logo" src="#"> </p>
	</div>
	<div><!-- tag and 신고 -->
		<dl><dd><em>tag</em><span>등록된태그</span></dd></dl>
		<a href="#"><span>싸이렌모양</span>신고</a>
	</div>

	<div><!-- 다른글보기, 인기글 -->
		<div><!--다른글보기 -->
			<div>
				<div><strong><span>아이디</span>님의 다른글보기</strong></div>
				<div><strong>1</strong>/3 <button>←</button><button>→</button></div>
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
		<div><!-- 자유게시판 인기글 -->
			<div>	
				<div><strong>자유게시판 인기 글</strong></div>
				<div><strong>1</strong>/3 <button>←</button><button>→</button></div>
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
	<div><!-- 댓글쓰기  -->
		<div><label>이미지첨부인풋파일라벨</label><textarea rows="" cols="">댓글작성가능</textarea><button>등록</button></div>
		<div>한글1000자, 영문 2000자</div>
	</div>
	<div><!-- 댓글전체-->
		<div><!-- 댓글머리 밖 꾸미기-->
			<div><!-- 댓글머리 안의 글씨 -->
				<strong>댓글<span>17</span></strong>
			</div>
		</div>
		<div id="replys"><!-- 댓글리스트 -->
			<ul>
				<li>
					<div id="replysImg"><img alt="" src=""></div>
					<div id="replySub">
						<div id="replyUser"><span>L11</span><span>닉네임</span></div><span>date</span>
						<div id="replyOption">
							<ul>
								<li><span>말풍선</span><strong>댓글</strong></li><li><a>신고</a></li>
							</ul>
						</div>
					</div>
					<div id="replyContents">...댓글글</div>
					<div id="replyPlus">
						<button><strong><span>따봉아이콘</span>추천</strong><span>0</span></button>
					</div>
				</li>
				<!-- .....반복 -->
			</ul>
		</div>
	</div>
</div>	
	
</body>
</html>