<%@ page import="com.fakebank.AccountTransaction" %>



<div class="fieldcontain ${hasErrors(bean: accountTransactionInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="accountTransaction.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amount" value="${fieldValue(bean: accountTransactionInstance, field: 'amount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountTransactionInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="accountTransaction.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${accountTransactionInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountTransactionInstance, field: 'settled', 'error')} ">
	<label for="settled">
		<g:message code="accountTransaction.settled.label" default="Settled" />
		
	</label>
	<g:datePicker name="settled" precision="day"  value="${accountTransactionInstance?.settled}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: accountTransactionInstance, field: 'account', 'error')} required">
	<label for="account">
		<g:message code="accountTransaction.account.label" default="Account" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="account" name="account.id" from="${com.fakebank.Account.list()}" optionKey="id" required="" value="${accountTransactionInstance?.account?.id}" class="many-to-one"/>

</div>

