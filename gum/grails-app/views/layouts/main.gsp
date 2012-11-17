<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<!-- start: Meta -->
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="GUM"/></title>

		<meta name="description" content="Groovy Users of Minnesota"/>
		<meta name="keywords" content="Groovy, Grails, Web, Tomcat, Hibernate, JVM" />
		<!-- end: Meta -->

		<!-- start: Mobile Specific -->
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<!-- end: Mobile Specific -->

		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content=""/>
		<meta property="og:description" content=""/>
		<meta property="og:type" content=""/>
		<meta property="og:url" content=""/>
		<meta property="og:image" content=""/>
		<!-- end: Facebook Open Graph -->

		<!-- start: CSS -->
		<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Droid+Sans:400,700">
		<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Droid+Serif">
		<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Boogaloo">
		<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Economica:700,400italic">
		<!-- end: CSS -->

		<g:layoutHead/>

		<r:require module="common"/>
		<r:require module="jquery"/>
		<r:require module="fancybox"/>
		<r:require module="bootstrap"/>

		<r:layoutResources />
	</head>
	<body>
		<g:render template="/navigation/topNav"/>
		<g:layoutBody/>
		<g:render template="/footerMenu"/>
		<g:render template="/navigation/contactInfo"/>

		<r:require module="jquery"/>
		<r:require module="fancybox"/>
		<r:require module="bootstrap"/>

		<r:layoutResources />
	</body>
</html>
