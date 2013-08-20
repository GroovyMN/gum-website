<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="crud">
	<g:set var="entityName" value="${message(code: 'speaker.label', default: 'Speaker')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<a href="#list-speaker" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;" /></a>

<nav:admin>
		<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
</nav:admin>

<div id="list-speaker" class="content scaffold-list" role="main">
	<h1><g:message code="default.list.label" args="[entityName]" /></h1>
	<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
	</g:if>
	<table>
		<thead>
		<tr>
			<g:sortableColumn property="name" title="${message(code: 'speaker.name.label', default: 'Name')}" />

			<g:sortableColumn property="twitterId" title="${message(code: 'speaker.twitterId.label', default: 'Twitter Id')}" />

			<g:sortableColumn property="githubId" title="${message(code: 'speaker.githubId.label', default: 'Github Id')}" />

			<g:sortableColumn property="company" title="${message(code: 'speaker.company.label', default: 'Company')}" />

			<g:sortableColumn property="about" title="${message(code: 'speaker.about.label', default: 'About')}" />
		</tr>
		</thead>
		<tbody>
		<g:each in="${speakerInstanceList}" status="i" var="speakerInstance">
			<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
				<td><g:link action="show" id="${speakerInstance.id}">${fieldValue(bean: speakerInstance, field: "name")}</g:link></td>

				<td>${fieldValue(bean: speakerInstance, field: "twitterId")}</td>

				<td>${fieldValue(bean: speakerInstance, field: "githubId")}</td>

				<td>${fieldValue(bean: speakerInstance, field: "company")}</td>

				<td>${fieldValue(bean: speakerInstance, field: "about")}</td>
			</tr>
		</g:each>
		</tbody>
	</table>

	<div class="pagination">
		<g:paginate total="${speakerInstanceTotal}" />
	</div>
</div>
</body>
</html>
