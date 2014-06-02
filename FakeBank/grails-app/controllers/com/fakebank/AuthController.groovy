package com.fakebank

<<<<<<< HEAD
import groovy.sql.GroovyRowResult
import groovy.sql.Sql
import com.fakebank.*
=======
>>>>>>> upstream/master

class AuthController {
	def dataSource

	def login() {

	}

	def authenticate(String username, String password) {
<<<<<<< HEAD
		//Login logic

                def row = AccountHolder.find("from AccountHolder as ah where ah.username=? and ah.password=?", [username, password])

                println row
=======


		String hql = "from AccountHolder where username = '$username' and password = '$password'"
		def row = AccountTransaction.executeQuery(hql)
>>>>>>> upstream/master

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

