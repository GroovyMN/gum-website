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
		<li><a href="${createLink(uri: '/admin/presentation')}">Presentations</a></li>
		<li><a href="${createLink(uri: '/admin/speaker')}">Speakers</a></li>
	</ul>
</div>
</body>
</html>
