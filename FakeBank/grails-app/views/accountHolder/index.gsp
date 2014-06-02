
<%@ page import="com.fakebank.AccountHolder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'accountHolder.label', default: 'AccountHolder')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-accountHolder" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-accountHolder" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'accountHolder.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'accountHolder.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'accountHolder.password.label', default: 'Password')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${accountHolderInstanceList}" status="i" var="accountHolderInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${accountHolderInstance.id}">${fieldValue(bean: accountHolderInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: accountHolderInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: accountHolderInstance, field: "password")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${accountHolderInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
