package com.fakebank

class AuthFilters {

	def filters = {
		all(controller: '*', action: '*') {
			before = {
				if (session.userId) {
					request.user = AccountHolder.get(session.userId)
				}
			}
		}
	}
}
