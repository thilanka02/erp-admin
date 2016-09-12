<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>

<title>Login Page</title>


<!-- Bootstrap Core CSS -->
<link href="<c:url value='/styles/css/bootstrap.min.css' />"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="<c:url value='/styles/css/sb-admin.css' />" rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="<c:url value='/styles/font-awesome/css/font-awesome.min.css' />"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Please Sign In</h3>
					</div>
					<div class="panel-body">
						<c:url var="loginUrl" value="/login" />
						<form action="${loginUrl}" method="post">
							<fieldset>
								<c:if test="${param.error != null}">
									<div class="alert alert-danger">
										<p>Invalid username and password.</p>
									</div>
								</c:if>
								<c:if test="${param.logout != null}">
									<div class="alert alert-success">
										<p>You have been logged out successfully.</p>
									</div>
								</c:if>
								<div class="form-group">
									<input class="form-control" placeholder="Username"
										id="username" name="ssoId" autofocus required="required">
								</div>
								<div class="form-group">
									<input type="password" class="form-control" placeholder="Password" 
										id="password" name="password" placeholder="Enter Password"
										required>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" id="rememberme"
										name="remember-me">Remember Me
									</label>
								</div>
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
								<!-- Change this to a button or input when using this as a form -->
								<!-- <a href="index.html" class="btn btn-lg btn-success btn-block">Login</a> -->
								<input type="submit" class="btn btn-lg btn-success btn-block"
									value="Log in">
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>





	<script src="<c:url value='/scripts/js/jquery.js' />"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="<c:url value='/scripts/js/bootstrap.min.js' />"></script>

</body>
</html>