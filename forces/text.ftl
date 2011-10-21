<#--
Struts2 "forces" UI theme
https://github.com/bboyle/usetheforces-struts2/wiki/textfield
-->
<#assign type=type?default('text')/>
<#assign labelTagName=parameters.labelTagName?default("span")?html/>
<#assign hasFieldError=parameters.id?? && fieldErrors?? && fieldErrors[parameters.id]??/>

<#--
/*
 * $Id: text.ftl 720258 2008-11-24 19:05:16Z musachy $
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
<li class="input<#rt/>
<#if hasFieldError> invalid</#if><#rt/>
<#if parameters.cssClass??> ${parameters.cssClass?html}</#if><#rt/>
">
<label for="${parameters.id?html!""}">
<#if parameters.label??>
	<${labelTagName} class="label">${parameters.label}${parameters.labelseparator?default("")?html}</${labelTagName}>
</#if>
<#if parameters.required?default(false)>
	<abbr title="(required)">*</abbr>
</#if>
<#if hasFieldError>
	<em class="alert">${fieldErrors[parameters.id][0]?replace('^.*?: +', '', 'r')}</em>
</#if>
<#if parameters.hint??>
	<small class="hint">${parameters.hint}</small>
</#if>
</label>
<input type="${type}"<#rt/>
 id="${parameters.id?html!""}"<#rt/>
 name="${parameters.name?default("")?html}"<#rt/>
<#if parameters.required>
 required="required"<#rt/>
</#if>
<#if parameters.nameValue??>
 value="<@s.property value="parameters.nameValue"/>"<#rt/>
</#if>
<#if parameters.get("size")??>
 size="${parameters.get("size")?html}"<#rt/>
</#if>
<#if parameters.maxlength??>
 maxlength="${parameters.maxlength?html}"<#rt/>
</#if>
/>
</li>
