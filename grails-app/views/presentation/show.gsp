<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="crud">
		<g:set var="entityName" value="${message(code: 'presentation.label', default: 'Presentation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-presentation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-presentation" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list presentation">

				<g:if test="${presentationInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="presentation.title.label" default="Title" /></span>

						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${presentationInstance}" field="title"/></span>

				</li>
				</g:if>

				<g:if test="${presentationInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="presentation.description.label" default="Description" /></span>

						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${presentationInstance}" field="description"/></span>

				</li>
				</g:if>

				<g:if test="${presentationInstance?.sourceUrl}">
				<li class="fieldcontain">
					<span id="sourceUrl-label" class="property-label"><g:message code="presentation.sourceUrl.label" default="Source Url" /></span>

						<span class="property-value" aria-labelledby="sourceUrl-label"><g:fieldValue bean="${presentationInstance}" field="sourceUrl"/></span>

				</li>
				</g:if>

				<g:if test="${presentationInstance?.slidesUrl}">
				<li class="fieldcontain">
					<span id="slidesUrl-label" class="property-label"><g:message code="presentation.slidesUrl.label" default="Slides Url" /></span>

						<span class="property-value" aria-labelledby="slidesUrl-label"><g:fieldValue bean="${presentationInstance}" field="slidesUrl"/></span>

				</li>
				</g:if>

				<g:if test="${presentationInstance?.photo}">
				<li class="fieldcontain">
					<span id="photo-label" class="property-label"><g:message code="presentation.photo.label" default="Photo" /></span>

						<span class="property-value" aria-labelledby="photo-label"><g:fieldValue bean="${presentationInstance}" field="photo"/></span>

				</li>
				</g:if>

				<g:if test="${presentationInstance?.speakers}">
				<li class="fieldcontain">
					<span id="speakers-label" class="property-label"><g:message code="presentation.speakers.label" default="Speakers" /></span>

						<g:each in="${presentationInstance.speakers}" var="s">
						<span class="property-value" aria-labelledby="speakers-label"><g:link controller="speaker" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>

				</li>
				</g:if>

			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${presentationInstance?.id}" />
					<g:link class="edit" action="edit" id="${presentationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
