
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="shortcut icon" href="../../assets/ico/favicon.ico">

	<title>Fake Bank - <g:layoutTitle default=""/> </title>

	<asset:stylesheet src="application.css"/>
	<asset:javascript src="application.js"/>
</head>

<body role="document">

<g:render template="/common/mainNav"/>

<div id="maincontainer" class="container theme-showcase" role="main">
	<g:if test="${flash.message}">
		<div class="alert alert-info">${flash.message}
		</div>
	</g:if>
<g:layoutBody/>

</div> <!-- /container -->
</body>
</html>


