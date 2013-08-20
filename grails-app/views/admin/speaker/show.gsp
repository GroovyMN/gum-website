<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="crud">
	<g:set var="entityName" value="${message(code: 'speaker.label', default: 'Speaker')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<a href="#show-speaker" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;" /></a>
<nav:admin>
		<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
		<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
</nav:admin>

<div id="show-speaker" class="content scaffold-show" role="main">
	<h1><g:message code="default.show.label" args="[entityName]" /></h1>
	<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
	</g:if>
	<ol class="property-list speaker">
		<g:if test="${speakerInstance?.name}">
			<li class="fieldcontain">
				<span id="name-label" class="property-label"><g:message code="speaker.name.label" default="Name" /></span>
				<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${speakerInstance}" field="name" /></span>
			</li>
		</g:if>

		<g:if test="${speakerInstance?.twitterId}">
			<li class="fieldcontain">
				<span id="twitterId-label" class="property-label"><g:message code="speaker.twitterId.label" default="Twitter Id" /></span>

				<span class="property-value" aria-labelledby="twitterId-label"><g:fieldValue bean="${speakerInstance}" field="twitterId" /></span>
			</li>
		</g:if>

		<g:if test="${speakerInstance?.githubId}">
			<li class="fieldcontain">
				<span id="githubId-label" class="property-label"><g:message code="speaker.githubId.label" default="Github Id" /></span>

				<span class="property-value" aria-labelledby="githubId-label"><g:fieldValue bean="${speakerInstance}" field="githubId" /></span>
			</li>
		</g:if>

		<g:if test="${speakerInstance?.company}">
			<li class="fieldcontain">
				<span id="company-label" class="property-label"><g:message code="speaker.company.label" default="Company" /></span>

				<span class="property-value" aria-labelledby="company-label"><g:fieldValue bean="${speakerInstance}" field="company" /></span>
			</li>
		</g:if>

		<g:if test="${speakerInstance?.about}">
			<li class="fieldcontain">
				<span id="about-label" class="property-label"><g:message code="speaker.about.label" default="About" /></span>

				<span class="property-value" aria-labelledby="about-label"><g:fieldValue bean="${speakerInstance}" field="about" /></span>
			</li>
		</g:if>

		<g:if test="${speakerInstance?.presentations}">
			<li class="fieldcontain">
				<span id="presentations-label" class="property-label"><g:message code="speaker.presentations.label" default="Presentations" /></span>

				<g:each in="${speakerInstance.presentations}" var="p">
					<span class="property-value" aria-labelledby="presentations-label"><g:link controller="presentation" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
				</g:each>
			</li>
		</g:if>
	</ol>
	<g:form>
		<fieldset class="buttons">
			<g:hiddenField name="id" value="${speakerInstance?.id}" />
			<g:link class="edit" action="edit" id="${speakerInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
			<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
		</fieldset>
	</g:form>
</div>
</body>
</html>
