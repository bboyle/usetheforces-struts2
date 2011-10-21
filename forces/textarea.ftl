<#--
Struts2 "forces" UI theme
http://code.google.com/p/usetheforces-struts2/wiki/textarea
-->
<#assign labelTagName=parameters.labelTagName?default("span")?html/>
<#assign hasFieldError=parameters.id?? && fieldErrors?? && fieldErrors[parameters.id]??/>

<#--
/*
 * $Id: textarea.ftl 720258 2008-11-24 19:05:16Z musachy $
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
-->
<li class="xf-textarea<#rt/>
<#if hasFieldError> xf-invalid</#if><#rt/>
<#if parameters.cssClass??> ${parameters.cssClass?html}</#if><#rt/>
">
<label for="${parameters.id?html!""}">
<#if parameters.label??>
	<${labelTagName} class="xf-label">${parameters.label}${parameters.labelseparator?default("")?html}</${labelTagName}>
</#if>
<#if parameters.required?? && parameters.required>
	<abbr class="xf-required" title="required">*</abbr>
</#if>
<#if parameters.hint??>
	<small class="xf-hint">${parameters.hint}</small>
</#if>
</label>
<textarea<#rt/>
 name="${parameters.name?default("")?html}"<#rt/>
 cols="${parameters.cols?default("")?html}"<#rt/>
 rows="${parameters.rows?default("")?html}"<#rt/>
<#if parameters.wrap??>
 wrap="${parameters.wrap?html}"<#rt/>
</#if>
<#if parameters.disabled?default(false)>
 disabled="disabled"<#rt/>
</#if>
<#if parameters.readonly?default(false)>
 readonly="readonly"<#rt/>
</#if>
<#if parameters.tabindex??>
 tabindex="${parameters.tabindex?html}"<#rt/>
</#if>
<#if parameters.id??>
 id="${parameters.id?html}"<#rt/>
</#if>
<#if parameters.title??>
 title="${parameters.title?html}"<#rt/>
</#if>
><#rt/>
<#if parameters.nameValue??>
<@s.property value="parameters.nameValue"/><#t/>
</#if>
</textarea>
<#if hasFieldError>
    <em class="xf-alert">${fieldErrors[parameters.id][0]?replace('^.*?: +', '', 'r')}</em>
</#if>
</li>
