<#--
Struts2 "forces" UI theme
-->
<#assign labelTagName=parameters.labelTagName!"span"?html/>
<#assign hasFieldError=parameters.id?? && fieldErrors?? &&
fieldErrors[parameters.id]??/>

<#--
/*
 * $Id: select.ftl 720258 2008-11-24 19:05:16Z musachy $
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
<li class="select<#rt/>
<#if parameters.cssClass??> ${parameters.cssClass?html}</#if><#rt/>
">
<label for="${parameters.id?html!""}">
<#if parameters.label??>
	<${labelTagName} class="label">${parameters.label}${parameters.labelseparator!""?html}</${labelTagName}>
</#if>
<#if parameters.required!false>
	<abbr title="(required)">*</abbr>
</#if>
<#if parameters.hint??>
	<small class="hint">${parameters.hint?html}</small>
</#if>
</label>
<#setting number_format="#.#####">
<select<#rt/>
 name="${parameters.name!""?html}"<#rt/>
<#if parameters.get("size")??>
 size="${parameters.get("size")?html}"<#rt/>
</#if>
<#if parameters.required!false>
 required="required"<#rt/>
</#if>
<#if parameters.disabled!false>
 disabled="disabled"<#rt/>
</#if>
<#if parameters.tabindex??>
 tabindex="${parameters.tabindex?html}"<#rt/>
</#if>
<#if parameters.id??>
 id="${parameters.id?html}"<#rt/>
</#if>
<#include "/${parameters.templateDir}/simple/css.ftl" />
<#if parameters.title??>
 title="${parameters.title?html}"<#rt/>
</#if>
<#if parameters.multiple!false>
 multiple="multiple"<#rt/>
</#if>
<#include "/${parameters.templateDir}/simple/scripting-events.ftl" />
<#include "/${parameters.templateDir}/simple/common-attributes.ftl" />
<#include "/${parameters.templateDir}/simple/dynamic-attributes.ftl" />
>
<#if parameters.headerKey?? && parameters.headerValue??>
   <option value="${parameters.headerKey?html}"
   <#if tag.contains(parameters.nameValue, parameters.headerKey) == true>
   selected="selected"
   </#if>
   >${parameters.headerValue?html}</option>
</#if>
<#if parameters.emptyOption!false>
   <option value=""></option>
</#if>
<@s.iterator value="parameters.list">
	   <#if parameters.listKey??>
		   <#if stack.findValue(parameters.listKey)??>
			 <#assign itemKey = stack.findValue(parameters.listKey)/>
			 <#assign itemKeyStr = itemKey.toString()/>
		   <#else>
			 <#assign itemKey = ''/>
			 <#assign itemKeyStr = ''/>
		   </#if>
	   <#else>
		   <#assign itemKey = stack.findValue('top')/>
		   <#assign itemKeyStr = itemKey.toString()/>
	   </#if>
	   <#if parameters.listValue??>
		   <#if stack.findString(parameters.listValue)??>
			 <#assign itemValue = stack.findString(parameters.listValue)/>
		   <#else>
			 <#assign itemValue = ''/>
		   </#if>
	   <#else>
		   <#assign itemValue = stack.findString('top')/>
	   </#if>
   <option value="${itemKeyStr?html}"<#rt/>
	   <#if tag.contains(parameters.nameValue, itemKey) == true>
 selected="selected"<#rt/>
	   </#if>
   >${itemValue?html}</option><#lt/>
</@s.iterator>
<#include "/${parameters.templateDir}/simple/optgroup.ftl" />
</select>
<#if hasFieldError>
   <em class="alert">${fieldErrors[parameters.id][0]?replace('^.*?:+', '', 'r')}</em>
</#if>
</li>