package com.fakebank

import groovy.sql.GroovyRowResult
import groovy.sql.Sql

class AuthController {
	def dataSource

	def login() {

	}

	def authenticate(String username, String password) {
        def ah = AccountHolder.find('from AccountHolder h where h.username = ? and h.password = ?', [username, password])

		if (ah) {
			flash.message = "Successful login"
			session.userId = ah.id
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

