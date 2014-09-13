package gum.admin

import gum.Sponsor
import org.springframework.dao.DataIntegrityViolationException

class SponsorController {
	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	static prefix = "/admin/sponsor/"

	def index() {
		redirect action: "list", params: params
	}

	def list(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		render view: prefix + "list", model: [sponsorInstanceList: Sponsor.list(params), sponsorInstanceTotal: Sponsor.count()]
	}

	def create() {
		render view: prefix + "create", model: [sponsorInstance: new Sponsor(params)]
	}

	def save() {
		def sponsorInstance = new Sponsor(params)
		if (!sponsorInstance.save(flush: true)) {
			render view: prefix + "create", model: [sponsorInstance: sponsorInstance]
			return
		}

		flash.message = message(code: 'default.created.message', args: [message(code: 'sponsor.label', default: 'Sponsor'), sponsorInstance.id])
		redirect(action: "show", id: sponsorInstance.id)
	}

	def show(Long id) {
		def sponsorInstance = Sponsor.get(id)
		if (!sponsorInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'sponsor.label', default: 'Sponsor'), id])
			redirect action: "list"
			return
		}

		render view: prefix + "show", model: [sponsorInstance: sponsorInstance]
	}

	def edit(Long id) {
		def sponsorInstance = Sponsor.get(id)
		if (!sponsorInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'sponsor.label', default: 'Sponsor'), id])
			redirect action: "list"
			return
		}

		render view: prefix + "edit", model: [sponsorInstance: sponsorInstance]
	}

	def update(Long id, Long version) {
		def sponsorInstance = Sponsor.get(id)
		if (!sponsorInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'sponsor.label', default: 'Sponsor'), id])
			redirect action: "list"
			return
		}

		if (version != null) {
			if (sponsorInstance.version > version) {
				sponsorInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
					[message(code: 'sponsor.label', default: 'Sponsor')] as Object[],
					"Another user has updated this Sponsor while you were editing")
				render view: prefix + "edit", model: [sponsorInstance: sponsorInstance]
				return
			}
		}

		sponsorInstance.properties = params

		if (!sponsorInstance.save(flush: true)) {
			render view: prefix + "edit", model: [sponsorInstance: sponsorInstance]
			return
		}

		flash.message = message(code: 'default.updated.message', args: [message(code: 'sponsor.label', default: 'Sponsor'), sponsorInstance.id])
		redirect action: "show", id: sponsorInstance.id
	}

	def delete(Long id) {
		def sponsorInstance = Sponsor.get(id)
		if (!sponsorInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'sponsor.label', default: 'Sponsor'), id])
			redirect action: "list"
			return
		}

		try {
			sponsorInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'sponsor.label', default: 'Sponsor'), id])
			redirect action: "list"
		} catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'sponsor.label', default: 'Sponsor'), id])
			redirect action: "show", id: id
		}
	}
}
