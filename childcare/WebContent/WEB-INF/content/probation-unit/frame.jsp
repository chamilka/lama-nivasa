<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td2" style="width:5px">&nbsp;</td><td>Probation Units</td>
	   </tr>
	  </table>
	</div>

	<!-- Search -->
	<s:url var="probationUnitSearchUrl" action="search-form" 
		namespace="/probationUnit" includeParams="none"></s:url>
		
	<s:url var="probationUnitListUrl" action="list" 
		namespace="/probationUnit" includeParams="none"></s:url>
  
	<sj:div href="%{#probationUnitSearchUrl}">
	    
	</sj:div>
	  
	<div id="probationUnitResultDiv">
		<sj:div href="%{#probationUnitListUrl}">
		    
		</sj:div>
	</div>	  
