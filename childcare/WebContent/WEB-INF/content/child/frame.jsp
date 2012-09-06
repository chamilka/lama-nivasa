<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
 
 <s:if test="!user">
	<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:5px">&nbsp;</td><td class="sub-title">Child Information</td>
	   </tr>
	  </table>
	</div>
	<hr />
	<s:url var="childSearchUrl" action="search-form" 
		namespace="/child" includeParams="none"></s:url>
		
	<sj:div href="%{#childSearchUrl}">
	    
	</sj:div>
	
	</s:if>
	
	<s:url var="childListUrl" action="list" 
		namespace="/child" includeParams="none"></s:url>
	  
	<div id="childResultDiv" style="margin-top: 10px;min-height: 250px">
		<sj:div href="%{#childListUrl}">
		    
		</sj:div>
	</div>	  
