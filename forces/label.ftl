<#assign legend=parameters.legend!false/>
<#if legend??><legend><#else><label for="${parameters.id?html!""}"></#if>
<#if parameters.label??>
	<span class="label">${parameters.label}${parameters.labelseparator?default("")?html}</span>
</#if>
<#if parameters.required!false>
	<abbr title="(required)">*</abbr>
</#if>
<#if hasFieldError>
	<em class="alert">${fieldErrors[parameters.id][0]?replace('^.*?: +', '', 'r')}</em>
</#if>
<#if parameters.hint??>
	<small class="hint">${parameters.hint}</small>
</#if>
<#if parameters.legend??></legend><#else></label></#if>
