<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>[블로그]</title>
<!-- Bootstrap Core CSS -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Theme CSS -->
<link href="resources/css/clean-blog.min.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script src="resources/js/jquery-3.4.1.js"></script>
<link href="resources/css/bootstrap.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
	a.button {
  font-size: 12px;
  font-weight: 500;
  color: white;
  padding: 5px 10px 0px 10px;
  margin: 0px 10px 10px 0px;
  display: inline-block;
  float: both;
  text-decoration: none;
  width: 80px; height: 25px; 
  -webkit-border-radius: 5px; 
  -moz-border-radius: 5px; 
  border-radius: 5px; 
  background-color: rgba(150,150,150,0.8); 
  -webkit-box-shadow: 0 3px rgba(0,0,0,.75); 
  -moz-box-shadow: 0 3px rgba(58,87,175,.75); 
  box-shadow: 0 3px rgba(130,130,130,0.75);
  transition: all 0.1s linear 0s; 
  top: 0px;
  position: relative;
}

a.button:hover {
  top: 3px;
  text-decoration: none;
  background-color: rgba(150,150,150,0.8);
  -webkit-box-shadow: none; 
  -moz-box-shadow: none; 
  box-shadow: none;
  
}

.btndiv{
  clear: both;
}

.divnew{
  margin-left:550px;
  display: inline-block;
}

.hfive{
  padding: 24px 5px 0px 0px;
  margin: 0px 0px 0px 0px;
  text-decoration: none;
  color: #777777;
  font-size: 12px;
  font-weight: 900;
  letter-spacing: 1px;
}

</style>

