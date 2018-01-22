 function replyCall(param){
  $.ajax({
                  'url' : '/replyCall',
                  'data' : param,
                  'success' : function(data) {
                        console.log("댓글호출성공"+ data.list.length +"나오냐"+"3tddd44t44");
                     $('#replysTotal').append("<div id='replys'>");
                     
                     for (var i = 0; i < data.list.length; i++) {/* 댓글수만큼 반복문*/
                        $('#replysTotal')
                              .append(
                                    "<li class='list-group-item'><span class='btn btn-info' disabled='disabled'>"
                            		  	+ data.list[i].id+ "</span>"                         		  
                                          +"<span class='btn btn-warning' disabled='disabled'>"+data.list[i].nalja+"</span> "
                                          +"<span class='btn btn-danger' style='float: right;'>신고</span> <br /> <br />"                                          
                                                                                                                
                                          + "<div id='replyContents'>"+data.list[i].contents+"</div>"
                                          +"<p><img src='"
                              
                              
                              );}
                                          
                     $('#replysTotal').append("</div>");
                  },
                  'err' : function() {
                     console.log("댓글 호출 실패");
                  }
               });      
 }
              
