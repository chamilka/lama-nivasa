<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>


<div>
	  <table>
	   <tr>
	   		<td class="td4" style="width:5px">&nbsp;</td><td class="sub-title">Monthly Data</td>
	   </tr>
	  </table>
	</div>

	<hr/>
	
	<div id="monthlyDataDiv" style="margin: 20px 0 0 0">
	
		<s:url var="reportSearchUrl" action="search-form" namespace="/report" includeParams="none"></s:url>
	
		<sj:div href="%{#reportSearchUrl}">
		
		</sj:div>
		
		
		<div id="monthlyResultDiv" style="margin: 10px 0 0 0; min-height:100px">
		   <s:if test="isUser()">
			    <s:url var="reportAddUrl" action="add" namespace="/report" includeParams="none"></s:url>
				<sj:div href="%{#reportAddUrl}" >
				    
				</sj:div>
		   </s:if>
		</div>
	</div>