<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[로그인]</title>
<style>
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, 
pre, form, fieldset, input, textarea, p, blockquote, th, td { 
  padding:0;
  margin:0;}

fieldset, img {border:0}

ol, ul, li {list-style:none}

:focus {outline:none}

body,
input,
textarea,
select {
  font-family: 'Open Sans', sans-serif;
  font-size: 16px;
  color: #4c4c4c;
}

p {
  font-size: 12px;
  width: 150px;
  display: inline-block;
  margin-left: 18px;
}
h1 {
  font-size: 32px;
  font-weight: 300;
  color: #4c4c4c;
  text-align: center;
  padding-top: 10px;
  margin-bottom: 10px; 
  
  font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
}

html{
  background-image:url('resources/image/board_2.png');
  background-color: #ffffff;
}

.testbox {
  margin: 140px auto;
  width: 335px; 
  height: 280px; 
  -webkit-border-radius: 8px/7px; 
  -moz-border-radius: 8px/7px; 
  border-radius: 8px/7px; 
  background-color: #ebebeb; 
  background-color: rgba( 255, 255, 255, 0.6 );
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
}


form{
  margin: 0 30px;
}



hr{
  color: #a9a9a9;
  opacity: 0.5;
}

input[type=text],input[type=password],input[type=email]{
  width: 200px; 
  height: 30px; 
  -webkit-border-radius: 0px 4px 4px 0px/5px 5px 4px 4px; 
  -moz-border-radius: 0px 4px 4px 0px/0px 0px 4px 4px; 
  border-radius: 0px 4px 4px 0px/5px 5px 4px 4px; 
  background-color: #fff; 
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  border: solid 1px #cbc9c9;
  margin-left: -5px;
  margin-top: 13px; 
  padding-left: 10px;
}

#idcheck{
  margin-top: -20px; 
  margin-left: 200px;
}

#alert-success{

  margin-right: 30px;
  margin-left: 60px;
}

#alert-danger{

  margin-right: 30px;
  margin-left: 30px;
}

input[type=text],input[type=password],input[type=email]{
  margin-bottom: 25px;
}



#icon {
  display: inline-block;
  width: 30px;
  background-color: #3a57af;
  padding: 8px 0px 8px 15px;
  margin-left: 15px;
  -webkit-border-radius: 4px 0px 0px 4px; 
  -moz-border-radius: 4px 0px 0px 4px; 
  border-radius: 4px 0px 0px 4px;
  color: white;
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.09);
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  border: solid 0px #cbc9c9;
}

.gender {
  margin-left: 30px;
  margin-bottom: 30px;
}

.accounttype{
  margin-left: 8px;
  margin-top: 20px;
}

a.button {
  font-size: 12px;
  font-weight: 500;
  color: white;
  padding: 5px 10px 0px 10px;
  margin: 0px 10px 15px 0px;
  display: inline-block;
  float: right;
  text-decoration: none;
  width: 40px; height: 20px; 
  -webkit-border-radius: 5px; 
  -moz-border-radius: 5px; 
  border-radius: 5px; 
  background-color: #3a57af; 
  -webkit-box-shadow: 0 3px rgba(58,87,175,.75); 
  -moz-box-shadow: 0 3px rgba(58,87,175,.75); 
  box-shadow: 0 3px rgba(58,87,175,.75);
  transition: all 0.1s linear 0s; 
  top: 0px;
  position: relative;
}

a.button:hover {
  top: 3px;
  background-color:#2e458b;
  -webkit-box-shadow: none; 
  -moz-box-shadow: none; 
  box-shadow: none;
  
}

</style>
<script src="resources/js/jquery-3.4.1.js"></script>
<c:if test="${requestScope.loginresult == false }">
	<script type="text/javascript">
		alert("ID 또는 비밀번호가 일치하지 않습니다");
	</script>
</c:if>
</head>
<body>
  <div class="testbox">
  <h1>로 그 인</h1>

  <form action="login" id="loginform" method="post">
  <hr>
  <label id="icon" for="user_id"><i class="icon-envelope "></i></label>
  <input type="text" name="user_id" id="user_id" placeholder="Id" required/>
  <div class="check_font" id="idcheck"></div>
  <hr>
  <label id="icon" for="user_pw"><i class="icon-user"></i></label>
  <input type="password" name="user_pw" id="user_pw" placeholder="Password" required/>
  <hr>
  <a href="#" class="button" onclick="document.getElementById('loginform').submit();">로그인</a>
  </form>
  
</div>
</body>
</html>