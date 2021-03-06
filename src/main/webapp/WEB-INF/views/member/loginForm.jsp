<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width,  initial-scale=1, minimum-scale=1">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container">
		<div class="row">


			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#login-form">
						LOGIN <span class="glyphicon glyphicon-user"></span>
				</a></li>
				<li><a data-toggle="tab" href="#registration-form">
						REGISTER <span class="glyphicon glyphicon-pencil"></span>
				</a></li>
			</ul>
			<div class="tab-content">
				<div id="login-form" class="tab-pane fade in active">
					<div class="wrapper">
						<form class="form-signin" method="post">
							<h2 class="form-signin-heading">LOGIN <span class="glyphicon glyphicon-user"></span></h2>
							<input type="text" class="form-control" name="id" placeholder="Enter your id" required="" autofocus=""  value='<c:if test="${member.id ne null}">${member.id}</c:if>'/> 
							<input type="password" class="form-control" name="pwd" placeholder="Enter your password" required=""  value='<c:if test="${member.pwd ne null}">${member.pwd}</c:if>'/> 
							<label class="checkbox">
								&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								<input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
							</label>
							<button class="btn btn-lg btn-primary btn-block" type="submit" id="btn-login">LOGIN</button>
						</form>
					</div>

				</div>
				<div id="registration-form" class="tab-pane fade">
					<div class="wrapper">
					<form class="form-register" method="post">
						<h2 class="form-signin-heading">REGISTER <span class="glyphicon glyphicon-pencil"></span></h2>
						<div class="form-group">
							<label for="name">Your Name:</label> 
							<input type="text" class="form-control" id="name" placeholder="Enter your name" name="name" required="" value='<c:if test="${info.name ne null}">${info.name}</c:if>'/>
						</div>
						<div class="form-group">
							<label for="newemail">Id:</label> 
							<input type="text" class="form-control" id="id" placeholder="Enter new id" name="id" required="" value='<c:if test="${info.id ne null}">${info.id}</c:if>'/>
						</div>
						<div class="form-group">
							<label for="newpwd">Password:</label> 
							<input type="password" class="form-control" id="pwd" placeholder="New password" name="pwd" required="" value='<c:if test="${info.pwd ne null}">${info.pwd}</c:if>'/>
						</div>
						<button class="btn btn-lg btn-info btn-block" type="submit" id="btn-register">REGISTER</button>
					</form>
					</div>
				</div>

			</div>

		</div>
	</div>

	<script>
		$(document).ready(function() {
			
			$('#btn-login').click(function(){
				$('.form-signin').attr("action","${pageContext.request.contextPath }/home/login.do").submit();
			});
			
			$('#btn-register').click(function(){
				$('.form-register').attr("action","${pageContext.request.contextPath }/home/register.do").submit();
			});

		})
	</script>
</body>
</html>