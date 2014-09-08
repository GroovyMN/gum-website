<!DOCTYPE html>
<g:render template="/ifIE" />
<head>
	<!-- start: Meta -->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title><g:layoutTitle default="Groovy Users of MN" /></title>

	<meta name="description" content="Groovy Users of Minnesota" />
	<meta name="keywords" content="Groovy, Grails, Web, Tomcat, Hibernate, JVM, Java, Usergroup" />
	<!-- end: Meta -->

	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- end: Mobile Specific -->

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
