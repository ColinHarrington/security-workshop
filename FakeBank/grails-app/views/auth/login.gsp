<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<title>Login</title>
	<meta name="layout" content="main">
</head>

<body>
<h1>Sign in</h1>
<g:form action="authenticate" class="form-horizontal" role="form">
	<div class="row">
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">Email</label>

			<div class="col-sm-10">
				<input type="text" class="form-control" id="inputEmail3" placeholder="Email" name="username">
			</div>
		</div>

		<div class="form-group">
			<label for="inputPassword3" class="col-sm-2 control-label">Password</label>

			<div class="col-sm-10">
				<input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="password">
			</div>
		</div>

		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">Sign in</button>
			</div>
		</div>
	</div>
	</div>
</g:form>
</body>