package com.fakebank



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AccountHolderController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AccountHolder.list(params), model:[accountHolderInstanceCount: AccountHolder.count()]
    }

    def show(AccountHolder accountHolderInstance) {
        respond accountHolderInstance
    }

    def create() {
        respond new AccountHolder(params)
    }

    @Transactional
    def save(AccountHolder accountHolderInstance) {
        if (accountHolderInstance == null) {
            notFound()
            return
        }

        if (accountHolderInstance.hasErrors()) {
            respond accountHolderInstance.errors, view:'create'
            return
        }

        accountHolderInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'accountHolder.label', default: 'AccountHolder'), accountHolderInstance.id])
                redirect accountHolderInstance
            }
            '*' { respond accountHolderInstance, [status: CREATED] }
        }
    }

    def edit(AccountHolder accountHolderInstance) {
        respond accountHolderInstance
    }

    @Transactional
    def update(AccountHolder accountHolderInstance) {
        if (accountHolderInstance == null) {
            notFound()
            return
        }

        if (accountHolderInstance.hasErrors()) {
            respond accountHolderInstance.errors, view:'edit'
            return
        }

        accountHolderInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AccountHolder.label', default: 'AccountHolder'), accountHolderInstance.id])
                redirect accountHolderInstance
            }
            '*'{ respond accountHolderInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AccountHolder accountHolderInstance) {

        if (accountHolderInstance == null) {
            notFound()
            return
        }

        accountHolderInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AccountHolder.label', default: 'AccountHolder'), accountHolderInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'accountHolder.label', default: 'AccountHolder'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
