<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>


<div>
	  <table>
	   <tr>
	   		<td class="td6" style="width:5px">&nbsp;</td><td class="sub-title">Monthly Data</td>
	   </tr>
	  </table>
	</div>

	<hr />
	
	<div id="monthlyDataDiv" style="margin: 20px 0 0 0">
	
	<s:url var="userSearchUrl" action="search-form" namespace="/report" includeParams="none"></s:url>
		
	<s:url var="userListUrl" action="add" namespace="/report" includeParams="none"></s:url>
	
	<sj:div href="%{#monthlyDataSearchUrl}">
	
	</sj:div>
		
		
	<div id="monthlyDataList" style="margin: 10px 0 0 0">
		<sj:div href="%{#montlyDataListUrl}" >
		    
		</sj:div>
	</div>
	</div>