<body>
	<c:if test="${requestScope.singupresult == true}">
		<script>alert("회원등록 완료");</script>
	</c:if>
	
	
	<!-- 메뉴 네비게이션 -->
    <nav class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">
                    	Toggle navigation
                    </span>
                    Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="main">GO BLOG</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            	<%-- <div class="divnew" id="bs-example-navbar-collapse-1">
	                <c:choose>
		                <c:when test="${sessionScope.user_id != null}">
		                	<h5 class="hfive">${sessionScope.user_id}님 환영합니다 <a href="<c:url value='logout'/>" style="text-decoration: none;" class="hfive">　로그아웃</a></h5>
		                </c:when>
	                </c:choose>
            	</div> --%>
                <ul class="nav navbar-nav navbar-right">
                	<c:choose>
                		<c:when test="${sessionScope.user_id != null}">
	                	<li>
	                		<div style="margin-right: -25px;">
		                		<h5 class="hfive">${sessionScope.user_id}님 환영합니다</h5>
	                		</div>
	                	</li>
	                	<li>
	                		<a href="<c:url value='logout'/>" style="text-decoration: none;" class="hfive">　로그아웃</a>
	                	</li>
                		</c:when>
                	</c:choose>
                    <li>
                        <a href="main">Home</a>
                    </li>
                    <li>
                        <a href="about">Gallery</a>
                    </li>
                    <li>
                        <a href="postlist">Post</a>
                    </li>
                    <li>
                        <a href="contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    
    
    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('resources/image/blog_2.png');">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="site-heading">
                        <h1>Go Blog</h1>
                        <c:choose>
                        	<c:when test="${sessionScope.user_id == null}">
		                        <div class="btndiv">
			                        <hr class="small">
		                        	<a href="boardlogin" class="button">로그인</a>
		                        	<a href="boardsignup" class="button">회원가입</a>
		                        </div>
                        	</c:when>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </header>
    
    
    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <ul class="pager">
            	<!-- 게시판 검색기능 -->
					<form action="<c:url value='postlist'/>" method="get">
						<select name="searchItem" style="height: 26.3px;">
							<option value="title" selected="selected">제목</option>
							<option value="user_id">작성자</option>
							<option value="content">내용</option>
						</select>
						<input type="text" name="searchKeyword" style="26.3px;">
						<button type="submit">검색</button>
						<button type="submit">게시글 이동</button>
					</form>
				<!-- 게시판 검색기능 -->
                </ul>
                <hr>
            </div>
        </div>
    </div> 
    <!-- 조회수 높은 게시글 내용 읽어오기 -->
    <!-- Main Content -->
    <article>
    <div class="container">
    <c:forEach items="${requestScope.hitlist}" var="hitlist">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <!-- Contact Form - Enter your email address on line 19 of the mail/contact_me.php file to make this form work. -->
                <!-- WARNING: Some web hosts do not allow emails to be sent through forms to common mail hosts like Gmail or Yahoo. It's recommended that you use a private domain email address! -->
                <!-- NOTE: To use the contact form, your site must be on a live web host with PHP! The form will not work locally! -->
                	<table class="table">
                		<tr>
                			<th colspan="4">
                				<p>HITS POST</p>
                			</th>
                		</tr>
                		<tr>
                			<th>
		                		<div class="row control-group">
			                        <div style="border: none;" class="form-group col-xs-12 floating-label-form-group controls">
			                            <label>No.</label>
			                        	<div>번호</div>
		                            	<div id="post_no">${hitlist.post_no}</div>
		                        	</div>
		                   		</div>
                			</th>
                			<th class="text-center">
			                    <div class="row control-group">
			                        <div style="border: none;" class="form-group col-xs-12 floating-label-form-group controls">
			                            <label>NAME</label>
			                            <div>작성자</div>
			                            <div id="user_id">${hitlist.user_id}</div>
			                        </div>
			                    </div>
                			</th>
                			<th colspan="2" class="text-right">
			                    <div class="row control-group">
			                        <div style="border: none;" class="form-group col-xs-12 floating-label-form-group controls">
			                            <label>Date</label>
			                            <div>작성일</div>
			                            <div>${hitlist.inputdate}</div>
			                        </div>
			                    </div>
                			</th>
                		</tr>
                		<tr>
                			<th colspan="4">
			                    <div class="row control-group">
			                        <div style="border: none;" class="form-group col-xs-12 floating-label-form-group controls">
			                            <label>TITLE</label>
			                            <div>제목</div>
			                            <div>${hitlist.title}</div>
			                        </div>
			                    </div>
                			</th>
                		</tr>
                		<tr>
                			<th colspan="4">
			                    <div class="row control-group">
			                        <div style="border: none;" class="form-group col-xs-12 floating-label-form-group controls">
			                            <label>CONTENT</label>
			                            <div>내용</div>
			                            <div>${hitlist.content}</div>
			                        </div>
			                    </div>
                			</th>
                		</tr>
                		<tr>
                			<th colspan="4">
			                    <div class="row control-group">
			                        <div style="border-bottom: none;" class="form-group col-xs-12 floating-label-form-group controls" >
			                            <label>HASHTAG</label>
			                            <div >HASHTAG</div>
				                            <c:forTokens items="${tag_name}" var="tag_name" delims=",">
					                            	<a href="<c:url value='tagSearch?tag_name=${tag_name}' />">#${tag_name}</a>
					                        </c:forTokens>
			                        </div>
			                    </div>
                			</th>
                		</tr>
                		<tr>
                			<th>
                				<div class="control-group">
                					<c:choose>
					                  	<c:when test="${sessionScope.user_id != null}">
						                  	<c:choose>
						                  		<c:when test="${like_check == 1}">
								                  <div style="top: 18px; border-bottom: none;" class="form-group col-xs-12 floating-label-form-group controls">
									                  <a href="javascript:like_func();"><img id="like_img" src="resources/image/like2.png" width="25" height="25" style="margin-left: 15px"></a>
										              <span style="margin-left: 23px;" id="like_cnt">${like_cnt}</span>
								                  </div>
						                  		</c:when>
						                  		<c:otherwise>
							                  		<div style="top: 18px; border-bottom: none;" class="form-group col-xs-12 floating-label-form-group controls">
								                  		<a href="javascript:like_func();"><img id="like_img" src="resources/image/like1.png" width="25" height="25" style="margin-left: 15px"></a>
										                <span style="margin-left: 23px;" id="like_cnt">${like_cnt}</span>
								                  	</div>
						                  		</c:otherwise>
					                  		</c:choose>
					                  	</c:when>
					                  	<c:when test="${sessionScope.user_id == null}">
					                  		<div style="top: 18px; border-bottom: none;" class="form-group col-xs-12 floating-label-form-group controls btn_like">
						                  		<a><img src="resources/image/like1.png" width="25" height="25" style="margin-left: 13px" onclick="like_login()"></a>
						                  		<span style="margin-left: 13px;" id="like_cnt">${like_cnt}</span>
					                  		</div>
				                  		</c:when>
				                  	</c:choose>
			                    </div>
                			</th>
                			<th>
                				<div class="control-group">
	                				<div style="top: 18px; border-bottom: none;" class="form-group col-xs-12 floating-label-form-group controls btn_comment">
	                					<a>
	                						<img src="resources/image/comment.png" width="30" height="30">
	                					</a>
										<span>${replyCnt}</span>
									</div>
								</div>
                			</th>
                			<th>
			                    <div class="row control-group">
			                        <div style="border-bottom: none;" class="form-group col-xs-12 floating-label-form-group controls">
			                            <label>Hit</label>
			                            <div>조회${hitlist.hit}</div>
			                        </div>
			                    </div>
                			</th>
                			<th colspan="1">
			                    <div class="row control-group">
			                        <div style="border-bottom: none;" class="form-group col-xs-12 floating-label-form-group controls">
			                            <label>FILE</label>
			                            <div>첨부파일   ${hitlist.originalFilename}</div>
			                        </div>
			                    </div>
                			</th>
                		</tr>
                		<tr>
                			<th>
		                    <div id="success"></div>
		                    <div class="row">
		                        <div class="form-group col-xs-12">
		                        	<c:if test="${sessionScope.user_id == hitlist.user_id}">
			                            <a href="<c:url value='postUpdateForm?post_no=${hitlist.post_no}' />">
			                            	<button type="button" class="btn btn-default">수정</button>
			                            </a>
		                            	<button type="button" class="btn btn-default" onclick="postDelete()">삭제</button>
									</c:if>
		                        </div>
		                    </div>
                			</th>
                		</tr>
                	</table>
                	<hr>
                	<div class="btn_comment_icon" hidden="">
                	<!-- 댓글 입력 -->
					<form action="<c:url value='hitReplyWrite' />" method="post">
						<input type="hidden" name="post_no" value="${hitlist.post_no}" />
						<table id="replyinput" class="table table-hover">
							<tr>
								<td>
									<c:choose>
										<c:when test="${sessionScope.user_id != null}">
											<textarea rows="2" cols="100" id="replytext" name="replytext" required="required" placeholder="comment"></textarea>
											<input id="replysubmit" type="submit" value="입력" >
										</c:when>
										<c:when test="${sessionScope.user_id == null}">
											<textarea rows="2" cols="100" id="replytext" name="replytext" required="required" placeholder="comment"></textarea>
											<div class="rs_btn">
												<input type="submit" value="입력">
											</div>
			                  			</c:when>
									</c:choose>
								</td>
							</tr>
						</table>
					</form>
					<!-- 댓글 출력 -->
					<div id="replydisplay">
					<table class="reply table table-hover" >
						<c:forEach items="${hitReplyList}" var="reply">
							<tr>
								<td class="replytext ">
									${reply.replytext}
								</td>
								<td class="replyid">
									<span>${reply.user_id} </span>
								</td>
								<td class="replydate">
									<span>${reply.inputdate}</span>
								</td>
								<c:if test="${sessionScope.user_id == reply.user_id }">
									<td></td><td></td><td></td><td></td><td></td><td></td><td></td>
									<td></td><td></td><td></td><td></td><td></td><td></td><td></td>
									<td></td><td></td><td></td><td></td><td></td><td></td><td></td>
									<td></td><td></td><td></td><td></td><td></td><td></td><td></td>
									<td class="replybtn">
										<input type="button" class="btn btn-outline-success" value="삭제" onclick="replyDelete('${reply.replynum}')" >
									</td>
								</c:if>
							</tr>
						</c:forEach>
					</table>
					</div> 
				<!-- end #replydisplay -->
				</div>
            </div>
        </div>
	</c:forEach>
        </div>
    </article>
    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <p class="copyright text-muted">Copyright &copy; woohyeok jung 2020</p>
                </div>
            </div>
        </div>
    </footer>
	<!-- jQuery -->
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	
	<!-- Bootstrap Core JavaScript -->
	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	
	<!-- Contact Form JavaScript -->
	<script src="resources/js/jqBootstrapValidation.js"></script>
	<script src="resources/js/contact_me.js"></script>
	
	<!-- Theme JavaScript -->
	<script src="resources/js/clean-blog.min.js"></script>
    
    <!-- 좋아요 로그인경고 -->
