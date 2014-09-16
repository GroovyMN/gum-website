<div class="fieldcontain ${hasErrors(bean: presentationInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="presentation.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${presentationInstance?.title}" />
</div>

<div class="fieldcontain ${hasErrors(bean: presentationInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="presentation.description.label" default="Description" />
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1000" value="${presentationInstance?.description}" />
</div>

<div class="fieldcontain ${hasErrors(bean: presentationInstance, field: 'sourceUrl', 'error')} ">
	<label for="sourceUrl">
		<g:message code="presentation.sourceUrl.label" default="Source Url" />
	</label>
	<g:field type="url" name="sourceUrl" value="${presentationInstance?.sourceUrl}" />
</div>

<div class="fieldcontain ${hasErrors(bean: presentationInstance, field: 'slidesUrl', 'error')} ">
	<label for="slidesUrl">
		<g:message code="presentation.slidesUrl.label" default="Slides Url" />
	</label>
	<g:field type="url" name="slidesUrl" value="${presentationInstance?.slidesUrl}" />
</div>

<div class="fieldcontain ${hasErrors(bean: presentationInstance, field: 'photo', 'error')} ">
	<label for="photo">
		<g:message code="presentation.photo.label" default="Photo" />
	</label>
	<g:field name="photo" type="number" value="${presentationInstance.photo}" />
</div>

<div class="fieldcontain ${hasErrors(bean: presentationInstance, field: 'speakers', 'error')} ">
	<label for="speakers">
		<g:message code="presentation.speakers.label" default="Speakers" />
	</label>
</div>
