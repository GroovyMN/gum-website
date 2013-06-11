<%@ page import="gum.Speaker" %>



<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="speaker.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${speakerInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'twitterId', 'error')} ">
	<label for="twitterId">
		<g:message code="speaker.twitterId.label" default="Twitter Id" />
		
	</label>
	<g:textField name="twitterId" value="${speakerInstance?.twitterId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'githubId', 'error')} ">
	<label for="githubId">
		<g:message code="speaker.githubId.label" default="Github Id" />
		
	</label>
	<g:textField name="githubId" value="${speakerInstance?.githubId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'company', 'error')} ">
	<label for="company">
		<g:message code="speaker.company.label" default="Company" />
		
	</label>
	<g:textField name="company" value="${speakerInstance?.company}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'about', 'error')} ">
	<label for="about">
		<g:message code="speaker.about.label" default="About" />
		
	</label>
	<g:textField name="about" value="${speakerInstance?.about}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'presentations', 'error')} ">
	<label for="presentations">
		<g:message code="speaker.presentations.label" default="Presentations" />
		
	</label>
	<g:select name="presentations" from="${gum.Presentation.list()}" multiple="multiple" optionKey="id" size="5" value="${speakerInstance?.presentations*.id}" class="many-to-many"/>
</div>

