<#--
Struts2 "forces" UI theme
http://code.google.com/p/usetheforces-struts2/wiki/radiomap
-->
<#assign type=type?default('radio')/>
<#assign hasFieldError=parameters.id?? && fieldErrors?? && fieldErrors[parameters.id]??/>

<#--
/*
 * $Id: radiomap.ftl 720258 2008-11-24 19:05:16Z musachy $
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
<li class="select<#if type == "radio">1</#if><#rt/>
<#if hasFieldError> invalid</#if><#rt/>
<#if parameters.cssClass??> ${parameters.cssClass?html}</#if><#rt/>
">
<fieldset id="${parameters.id?html}">
<legend>
<#if parameters.label??>
	<span class="label">${parameters.label}${parameters.labelseparator?default("")?html}</span>
</#if>
<#if parameters.required?? && parameters.required>
	<abbr title="(required)">*</abbr>
</#if>
<#if hasFieldError>
	<em class="alert">${fieldErrors[parameters.id][0]?replace('^.*?: +', '', 'r')}</em>
</#if>
<#if parameters.hint??>
	<small class="hint">${parameters.hint}</small>
</#if>
</legend>
<#if parameters.list??>
<ul class="choices<#if parameters.cssClass??> ${parameters.cssClass?html}</#if>">
<@s.iterator value="parameters.list">
	<#if parameters.listKey??>
		<#assign itemKey = stack.findValue(parameters.listKey)/>
	<#else>
		<#assign itemKey = stack.findValue('top')/>
	</#if>
	<#assign itemKeyStr = itemKey.toString() />
	<#if parameters.listValue??>
		<#assign itemValue = stack.findString(parameters.listValue)/>
	<#else>
		<#assign itemValue = stack.findString('top')/>
	</#if>
	<li><#rt/>
<#assign forId>${parameters.id?html}-${itemKeyStr?replace('[^A-Za-z0-9-_]+', '-', 'r')?html}</#assign>
		<input type="${type}"<#rt/>
<#if parameters.name??>
 name="${parameters.name?html}"<#rt/>
</#if>
 id="${forId}"<#rt/>
<#if tag.contains(parameters.nameValue?default(''), itemKeyStr)>
 checked="checked"<#rt/>
</#if>
<#if itemKey??>
 value="${itemKeyStr?html}"<#rt/>
</#if>
<#if parameters.disabled?default(false)>
 disabled="disabled"<#rt/>
</#if>
<#if parameters.required?default(false)>
 required="required"
</#if>
<#if parameters.tabindex??>
 tabindex="${parameters.tabindex?html}"<#rt/>
</#if>
<#if parameters.cssClass??>
 class="${parameters.cssClass?html}"<#rt/>
</#if>
<#if parameters.cssStyle??>
 style="${parameters.cssStyle?html}"<#rt/>
</#if>
<#if parameters.title??>
 title="${parameters.title?html}"<#rt/>
</#if>
 /><#rt/>
		<label for="${forId}">${itemValue}</label><#rt/>
	</li>
</@s.iterator>
</ul>
</#if>
</fieldset>
</li>
