<#--
Struts2 "forces" UI theme
http://code.google.com/p/usetheforces-struts2/wiki/secret
-->
<#assign labelTagName=parameters.labelTagName?default("span")?html/>

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
<li class="xf-secret<#rt/>
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
<input type="password"<#rt/>
 id="${parameters.id?html!""}"<#rt/>
 name="${parameters.name?default("")?html}"<#rt/>
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
