package com.fakebank

class Account {
	String name
	String description

	BigDecimal balance = 0

	static constraints = {
		name blank: false, nullable: false
		description blank: true
	}

	static hasMany = [transactions: AccountTransaction]

	static belongsTo = [accountHolder: AccountHolder]
}
