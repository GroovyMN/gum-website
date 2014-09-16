<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="crud">
	<title><g:message code="admin.label" /></title>
</head>

<body>
	<nav:admin />

	<div style="padding: 1em">
		<ul>
			<li><a href="${createLink(uri: '/admin/presentation')}"><g:message code="presentations.label" /></a></li>
			<li><a href="${createLink(uri: '/admin/speaker')}"><g:message code="speakers.label" /></a></li>
			<li><a href="${createLink(uri: '/admin/sponsor')}"><g:message code="sponsors.label" /></a></li>
		</ul>
	</div>
</body>
</html>
