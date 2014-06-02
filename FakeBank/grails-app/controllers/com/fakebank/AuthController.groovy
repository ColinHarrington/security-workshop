package com.fakebank


class AuthController {
	def dataSource

	def login() {

	}

	def authenticate(String username, String password) {


		String hql = "from AccountHolder where username = '$username' and password = '$password'"
		def row = AccountTransaction.executeQuery(hql)

		if (row) {
			flash.message = "Successful login"
			session.userId = row.id
			redirect(mapping: 'home')
		} else {
			flash.message = "Failed login"
			render(view: 'login')
		}

	}

	def logout() {
		session.userId = null
		flash.message = "Successfully logged out"
		redirect(mapping: 'home')
	}
}

