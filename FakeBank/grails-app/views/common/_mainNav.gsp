<!-- Fixed navbar -->
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<g:link mapping="home" class="navbar-brand"><span class="glyphicon glyphicon-globe"></span> Fake Bank</g:link>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><g:link mapping="about">About</g:link></li>
				<li><g:link mapping="contact">Contact</g:link></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li class="divider"></li>
						<li class="dropdown-header">Nav header</li>
						<li><a href="#">Separated link</a></li>
						<li><a href="#">One more separated link</a></li>
					</ul>
				</li>
			</ul>
			<g:if test="${request.user}">
				<p class="navbar-text navbar-right">Signed in as <a href="#" class="navbar-link">${request.user.name}</a></p>
				<g:link controller="auth" action="logout" class="navbar-right btn btn-default navbar-btn">logout</g:link>
			</g:if>
			<g:else>
				<g:link controller="auth" action="login" class="navbar-right btn btn-default navbar-btn">Sign in</g:link>
			</g:else>
		</div><!--/.nav-collapse -->
	</div>
</div>
