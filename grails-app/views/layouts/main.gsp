<!DOCTYPE html>
<html>
<g:render template="/ifIE" />
<head>
	<g:render template="/meta" />
	<title><g:layoutTitle default="${message(code: 'groovyMn.label')}" /></title>

	<g:render template="/mobileViewport" />
	<g:render template="/fbOpenGraph" />
	<g:render template="/fonts" />
	<g:external file="/favicon.ico" />

	<g:layoutHead />

	<r:require module="bootstrap" />
	<r:require module="fancybox" />
	<r:require module="common" />

	<r:layoutResources />

	<g:render template="/analyticsJS" />
</head>

<body>
	<g:render template="/nav/top" />
	<g:layoutBody />
	<g:render template="/footer/menu" />
	<g:render template="/footer/index" />

	<r:layoutResources />
</body>
</html>
