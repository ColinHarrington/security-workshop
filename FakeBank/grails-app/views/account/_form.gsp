<%@ page import="com.fakebank.Account" %>



<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="account.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${accountInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="account.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${accountInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'transactions', 'error')} ">
	<label for="transactions">
		<g:message code="account.transactions.label" default="Transactions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${accountInstance?.transactions?}" var="t">
    <li><g:link controller="accountTransaction" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="accountTransaction" action="create" params="['account.id': accountInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'accountTransaction.label', default: 'AccountTransaction')])}</g:link>
</li>
</ul>


</div>

