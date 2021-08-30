<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="resources/css/bootstrap.css" rel="stylesheet">
    
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
    
</head>
<body>

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
    <header class="intro-header" style="background-image: url('resources/image/about_1.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="page-heading">
                        <h1>GO BLOG</h1>
                        <hr class="small">
                        <span class="subheading">일상에서 일어난 일을 포스팅 해보세요.</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <p>이 블로그 는 자기의 일상에서 일어난 일들을 간단하게 포스팅 하고  그것을 상대방과 공유할수 있는  블로그 입니다.</p>
            </div>
        </div>
    </div>
    
    
	    <!-- Page Content 갤러리 형태 폼-->
	<div class="container">
	
	  <h1 class="font-weight-light text-center text-lg-left mt-4 mb-0">Gallery</h1>
	
	  <hr class="mt-2 mb-5">
	
	  <div class="row text-center text-lg-left">
	
	    <div class="col-lg-3 col-md-4 col-6">
	      <a href="resources/image/board_2.png" class="d-block mb-4 h-100">
	            <img class="img-fluid img-thumbnail" src="resources/image/board_2.png" alt="">
	          </a>
	    </div>
	    <div class="col-lg-3 col-md-4 col-6">
	      <a href="resources/image/blog_2.png" class="d-block mb-4 h-100">
	            <img class="img-fluid img-thumbnail" src="resources/image/blog_2.png" alt="">
	          </a>
	    </div>
	    <div class="col-lg-3 col-md-4 col-6">
	      <a href="#" class="d-block mb-4 h-100">
	            <img class="img-fluid img-thumbnail" src="https://source.unsplash.com/EUfxH-pze7s/400x300" alt="">
	          </a>
	    </div>
	    <div class="col-lg-3 col-md-4 col-6">
	      <a href="#" class="d-block mb-4 h-100">
	            <img class="img-fluid img-thumbnail" src="https://source.unsplash.com/M185_qYH8vg/400x300" alt="">
	          </a>
	    </div>
	    
	  </div>
	
	</div>
	<!-- Page Content 갤러리 형태 폼-->

    <hr>
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
</body>
</html>