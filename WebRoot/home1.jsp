<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta charset="UTF-8">
<title>NF4园丁助手登陆</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="./css/font/css/font-awesome.min.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/nf4-login.css">

</head>
<body>
	<div id="screen"></div>
	<div id="bankImages">
		<img alt="" src="1.png">
	</div>

	<div
		style="z-index:101;position: absolute;top: calc(50% - 200px);left: calc(50% - 215px);width: 400px;height: 430px;background: white;">
		<!--box-shadow: 5px 5px 3px #888888;-->
		<div class="container"
			style="height:80%;top: 8%;width: 90%;position: absolute;left: 5%">
			<form class="form-horizontal" role="form" action="login"
				method="POST">
				<div class="form-group">
					<div class="col-sm-12">
						<Lable style="font-size: 220%;"> <span
							style="color:deepskyblue"><i
							class="fa fa-paper-plane fa-lg"></i> <span
							style="font-family: 方正硬笔行书简体;color: #FF6200">园丁助手</span></Lable>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12">
						<Lable style="font-size: 200%;font-family: '微软雅黑 Light'">登陆</Lable>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12">
						<Lable style=";font-family: '微软雅黑 Light'">使用你的工作或学校帐户，或者个人园丁助手帐户。</Lable>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12">
						<input type="text" class="form-control" name="usrname" value="10086"
							id="inputUsrPhoneNum" placeholder="请输入手机号">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12">
						<input type="password" class="form-control" name="password" value="10086"
							id="inputPassword" placeholder="请输入密码">
					</div>
				</div>
				<div id="msg" class="form-group" style="display:none;">
					<div class="col-sm-12">
						<Lable style="color:red;font-family: '微软雅黑 Light'">账户或者密码错误!请核对后再输入</Lable>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12">
						<!--  <button id="nf4-login" class="btn btn-primary btn-block">下一步</button>-->
						<input class="btn btn-primary btn-block" type="submit" value="下一步">
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-12">
						<label>没有账户？<label id="nf4-register"
							style="color: dodgerblue;cursor: pointer">创建一个！</label></label>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script src="js/nf4-login.js"></script>
	<%
		if (request.getParameter("logout") != null) {
			session.setAttribute("loginState", "");
			session.setAttribute("usrname", "");
		}
		String s = (String) session.getAttribute("loginState");
		if (s != null) {
			if (s.equals("login")) {
				RequestDispatcher rd = request.getRequestDispatcher("usercenter.jsp");
				rd.forward(request, response);
			} else if (s.equals("failed")) {
	%><script>$("#msg").css("display", "block");
	</script>
	<%
		}
		}
	%>
</body>
</html>
