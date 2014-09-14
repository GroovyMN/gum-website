<div class="fieldcontain ${hasErrors(bean: sponsorInstance, field: 'title', 'error')} required">
	<label for="name">
		<g:message code="sponsor.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${sponsorInstance?.title}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sponsorInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="sponsor.type.label" default="Type" />
	</label>
	<g:textField name="type" value="${sponsorInstance?.type}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sponsorInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="sponsor.url.label" default="URL" />
	</label>
	<g:textField name="url" value="${sponsorInstance?.url}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sponsorInstance, field: 'file', 'error')} ">
	<label for="file">
		<g:message code="sponsor.file.label" default="File" />
	</label>
	<g:textField name="file" value="${sponsorInstance?.file}" />
</div>

<div class="fieldcontain ${hasErrors(bean: sponsorInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="sponsor.description.label" default="Description" />
	</label>
	<g:textField name="description" value="${sponsorInstance?.description}" />
</div>

%{--TODO: Photo file upload--}%
%{--<div class="fieldcontain ${hasErrors(bean: sponsorInstance, field: 'photo', 'error')} ">--}%
	%{--<label for="photo">--}%
		%{--<g:message code="sponsor.photo.label" default="Photo" />--}%
	%{--</label>--}%
	%{--<g:textField name="photo" value="${sponsorInstance?.photo}" />--}%
%{--</div>--}%

<div class="fieldcontain ${hasErrors(bean: sponsorInstance, field: 'sortOrder', 'error')} ">
	<label for="sortOrder">
		<g:message code="sponsor.sortOrder.label" default="Sort Order" />
	</label>
	<g:textField name="sortOrder" value="${sponsorInstance?.sortOrder}" />
</div>