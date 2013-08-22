<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="crud">
	<g:set var="entityName" value="${message(code: 'presentation.label', default: 'Presentation')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
<a href="#list-presentation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;" /></a>

<nav:admin>
	<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
</nav:admin>

<div id="list-presentation" class="content scaffold-list" role="main">
	<h1><g:message code="default.list.label" args="[entityName]" /></h1>
	<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
	</g:if>
	<table>
		<thead>
		<tr>
			<g:sortableColumn property="description" title="${message(code: 'presentation.presentationDate.label', default: 'Date')}" />

			<g:sortableColumn property="title" title="${message(code: 'presentation.title.label', default: 'Title')}" />

			<g:sortableColumn property="sourceUrl" title="${message(code: 'presentation.sourceUrl.label', default: 'Source Url')}" />

			<g:sortableColumn property="slidesUrl" title="${message(code: 'presentation.slidesUrl.label', default: 'Slides Url')}" />
		</tr>
		</thead>
		<tbody>
		<g:each in="${presentationInstanceList}" status="i" var="presentationInstance">
			<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
				<td><g:formatDate format="yyyy-MM-dd" date="${presentationInstance.presentationDate}" /></td>

				<td><g:link controller="presentation" action="show" id="${presentationInstance.id}">${fieldValue(bean: presentationInstance, field: "title")}</g:link></td>

				<td>
					<g:if test="${presentationInstance?.sourceUrl}">
						<a href="${presentationInstance?.sourceUrl}">${presentationInstance?.sourceUrl}</a>
					</g:if>
				</td>

				<td>
					<g:if test="${presentationInstance?.slidesUrl}">
						<a href="${presentationInstance?.slidesUrl}">${presentationInstance?.slidesUrl}</a>
					</g:if>
				</td>

			</tr>
		</g:each>
		</tbody>
	</table>

	<div class="pagination">
		<g:paginate total="${presentationInstanceTotal}" />
	</div>
</div>
</body>
</html>
