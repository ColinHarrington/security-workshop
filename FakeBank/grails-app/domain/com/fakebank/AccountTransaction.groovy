package com.fakebank

class AccountTransaction {
	BigDecimal amount
	String description
	Date settled
	Date dateCreated
	Date lastUpdated

	static belongsTo = [account: Account]

	static constraints = {
		amount nullable: false
		description nullable: true, blank: true
		settled nullable: true
	}
}
