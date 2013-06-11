
<%@ page import="gum.Presentation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'presentation.label', default: 'Presentation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-presentation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-presentation" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'presentation.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'presentation.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="sourceUrl" title="${message(code: 'presentation.sourceUrl.label', default: 'Source Url')}" />
					
						<g:sortableColumn property="slidesUrl" title="${message(code: 'presentation.slidesUrl.label', default: 'Slides Url')}" />
					
						<g:sortableColumn property="photo" title="${message(code: 'presentation.photo.label', default: 'Photo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${presentationInstanceList}" status="i" var="presentationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${presentationInstance.id}">${fieldValue(bean: presentationInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: presentationInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: presentationInstance, field: "sourceUrl")}</td>
					
						<td>${fieldValue(bean: presentationInstance, field: "slidesUrl")}</td>
					
						<td>${fieldValue(bean: presentationInstance, field: "photo")}</td>
					
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
