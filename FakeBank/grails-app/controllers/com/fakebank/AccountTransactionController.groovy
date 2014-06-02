package com.fakebank



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AccountTransactionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AccountTransaction.list(params), model:[accountTransactionInstanceCount: AccountTransaction.count()]
    }

    def show(AccountTransaction accountTransactionInstance) {
        respond accountTransactionInstance
    }

    def create() {
        respond new AccountTransaction(params)
    }

    @Transactional
    def save(AccountTransaction accountTransactionInstance) {
        if (accountTransactionInstance == null) {
            notFound()
            return
        }

        if (accountTransactionInstance.hasErrors()) {
            respond accountTransactionInstance.errors, view:'create'
            return
        }

        accountTransactionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'accountTransaction.label', default: 'AccountTransaction'), accountTransactionInstance.id])
                redirect accountTransactionInstance
            }
            '*' { respond accountTransactionInstance, [status: CREATED] }
        }
    }

    def edit(AccountTransaction accountTransactionInstance) {
        respond accountTransactionInstance
    }

    @Transactional
    def update(AccountTransaction accountTransactionInstance) {
        if (accountTransactionInstance == null) {
            notFound()
            return
        }

        if (accountTransactionInstance.hasErrors()) {
            respond accountTransactionInstance.errors, view:'edit'
            return
        }

        accountTransactionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AccountTransaction.label', default: 'AccountTransaction'), accountTransactionInstance.id])
                redirect accountTransactionInstance
            }
            '*'{ respond accountTransactionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AccountTransaction accountTransactionInstance) {

        if (accountTransactionInstance == null) {
            notFound()
            return
        }

        accountTransactionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AccountTransaction.label', default: 'AccountTransaction'), accountTransactionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'accountTransaction.label', default: 'AccountTransaction'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
