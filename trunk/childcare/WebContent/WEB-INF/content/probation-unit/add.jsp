<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td2" style="width:5px">&nbsp;</td><td class="sub-title">Add Probation Unit</td>
	   </tr>
	  </table>
	</div>

 	<div style="margin: 10px 0 0 0">
	
	<hr />
	
	<s:form id="formAddProbationUnit" action="save" method="post" namespace="/probationUnit" >
	 
	 <table id="commonTable" class="orangeTbl" width="100%">
	 	  <s:actionerror />
		  <s:hidden name="probationUnit.id" />
		  <s:hidden name="probationUnit.sortOrder" />
		  <s:hidden name="operationMode"/> 
		  <tr>
	 		<th>Name</th>
	 		<td  colspan="3">
		 		 <table cellpadding="0" cellspacing="0"><s:textfield name="probationUnit.name" cssStyle="width:350px" required="true" /></table>
		 	</td>
		 	<th>Number Of Officers</th>
		 	<td>
		 		 <table cellpadding="0" cellspacing="0"><s:textfield name="probationUnit.numberOfOfficers" cssStyle="width:100px" required="true" /></table>
		 	</td>
		  </tr>
		  <tr>
	 		<th>Telephone</th>
	 		<td><table cellpadding="0" cellspacing="0"><s:textfield name="probationUnit.telephone" cssStyle="width:150px"  /></table></td>
		    
		    <th>Fax</th>
	 		<td><table cellpadding="0" cellspacing="0"><s:textfield name="probationUnit.fax" cssStyle="width:150px"  /></table></td>
		  
		    <th>Email</th>
	 		<td><table cellpadding="0" cellspacing="0"><s:textfield name="probationUnit.email" cssStyle="width:250px"  /></table></td>
		  </tr>
		  <tr>
	 		<th>Primary Police Station</th>
	 		<td colspan="5"><table cellpadding="0" cellspacing="0">
		  		<s:select name="probationUnit.policeStations" multiple="true" list="policeStationList" listKey="id" listValue="name" value="%{{'0001'}}" cssStyle="height:100px"/></table></td>
		  </tr>
		  <tr>
	 		<th>Address</th>
	 		<td colspan="5"><table cellpadding="0" cellspacing="0">
		  		<s:textfield name="probationUnit.address" cssStyle="width:600px" /></table></td>
		  </tr>
		   <tr>
	 		<th>Comment</th>
	 		<td colspan="5"><table cellpadding="0" cellspacing="0">
		  		<s:textfield name="probationUnit.comment" cssStyle="width:600px"  /></table></td>
		  </tr>
		  <tr>
	 		<td></td>	
		 	<td>
		 		<table>
		 		  <tr>
		 		   <td>
		 		    <table>
			 			<sj:submit value="SUBMIT" targets="probationUnitResultDiv"/>
			 			<s:url var="probationUnitViewUrl" action="view" namespace="/probationUnit" includeParams="none">
				 			<s:param name="id" value="id"></s:param>
				 		</s:url>
			 		</table>
			 	   </td>
			 	   <td>
			 	   	<table>
		 				<sj:a href="%{#probationUnitViewUrl}" targets="probationUnitResultDiv"><input type="button" value="CANCEL" /></sj:a>
		 			</table>
			 	   </td>
			 	  </tr>
			 	</table>
			 </td>
		  </tr>
	  </table>
	</s:form>

</div>