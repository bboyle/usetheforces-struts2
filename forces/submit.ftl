<#--
Struts2 "forces" UI theme
http://code.google.com/p/usetheforces-struts2/wiki/submit
-->
<#assign primary=parameters.primary!true/>


<#--
/*
 * $Id: submit.ftl 720258 2008-11-24 19:05:16Z musachy $
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
<li><#if primary><strong></#if><#rt/>
<input type="submit"<#rt/>
<#if parameters.id?? && parameters.id?has_content>
 id="${parameters.id?html}"<#rt/>
</#if>
<#if parameters.name??>
 name="${parameters.name?html}"<#rt/>
</#if>
<#if parameters.nameValue??>
 value="<@s.property value="parameters.nameValue"/>"<#rt/>
<#if parameters.nameValue?length &gt; 14>
 class="tf-verbose"<#rt/>
</#if>
</#if>
<#if parameters.disabled!false>
 disabled="disabled"<#rt/>
</#if><#rt/>
 /><#if primary></strong></#if></li>
