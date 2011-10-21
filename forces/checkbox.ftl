<#--
Struts2 "forces" UI theme
http://code.google.com/p/usetheforces-struts2/wiki/checkbox
-->
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
<li class="select<#rt/>
<#if hasFieldError> invalid</#if><#rt/>
<#if parameters.cssClass??> ${parameters.cssClass?html}</#if><#rt/>
">
<#if parameters.label??>
<fieldset id="${parameters.id?html}">
<#assign legend=true/><#include "label.ftl"/>
<#assign forId>${parameters.id?html}-${parameters.fieldValue?replace('[^A-Za-z0-9-_]+', '-', 'r')?html}</#assign>
<#else>
<#assign forId>${parameters.id?html}</#assign>
</#if>
<ul class="choices">
<li><#rt/>
<label for="${forId}"><#rt/>
<input type="checkbox"<#rt/>
<#if parameters.name??>
 name="${parameters.name?html}"<#rt/>
</#if>
 id="${forId}"<#rt/>
<#if parameters.nameValue?? && parameters.nameValue>
 checked="checked"<#rt/>
</#if>
 value="${parameters.fieldValue?html!''}"<#rt/>
<#if parameters.required>
 required="required"<#rt/>
</#if>
<#if parameters.disabled?default(false)>
 disabled="disabled"<#rt/>
</#if>
 /><#rt/>
${parameters.itemLabel?html}</label><#rt/>
</li>
</ul>
<#if parameters.label??>
</fieldset>
</#if>
</li>
