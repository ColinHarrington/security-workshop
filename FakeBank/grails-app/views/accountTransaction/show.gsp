
<%@ page import="com.fakebank.AccountTransaction" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'accountTransaction.label', default: 'AccountTransaction')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-accountTransaction" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-accountTransaction" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list accountTransaction">
			
				<g:if test="${accountTransactionInstance?.amount}">
				<li class="fieldcontain">
					<span id="amount-label" class="property-label"><g:message code="accountTransaction.amount.label" default="Amount" /></span>
					
						<span class="property-value" aria-labelledby="amount-label"><g:fieldValue bean="${accountTransactionInstance}" field="amount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountTransactionInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="accountTransaction.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${accountTransactionInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountTransactionInstance?.settled}">
				<li class="fieldcontain">
					<span id="settled-label" class="property-label"><g:message code="accountTransaction.settled.label" default="Settled" /></span>
					
						<span class="property-value" aria-labelledby="settled-label"><g:formatDate date="${accountTransactionInstance?.settled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountTransactionInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="accountTransaction.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${accountTransactionInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountTransactionInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="accountTransaction.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${accountTransactionInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountTransactionInstance?.account}">
				<li class="fieldcontain">
					<span id="account-label" class="property-label"><g:message code="accountTransaction.account.label" default="Account" /></span>
					
						<span class="property-value" aria-labelledby="account-label"><g:link controller="account" action="show" id="${accountTransactionInstance?.account?.id}">${accountTransactionInstance?.account?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:accountTransactionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${accountTransactionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
