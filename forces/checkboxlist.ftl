<#-- 
Struts2 "forces" UI theme
http://code.google.com/p/usetheforces-struts2/wiki/checkboxlist
--> 
<#assign labelTagName=parameters.labelTagName?default("span")?html/>
<#assign choicesTagName=parameters.choicesTagName?default("ul")?html/> 
<#assign itemTagName=parameters.itemTagName?default("li")?html/>

<#-- 
/* 
 * $Id: checkboxlist.ftl 720258 2008-11-24 19:05:16Z musachy $ 
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
<li class="xf-select<#rt/>
<#if parameters.cssClass??> ${parameters.cssClass?html}</#if><#rt/> 
">
<fieldset id="${parameters.id?html}">
<legend> 
<#if parameters.label??> 
  ${labelTagName} class="xf-label">${parameters.label}${parameters.labelseparator?default(":")?html}</${labelTagName}>
</#if> 
<#if parameters.required?? && parameters.required> 
  <abbr class="required" title="required">*</abbr> 
</#if> 
<#if parameters.hint??> 
  <small class="xf-hint">${parameters.hint?html}</small> 
</#if> 
</legend> 
<#assign itemCount = 0/> 
<#if parameters.list??> 
<#if choicesTagName?has_content><${choicesTagName} class="choices"></#if> 
	<@s.iterator value="parameters.list"> 
		<#assign itemCount = itemCount + 1/> 
		<#if parameters.listKey??> 
			<#assign itemKey = stack.findValue(parameters.listKey)/> 
		<#else> 
			<#assign itemKey = stack.findValue('top')/> 
		</#if> 
		<#if parameters.listValue??> 
			<#assign itemValue = stack.findString(parameters.listValue)?default("")/> 
		<#else> 
			<#assign itemValue = stack.findString('top')/> 
		</#if> 
<#assign itemKeyStr=itemKey.toString() /> 
<#if itemTagName?has_content><${itemTagName}></#if><#rt/> 
<label for="${parameters.name?html}-${itemCount}"><#rt/> 
<input type="checkbox" name="${parameters.name?html}" value="${itemKeyStr?html}" id="${parameters.name?html}-${itemCount}"<#rt/>
		<#if tag.contains(parameters.nameValue, itemKey)> 
 checked="checked"<#rt/> 
		</#if> 
		<#if parameters.disabled?default(false)> 
 disabled="disabled"<#rt/> 
		</#if> 
		<#if parameters.title??> 
 title="${parameters.title?html}"<#rt/> 
		</#if> 
		<#include "/${parameters.templateDir}/simple/scripting-events.ftl" /> 
		<#include "/${parameters.templateDir}/simple/common-attributes.ftl" /> 
/><#rt/> 
${itemValue?html}</label><#rt/>
<#if itemTagName?has_content></${itemTagName}></#if> 
	</@s.iterator> 
<#if choicesTagName?has_content></${choicesTagName}></#if> 
</#if>
</fieldset>
</li>