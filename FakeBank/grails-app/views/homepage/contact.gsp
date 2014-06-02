<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<title>Contact</title>
	<meta name="layout" content="main">
</head>

<body>
<div id="contact_form" class="row">
	<div class="col-12 col-sm-12 col-lg-12">
		<h2>Tell Us What You Think...</h2>

		<p>We appreciate any feedback about your overall experience on our site or how to make it even better.  Please fill in the below form with any comments and we will get back to you.</p>

		<form role="form" id="feedbackForm">
			<div class="form-group has-feedback">
				<label class="control-label" for="name">Name</label>
				<input type="text" class="form-control" id="name" name="name">
				<span class="glyphicon glyphicon-asterisk form-control-feedback"></span>
				<span class="help-block" style="display: none;">Please enter your name.</span>
			</div>

			<div class="form-group has-feedback">
				<label class="control-label" for="name">Phone</label>
				<input type="text" class="form-control" id="phone" name="phone" placeholder="XXX-XXX-XXXX">
				<span class="glyphicon glyphicon-asterisk form-control-feedback"></span>
				<span class="help-block" style="display: none;">Please enter a valid phone number.  Must be ten digits long.</span>
			</div>

			<div class="form-group has-feedback">
				<label class="control-label" for="email">Email Address</label>
				<input type="email" class="form-control" id="email" name="email">
				<span class="glyphicon glyphicon-asterisk form-control-feedback"></span>
				<span class="help-block" style="display: none;">Please enter a valid e-mail address.</span>
			</div>

			<div class="form-group has-feedback">
				<label class="control-label" for="message">Message*</label>
				<textarea rows="10" cols="100" class="form-control" id="message" name="message"></textarea>
				<span class="help-block" style="display: none;">Please enter a message.</span>
			</div>

			<span class="help-block" style="display: none;">Please enter a the security code.</span>
			<button type="submit" id="feedbackSubmit" class="btn btn-primary btn-lg" style="display: block; margin-top: 10px;">Send Feedback</button>
		</form>

		<h3>* Indicates a required field.</h3>
	</div><!--/span-->
</div><!--/row-->
<hr>

</body>
</html>