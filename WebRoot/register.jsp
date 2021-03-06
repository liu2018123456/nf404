00 6N<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>注册页面</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet"href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body
	style="background-height:100%;background-attachment:fixed;background-image:url(http://120.24.186.116/image/register_bg.jpg)">
	<div class="container">
		<div class="row clearfix" style="margin-top:40px">
			<div class="col-md-12 column" style="height:60px">
				<div style="float:left;color:#CCFFCC">
					<h2>
						<span style="color: orange;font-family: 微软雅黑 Light;">NF4</span> <span
							style="font-family: 方正硬笔行书简体;color: deepskyblue">园丁助手</span>账号注册
					</h2>
				</div>
				<div style="float:right;color:#FFFFCC">
					<h3>
						已有账号?去<a style="text-decoration:none;color:#CCFFFF"
							href="/nf4/home.jsp">登陆</a>
					</h3>
				</div>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-12 column"
				style="border-radius:15px 15px 15px 15px;background:#e9e7ef;padding-bottom:15px;;padding-top:15px">
				<div class="row clearfix" style="">
					<div class="col-md-6 column ">
						<div class="carousel slide" id="carousel-385407">
							<ol class="carousel-indicators">
								<li class="active" data-slide-to="0"
									data-target="#carousel-385407"></li>
								<li data-slide-to="1" data-target="#carousel-385407"></li>
								<li data-slide-to="2" data-target="#carousel-385407"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item active">
									<img alt="" style="hegiht:100%"
										src="http://120.24.186.116/image/register_ppt_1.jpg" />
									<div class="carousel-caption">
										<p>
											通过登陆自己的相关账号来将自己所创建的幻灯片保存至云端，可以通过手机、平板电脑或者其它计算机随时查看、编辑、删除幻灯片。
										</p>
									</div>
								</div>
								<div class="item">
									<img alt=""
										src="http://120.24.186.116/image/register_ppt_2.jpg" />
									<div class="carousel-caption">
										<p>通过丰富的主题、字体、相关动画为幻灯片制作者提供舒心的制作过程和精彩的视觉体验。</p>
									</div>
								</div>
								<div class="item">
									<img alt=""
										src="http://120.24.186.116/image/register_ppt_3.jpg" />
									<div class="carousel-caption">
										<p>
											在线编辑、查看、分享幻灯片的功能，使得用户可以不下载相关软件只需浏览器即可在线操作，同时实现了同一用户在不同地点，不同机器上对同一文件的编辑功能。
										</p>
									</div>
								</div>
							</div>
							<a class="left carousel-control" href="#carousel-385407"
								data-slide="prev"><span
								class="glyphicon glyphicon-chevron-left"></span></a> <a
								class="right carousel-control" href="#carousel-385407"
								data-slide="next"><span
								class="glyphicon glyphicon-chevron-right"></span></a>
						</div>
					</div>
					<div class="col-md-6 column">
						<form class="form-horizontal" role="form" action="register.do"
							name="form" method="post">
							<div class="form-group">
								<label for="inputPhone" class="col-sm-2 control-label">账号</label>
								<div class="col-sm-7">
									<input class="form-control" id="inputPhone" type="text"
										name="phone" placeholder="输入您的手机号,以做为账号" />
								</div>
								<label for="inputPhone" id="warning_Phone"
									class="col-sm-3 control-label "
									style="text-align:left;color:#CC0033"></label>
							</div>
							<div class="form-group">
								<label for="inputPassword" class="col-sm-2 control-label">密码</label>
								<div class="col-sm-7">
									<input class="form-control" id="inputPassword" type="password"
										name="password" placeholder="输入密码" />
								</div>
								<label for="inputPassword" id="warning_password"
									class="col-sm-3 control-label"
									style="text-align:left;color:#CC0033"></label>
							</div>

							<div class="form-group">
								<label for="repassword" class="col-sm-2 control-label">确认密码</label>
								<div class="col-sm-7">
									<input class="form-control" id="repassword" type="password"
										name="repassword" placeholder="再次输入密码" />
								</div>
								<label for="repassword" id="warning_repassword"
									class="col-sm-3 control-label"
									style="text-align:left;color:#CC0033"></label>
							</div>

							<div class="form-group">
								<label for="question" class="col-sm-2 control-label">设置问题</label>
								<div class="col-sm-7">
									<input class="form-control" id="question" type="text"
										id="question" name="question" name="repassword"
										placeholder="设置一个问题，在找回密码时进行验证" />
								</div>
								<label for="question" id="warning_question"
									class="col-sm-3 control-label"
									style="text-align:left;color:#CC0033"></label>
							</div>

							<div class="form-group">
								<label for="anwser" class="col-sm-2 control-label">设置答案</label>
								<div class="col-sm-7">
									<input class="form-control" id="anwser" type="text"
										name="anwser" placeholder="设置验证问题的答案" />
								</div>
								<label for="anwser" id="warning_anwser"
									class="col-sm-3 control-label"
									style="text-align:left;color:#CC0033"></label>
							</div>
							<div class="form-group"></div>
							<div class="form-group"></div>
						</form>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-7 col-sm-offset-3">
								<button class="btn btn-primary btn-block btn-lg" id="register">注册</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		var checkPhone = "failed";
		var checkPwd = "failed";
		var checkRePwd = "failed";
		var checkQuestion = "failed";
		var checkAnwser = "failed";
		$("#inputPhone").blur(function() {
			$("#warning_Phone").html("验证手机号中...");
			if ($(this).val() == "") {
				$("#warning_Phone").html("X 账号不能为空");
				$(this).css("border", "2px solid red");
				checkPhone = "failed";
				return;
			} else {
				if (!(/^1(3|4|5|7|8)\d{9}$/.test($(this).val()))) {
					$("#warning_Phone").html("X 手机号码有误");
					$(this).css("border", "2px solid red");
					checkPhone = "failed";
					return;
				}
				$.ajax({ 
		        	type: "get", 
		       		url: "register.do", 
		       		async:false, 
		       		data:{inputPhone:$("#inputPhone").val()},
		        	success: function(msg){ 
		        		if(msg=="false"){
							$("#warning_Phone").html("X 该号码已被注册");
							$("#inputPhone").css("border", "2px solid red");
							checkPhone = "failed";
						}
						else{
							$("#warning_Phone").html("<span style='color:green'>√ 通过</span>");
							$("#inputPhone").css("border", "2px solid green");
							checkPhone = "success";
						}
		        	} 
				});
			}
		})
		$("#inputPassword").blur(function() {
			if ($(this).val() == "") {
				$("#warning_password").html("X 密码不能为空");
				$(this).css("border", "2px solid red");
				checkPwd = "failed";
			} else {
				$("#warning_password").html("<span style='color:green'>√ 通过</span>");
				$(this).css("border", "2px solid green");
				checkPwd = "success";
			}
		})
		$("#repassword").blur(function() {
			if ($(this).val() != $("#inputPassword").val()) {
				$("#warning_repassword").html("X 输入的密码不同");
				$(this).css("border", "2px solid red");
				checkRePwd = "failed";
			} else {
				$("#warning_repassword").html("<span style='color:green'>√ 通过</span>");
				$(this).css("border", "2px solid green");
				checkRePwd = "success";
			}
		})
	
		$("#question").blur(function() {
			if ($(this).val() == "") {
				$("#warning_question").html("X 问题不能为空");
				$(this).css("border", "2px solid red");
				checkQuestion = "failed";
			} else {
				$("#warning_question").html("<span style='color:green'>√ 通过</span>");
				$(this).css("border", "2px solid green");
				checkQuestion = "success";
			}
		})
		$("#anwser").blur(function() {
			if ($(this).val() == "") {
				$("#warning_anwser").html("X 答案不能为空");
				$(this).css("border", "2px solid red");
				checkAnwser = "failed";
			} else {
				$("#warning_anwser").html("<span style='color:green'>√ 通过</span>");
				$(this).css("border", "2px solid green");
				checkAnwser = "success";
			}
		})
		$("#register").click(function() {
			$('#inputPhone').trigger("blur");
			$('#anwser').trigger("blur");
			$('#inputPassword').trigger("blur");
			$('#repassword').trigger("blur");
			$('#question').trigger("blur");
			if (checkPhone != "success" || checkPwd != "success" || checkRePwd != "success" || checkQuestion != "success" || checkAnwser != "success") {
				alert("还有尚未完成的项！");
			} else {
				alert("注册成功!");
				$("form").submit();
			}
		})
	</script>
</body>
</html>
