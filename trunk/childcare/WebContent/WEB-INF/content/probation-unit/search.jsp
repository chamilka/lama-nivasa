<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>	
	<s:form action="search" namespace="/probationUnit" method="post">
	  <table id="commonTable" class="orangeTbl" cellpadding="0" cellspacing="0" style="width: 100%" >
	   <tr>
	   	<th colspan="3">Search</th>
	   </tr>
	   
	   <tr>
	   	<td style="width:300px">
	   	 	<table>
	  			<s:textfield name="probationUnit.name" label="Name" cssStyle="width:250px" required="true"></s:textfield>
			</table>
	  	</td>
     	<td style="text-align: left">
	   	  <table>
	  		  <sj:submit value="SEARCH" targets="probationUnitResultDiv"/>
	  	  </table>
     	</td>
     	<td style="text-align: right; padding-right: 10px">
	   	  <table>
	  		  	<s:url var="probationUnitAddUrl" action="add" 
						namespace="/probationUnit" includeParams="none"></s:url>
				<sj:a href="%{#probationUnitAddUrl}" targets="probationUnitResultDiv" >
					Add</sj:a> 
				|
				<s:url var="probationUnitListUrl" action="list" 
					namespace="/probationUnit" includeParams="none"></s:url>
					
				<sj:a href="%{#probationUnitListUrl}" targets="probationUnitResultDiv">
					All Units</sj:a>
	  	  </table>
     	</td>
	  </table>
	
	</s:form>

</div>