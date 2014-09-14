<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="crud">
	<g:set var="entityName" value="${message(code: 'sponsor.label', default: 'Sponsor')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	<a href="#list-sponsor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;" /></a>

	<nav:admin>
		<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
	</nav:admin>

	<div id="list-sponsor" class="content scaffold-list" role="main">
		<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>
		<table>
			<thead>
			<tr>
				<g:sortableColumn property="name" title="${message(code: 'sponsor.name.label', default: 'Name')}" />

				<g:sortableColumn property="type" title="${message(code: 'sponsor.type.label', default: 'Type')}" />

				<g:sortableColumn property="url" title="${message(code: 'sponsor.url.label', default: 'Url')}" />

				<g:sortableColumn property="file" title="${message(code: 'sponsor.file.label', default: 'File')}" />

				<g:sortableColumn property="description" title="${message(code: 'sponsor.description.label', default: 'Description')}" />

				%{--TODO: Photo file upload--}%
				%{--<g:sortableColumn property="photo" title="${message(code: 'sponsor.photo.label', default: 'photo')}" />--}%

				<g:sortableColumn property="sortOrder" title="${message(code: 'sponsor.sortOrder.label', default: 'sortOrder')}" />
			</tr>
			</thead>
			<tbody>
			<g:each in="${sponsorInstanceList}" status="i" var="sponsorInstance">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					<td><g:link action="show" id="${sponsorInstance.id}">${fieldValue(bean: sponsorInstance, field: "name")}</g:link></td>

					<td>${fieldValue(bean: sponsorInstance, field: "type")}</td>

					<td><a href="${sponsorInstance.url}">${fieldValue(bean: sponsorInstance, field: "url")}</a></td>

					<td>${fieldValue(bean: sponsorInstance, field: "file")}</td>

					<td><str:shorten value="${sponsorInstance.description}" /></td>

					%{--TODO: Photo file upload--}%
					%{--<td>${fieldValue(bean: sponsorInstance, field: "photo")}</td>--}%

					<td>${fieldValue(bean: sponsorInstance, field: "sortOrder")}</td>
				</tr>
			</g:each>
			</tbody>
		</table>

		<div class="pagination">
			<g:paginate total="${sponsorInstanceTotal}" />
		</div>
	</div>
</body>
</html>
