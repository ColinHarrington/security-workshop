package com.fakebank

import groovy.sql.GroovyRowResult
import groovy.sql.Sql

class AuthController {
	def dataSource

	def login() {

	}

	def authenticate(String username, String password) {
		//Login logic
		Sql sql = new Sql(dataSource)

		String query = "SELECT * FROM account_holder where username = :username and password = :password"
		println "Query = $query"

		GroovyRowResult row = sql.firstRow(query, [username:username, password:password])
		println row

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

