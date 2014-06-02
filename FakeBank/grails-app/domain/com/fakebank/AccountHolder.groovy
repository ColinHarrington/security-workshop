package com.fakebank


class AccountHolder {
	String name
	String username
	String password

    static constraints = {
		username email: true, nullable: false, blank: false
		name blank:false
		password blank: false
    }

	static hasMany = [accounts: Account]
}
