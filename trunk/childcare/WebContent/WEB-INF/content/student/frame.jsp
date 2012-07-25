<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:10px">&nbsp;</td><td>Child Information</td>
	   </tr>
	  </table>
	</div>

	<s:url var="studentSearchUrl" action="student-search-view" 
		namespace="/student" includeParams="none"></s:url>
		
	<s:url var="studentAddUrl" action="primary-add" 
		namespace="/student" includeParams="none"></s:url>
  
	<sj:div href="%{#studentSearchUrl}">
	    
	</sj:div>
	  
	<div id="studentSearchResultDiv">
		<sj:div href="%{#studentAddUrl}">
		    
		</sj:div>
	</div>	  
