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

                def escaped=[:]

                escaped["username"] = username.replace("'","''")
                escaped["password"] = password.replace("'","''")

                println escaped.username
                println escaped.password
                
		String query = "SELECT * FROM account_holder where username = '$escaped.username' and password = '$escaped.password'"
		println "Query = $query"

		GroovyRowResult row = sql.firstRow(query)
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