<script type="text/javascript">
	$(function(){
	  $('.btn_like').click(function(){
		  $('.btn_like').html("<a href='boardlogin' style='margin-left: 13px'>로그인</a>");
	  });
	});
</script>

<!-- 댓글입력 로그인경고 -->
<script type="text/javascript">
	$(function(){
	  $('.rs_btn').click(function(){
		  $('.rs_btn').html("<a href='boardlogin'>로그인</a>");
	  });
	});
</script>

<!-- 댓글창 토글 -->
<script type="text/javascript">
	$(function(){
	  $('.btn_comment').click(function(){
		  $('.btn_comment_icon').toggle("fast");
	  });
	});
</script>

<!-- 댓글창 삭제-->
<script type="text/javascript">
	function replyDelete(replynum) {
		if(confirm("댓글을 삭제하시겠습니까?")) {
			location.href="<c:url value='hitReplyDelete?replynum="+ replynum +"&post_no=${vo.post_no}' />";
		}
	}
</script>

<script type="text/javascript">
/* 좋아요 */
function like_func(){
  var post_no = $('#post_no').val();
  //var //user_id = $('#user_id', frm_read).val();
  //console.log("post_no, user_id : " + post_no +","+ user_id);
  
  $.ajax({
    url: "like_to",
    type: "GET",
    cache: false,
    dataType: "json",
    data: 'post_no=' + post_no,
    success: function(data) {
      var like_img = '';
      
      if(data.like_check == 0){
        like_img = "resources/image/like1.png";
      } else {
        like_img = "resources/image/like2.png";
      }      
      $('#like_img').attr('src', like_img);
      $('#like_cnt').html(data.like_cnt);
      $('#like_check').html(data.like_check);
    },
    error: function(request, status, error){
      alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
    }
  });
}
</script>
</body>
</html>