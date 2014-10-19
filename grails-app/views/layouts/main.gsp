<!DOCTYPE html>
<html>
<g:render template="/ifIE" />
<head>
    <g:render template="/meta" />
    <title><g:layoutTitle default="${message(code: 'groovyMn.label')}" /></title>

    <g:render template="/mobileViewport" />
    <g:render template="/fbOpenGraph" />
    <g:render template="/fonts" />
    
    <asset:stylesheet href="application.css"/>
    <asset:javascript src="application.js"/>
    <asset:link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>

    <g:layoutHead />

    <g:render template="/analyticsJS" />
</head>

<body>
    <g:render template="/nav/top" />
    <g:layoutBody />
    <g:render template="/footer/menu" />
    <g:render template="/footer/index" />
</body>
</html>
