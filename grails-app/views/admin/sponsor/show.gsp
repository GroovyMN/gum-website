<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="crud">
	<g:set var="entityName" value="${message(code: 'sponsor.label', default: 'Sponsor')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>
	<a href="#show-sponsor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<nav:admin>
		<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
		<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
	</nav:admin>

	<div id="show-sponsor" class="content scaffold-show" role="main">
		<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>
		<ol class="property-list sponsor">
			<g:if test="${sponsorInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="sponsor.title.label" default="Title" /></span>
					<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${sponsorInstance}" field="title" /></span>
				</li>
			</g:if>

			<g:if test="${sponsorInstance?.file}">
				<li class="fieldcontain">
					<span id="file-label" class="property-label"><g:message code="sponsor.file.label" default="File" /></span>

					<span class="property-value" aria-labelledby="file-label"><g:fieldValue bean="${sponsorInstance}" field="file" /></span>
				</li>
			</g:if>

			<g:if test="${sponsorInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="sponsor.description.label" default="Description" /></span>

					<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${sponsorInstance}" field="description" /></span>
				</li>
			</g:if>

			<g:if test="${sponsorInstance?.company}">
				<li class="fieldcontain">
					<span id="company-label" class="property-label"><g:message code="sponsor.company.label" default="Company" /></span>

					<span class="property-value" aria-labelledby="company-label"><g:fieldValue bean="${sponsorInstance}" field="company" /></span>
				</li>
			</g:if>

			<g:if test="${sponsorInstance?.photo}">
				<li class="fieldcontain">
					<span id="photo-label" class="property-label"><g:message code="sponsor.photo.label" default="Photo" /></span>

					<span class="property-value" aria-labelledby="photo-label"><g:fieldValue bean="${sponsorInstance}" field="photo" /></span>
				</li>
			</g:if>

			<g:if test="${sponsorInstance?.sortOrder}">
				<li class="fieldcontain">
					<span id="sortOrder-label" class="property-label"><g:message code="sponsor.sortOrder.label" default="Sort Order" /></span>

					<span class="property-value" aria-labelledby="sortOrder-label"><g:fieldValue bean="${sponsorInstance}" field="sortOrder" /></span>
				</li>
			</g:if>
		</ol>
		<g:form>
			<fieldset class="buttons">
				<g:hiddenField name="id" value="${sponsorInstance?.id}" />
				<g:link class="edit" action="edit" id="${sponsorInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
				<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
