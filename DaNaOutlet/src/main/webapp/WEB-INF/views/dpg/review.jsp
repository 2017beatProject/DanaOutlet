<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.js"></script>
<title>리뷰</title>
<link rel="stylesheet" href="../resources/css/bootstrap.css">
<link rel="stylesheet" href="../resources/css/bootstrap-theme.css">
<script src="../resources/js/jquery.min.js"></script>
<script src="../resources/js/jquery-1.12.4.js"></script>
<script src="../resources/js/jquery.bxslider.js"></script>
<script src="../resources/js/bootstrap.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="../resources/imgs/favicon.png" />
<script>
var loginInfoNickName="${loginInfo.nickName}";
   $(document)
         .ready(
               function() {
                  $('.bxslider').bxSlider({
                     auto : true,
                     speed : 300,
                     pause : 2000,
                     mode : 'horizontal',
                     autoControlls : true,
                     pager : false,
                     autoHover : true,
                     controls : false
                  });
                var count=${count};
          		var cnt=count/10;
          		var startNum=${startNum};
          		for(var i=0; i<cnt; i++){
          			if(startNum>0)$('#previousLi').attr('href',"/dpg/review?startNum="+(startNum-10)+"");								
          			if((startNum+10)<count)$('#nextLi').attr('href',"/dpg/review?startNum="+(startNum+10)+"");
          			$('#pageNum').find('li').last().before("<li><a href='/dpg/review?startNum="+(i*10)+"'>"+(i+1)+"</a></li>");				
          		}
          		if(loginInfoNickName!=""){
					$('#writingAtag').attr('href',"/dpg/review/${loginInfo.nickName }/input?idx=0");
					$('#writingAtag').attr('data-toggle',"");
					$('#writingAtag').attr('data-target',"");
				}	
               });
   $(function() {
      $('#content').keyup(function(e) {
         var content = $(this).val();
         $(this).height((((content.split('\n').length) * 0.5) - 4) + 'em');
         $('#counter').html(content.length + '/1000');
      });
      $('#content').keyup();
   });
</script>

</head>

<body>
   <jsp:include page="../template/navigation.jsp" flush="false" />
   <div class="container">
      <div class="row">
         <div class="col-sm-8">
            <ol class="breadcrumb">
               <li><h1>리뷰</h1></li>
               <li><a href="/">Home</a></li>
               <li><a href="/dpg?startNum=0">DPG</a></li>
               <li class="active">리뷰</li>
            </ol>
            <hr style="border: 0; height: 1px; background: #ccc;" />
            <ul class="list-unstyled">
               <!-- 반복시작 -->
               <c:forEach items="${list}" var="bean">
                  <li class="col-xs-12" style="padding: 0px 3px 0px 3px;">
                     <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4" style="padding: 0px 0px 0px 0px;">
                        <a href="../dpg/review/${bean.dpgNum }"><img
                           src="../resources/imgs/dpgimgs/${bean.dpgImgLink}" alt=""
                           class="img-responsive" /></a>
                     </div>
                     <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8" style="padding: 0px 3px 0px 3px;">
                        <strong class="col-sm-8 col-md-8 col-xs-12"> <a
                           href="../dpg/review/${bean.dpgNum }"> <c:set var="text"
                                 value="${bean.dpgTitle}" /> <c:if
                                 test="${fn:length(text) lt 14}">
                                 ${text }
                           </c:if> <c:if test="${fn:length(text) ge 14}">
                              ${fn:substring(text,0,14)}...
                           </c:if>
                           <!-- <span class="glyphicon glyphicon-comment">65535</span> -->
                           <!-- &nbsp;&nbsp;<span class="badge">35</span> -->
                        </a>
                        </strong>
                        <!-- <div class="col-sm-12">&nbsp;</div> -->
                        <div class="hidden-xs col-sm-4 col-md-4 col-lg-4" style="padding: 0px 3px 0px 3px;">
                           <p><a href="#">${bean.dpgWriter }</a></p> <p>${bean.dpgNalja }</p>
                           <div style="color: purple;">
                              
                              <span class="glyphicon glyphicon-tasks">${bean.dpgCount }</span>
                           </div>
                        </div>
                     </div>
                  </li>
                  <li class="col-xs-12">
                     <hr style="border: 0; height: 1px; background: #ccc;" />
                  </li>
                  <!-- 반복 끝 -->


               </c:forEach>
            </ul>
            <nav class="col-xs-12">
               <a id="writingAtag" href="#" class="btn btn-default pull-right" data-toggle="modal" data-target="#login">글쓰기</a>
               <ul class="pagination" id="pageNum">
                  <li><a id="previousLi" href="#">Previous</a></li>
                  <li><a id="nextLi" href="#">Next</a></li>
               </ul>
            </nav>
            <form class="form-inline col-xs-12" method="post">
               <div class="form-group">
                  <select class="form-control" name="utilSelect">
                   <!--   <option>제목+내용</option> -->
                     <option>제목</option>
                    <!--  <option>내용</option> -->
                     <option>닉네임</option>
                  <!--    <option>아이디</option> -->
                  </select> <input type="text" class="form-control" id="exampleInputName2"
                     placeholder="검색어를 입력하세요" name="utilInput">
                   <input type="hidden" name="utilSubject" value="이미지게시판"/>                  
                  <button type="submit" class="btn btn-default">확인</button>
               </div>
            </form>

         </div>
         <div class="col-sm-4 hidden-xs">
            <div>
               <!-- <ul class="bxslider">
                  <li><img src="../resources/imgs/bxImgs/iu1.jpg" alt=""
                     class="img-responsive" />
                  <li><img src="../resources/imgs/bxImgs/iu2.jpg" alt=""
                     class="img-responsive" /></li>
                  <li><img src="../resources/imgs/bxImgs/iu3.jpg" alt=""
                     class="img-responsive" /></li>
               </ul> -->
               <jsp:include page="../template/bxslider.jsp" />
            </div>
         </div>
      </div>
   </div>
   <jsp:include page="../template/footer.jsp" flush="false" />
</body>

</html>