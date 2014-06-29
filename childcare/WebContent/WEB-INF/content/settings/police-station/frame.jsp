<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td6" style="width:5px">&nbsp;</td><td class="sub-title">Police Management</td>
	   </tr>
	  </table>
	</div>

	<hr />
	
	<div id="policeDiv" style="margin: 20px 0 0 0">
	
		<s:url var="policeSearchUrl" action="search-form" namespace="/police" includeParams="none"></s:url>
		<s:url var="policeListUrl" action="list" namespace="/police" includeParams="none"></s:url>
	
		<sj:div href="%{#policeSearchUrl}">
		
		</sj:div>
		
		
		<div id="policeList" style="margin: 10px 0 0 0">
			<sj:div href="%{#policeListUrl}" >
			    
			</sj:div>
		</div>
	</div>
	  
	  
