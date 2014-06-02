
<%@ page import="com.fakebank.AccountHolder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'accountHolder.label', default: 'AccountHolder')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-accountHolder" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-accountHolder" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list accountHolder">
			
				<g:if test="${accountHolderInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="accountHolder.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${accountHolderInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountHolderInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="accountHolder.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${accountHolderInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountHolderInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="accountHolder.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${accountHolderInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountHolderInstance?.accounts}">
				<li class="fieldcontain">
					<span id="accounts-label" class="property-label"><g:message code="accountHolder.accounts.label" default="Accounts" /></span>
					
						<g:each in="${accountHolderInstance.accounts}" var="a">
						<span class="property-value" aria-labelledby="accounts-label"><g:link controller="account" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:accountHolderInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${accountHolderInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
