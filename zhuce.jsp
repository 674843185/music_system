<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
<script  type="text/javascript" src="assets/js/jquery-2.1.1.js"></script>
    <title>悦听悦动听</title>

    <!-- Bootstrap core CSS -->
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
<script type="text/javascript">
function loadimage(){
	document.getElementById("randImage").src = "image.jsp?"+Math.random();
}
$(document).ready(function(){
	
	$("#userName").blur(function (){
		if($("#userName").val()==""){
			$("#can").html("用户名不能为空");
			$("#zhuce").attr({"disabled":"disabled"});
			return;
		}
		 $.post("user?action=add",{userName: $("#userName").val()},function(flag){
				var result=eval('('+flag+')');
				if(result){
					$("#can").html("用户名可用");
					$("#zhuce").removeAttr("disabled");//将按钮可用
				}
				else{
					$("#can").html("用户名不可用");
					$("#zhuce").attr({"disabled":"disabled"});
				}
				
			})
	});

	});
	function check() {
		var one=$('#password').val();
		var two=$('#password2').val();
		if(one!=two){
			$("#error").html("密码不相同");
			return false;
		}
		else{
			
			return true;
		}
	}

</script>
  <body>

    <div class="container">

      <form class="form-signin" action="user?action=zhuce" method="post" onsubmit="return check()">
        <h2 class="form-signin-heading">悦听悦动听</h2>
        <label for="inputEmail" class="sr-only">用户名</label>
        <input type="text" id="userName" name="userName" class="form-control" placeholder="用户名" required autofocus value="${userName }">  <font id="can" color="red"></font>   
        <label for="inputPassword" class="sr-only">密码</label>
        <input type="password" id="password" name="password" class="form-control" placeholder="密码" required value="${password }">
        <label for="inputPassword" class="sr-only">重复密码</label>
        <input type="password" id="password2" name="password2" class="form-control" placeholder="重复密码" required value="${password }">
       
        <INPUT  type="text"  class="form-control" placeholder="验证码" 
							value="${imageCode }" name="imageCode" id="imageCode"> 
		
         <button class="btn btn-primary btn-lg" id="zhuce" type="submit">注册</button>&nbsp;&nbsp;&nbsp;
         <img
							onclick="javascript:loadimage();" title="换一张试试" name="randImage"
							id="randImage" src="image.jsp" width="60" height="20" border="1"
							align="absmiddle">
        <button class="btn  btn-primary btn-lg" type="button" style="float: right;" onclick="javascript:history.back()">返回</button>
         <font id="error" color="red">${error }</font>   
      </form>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
