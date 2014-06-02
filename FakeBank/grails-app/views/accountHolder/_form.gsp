<%@ page import="com.fakebank.AccountHolder" %>



<div class="fieldcontain ${hasErrors(bean: accountHolderInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="accountHolder.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="username" required="" value="${accountHolderInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountHolderInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="accountHolder.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${accountHolderInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountHolderInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="accountHolder.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${accountHolderInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountHolderInstance, field: 'accounts', 'error')} ">
	<label for="accounts">
		<g:message code="accountHolder.accounts.label" default="Accounts" />
		
	</label>
	<g:select name="accounts" from="${com.fakebank.Account.list()}" multiple="multiple" optionKey="id" size="5" value="${accountHolderInstance?.accounts*.id}" class="many-to-many"/>

</div>

