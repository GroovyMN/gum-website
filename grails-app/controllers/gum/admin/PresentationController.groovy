package gum.admin

import gum.Presentation
import org.springframework.dao.DataIntegrityViolationException

class PresentationController {
	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	static prefix = "/admin/presentation/"

	def index() {
		redirect action: "list", params: params
	}

	def list(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		render view: prefix + "list", model: [presentationInstanceList: Presentation.list(params), presentationInstanceTotal: Presentation.count()]
	}

	def create() {
		render view: prefix + "create", model: [presentationInstance: new Presentation(params)]
	}

	def save() {
		def presentationInstance = new Presentation(params)
		if (!presentationInstance.save(flush: true)) {
			render view: prefix + "create", model: [presentationInstance: presentationInstance]
			return
		}

		flash.message = message(code: 'default.created.message', args: [message(code: 'presentation.label', default: 'Presentation'), presentationInstance.id])
		redirect action: "show", id: presentationInstance.id
	}

	def show(Long id) {
		def presentationInstance = Presentation.get(id)
		if (!presentationInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'presentation.label', default: 'Presentation'), id])
			redirect action: "list"
			return
		}

		render view: prefix + "show", model: [presentationInstance: presentationInstance]
	}

	def edit(Long id) {
		def presentationInstance = Presentation.get(id)
		if (!presentationInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'presentation.label', default: 'Presentation'), id])
			redirect action: "list"
			return
		}

		render view: prefix + "edit", model: [presentationInstance: presentationInstance]
	}

	def update(Long id, Long version) {
		def presentationInstance = Presentation.get(id)
		if (!presentationInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'presentation.label', default: 'Presentation'), id])
			redirect action: "list"
			return
		}

		if (version != null) {
			if (presentationInstance.version > version) {
				presentationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
					[message(code: 'presentation.label', default: 'Presentation')] as Object[],
					"Another user has updated this Presentation while you were editing")
				render view: prefix + "edit", model: [presentationInstance: presentationInstance]
				return
			}
		}

		presentationInstance.properties = params

		if (!presentationInstance.save(flush: true)) {
			render view: prefix + "edit", model: [presentationInstance: presentationInstance]
			return
		}

		flash.message = message(code: 'default.updated.message', args: [message(code: 'presentation.label', default: 'Presentation'), presentationInstance.id])
		redirect action: "show", id: presentationInstance.id
	}

	def delete(Long id) {
		def presentationInstance = Presentation.get(id)
		if (!presentationInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'presentation.label', default: 'Presentation'), id])
			redirect action: "list"
			return
		}

		try {
			presentationInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'presentation.label', default: 'Presentation'), id])
			redirect action: "list"
		} catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'presentation.label', default: 'Presentation'), id])
			redirect action: "show", id: id
		}
	}
}
