<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td2" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="page.probationunit.frame.subtitle"/></td>
	   </tr>
	  </table>
	</div>

 	<div style="margin: 10px 0 0 0">
	
	<hr />
	
	<s:url id="districtDefaultJsonUrl" action="district-default-json"
			namespace="/lamaNivasa" />
		
		<s:url id="policeStationSelectJsonUrl" action="police-station-select-json"
			namespace="/police" />
	
	<s:form id="formAddProbationUnit" action="save" method="post" namespace="/probationUnit" >
	 
	 <table id="contentTable" class="orangeTbl" width="100%">
	 	  <s:actionerror />
		  <s:hidden name="probationUnit.id" />
		  <s:hidden name="probationUnit.sortOrder" />
		  <s:hidden name="operationMode"/> 
		  <tr>
	 		<th><s:text name="page.probationunit.list.name"/><span class="required">*</span></th>
	 		<td  colspan="3">
		 		 <table cellpadding="0" cellspacing="0"><s:textfield name="probationUnit.name" cssStyle="width:350px" required="true" /></table>
		 	</td>
		 	<th><s:text name="page.probationunit.add.officers"/></th>
		 	<td>
		 		 <table cellpadding="0" cellspacing="0"><s:textfield name="probationUnit.numberOfOfficers" cssStyle="width:100px" required="true" /></table>
		 	</td>
		  </tr>
		  <tr>
	 		<th><s:text name="page.probationunit.add.telephone"/></th>
	 		<td><table cellpadding="0" cellspacing="0"><s:textfield name="probationUnit.telephone" cssStyle="width:150px"  /></table>
		    
		    <th><s:text name="page.probationunit.add.fax"/></th>
	 		<td><table cellpadding="0" cellspacing="0"><s:textfield name="probationUnit.fax" cssStyle="width:150px"  /></table></td>
		  
		    <th><s:text name="page.probationunit.add.email"/></th>
	 		<td><table cellpadding="0" cellspacing="0"><s:textfield name="probationUnit.email" cssStyle="width:250px"  /></table></td>
		  </tr>
		   <tr>
	 		<th><s:text name="page.probationunit.add.district"/></th>
	 		<td colspan="5"><table cellpadding="0" cellspacing="0">
	 			<sj:select href="%{districtDefaultJsonUrl}" id="district"
								onChangeTopics="reloadsecondlist" name="districtId"
								list="districtList" listKey="id" listValue="name"
								emptyOption="false" headerKey="-1"
								headerValue="Please Select a District to View Police Stations" />
			</table></td>
		  </tr>
		  <tr>
	 		<th><s:text name="page.probationunit.add.policestations"/></th>
	 		<td colspan="5"><table cellpadding="0" cellspacing="0">
		  		<sj:select href="%{policeStationSelectJsonUrl}" 
								formIds="formAddProbationUnit"
								reloadTopics="reloadsecondlist" name="selectedPoliceStations"
								list="policeStationList" listKey="id" listValue="name"
								emptyOption="false" headerKey="-1"
								cssStyle="height:200px" multiple="true" headerValue="-----Police Stations-----"/>
								
			</table></td>
		  </tr>
		 
		  <tr>
	 		<th><s:text name="page.probationunit.add.address"/></th>
	 		<td colspan="5"><table cellpadding="0" cellspacing="0">
		  		<s:textfield name="probationUnit.address" cssStyle="width:600px" /></table></td>
		  </tr>
		   <tr>
	 		<th><s:text name="page.probationunit.add.comment"/></th>
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
			 			<sj:submit value="%{getText('page.probationunit.add.submitbutton')}" targets="probationUnitResultDiv"/>
			 		</table>
			 	   </td>
			 	   <td>
			 	   	<table>
			 	   		<s:url var="probationUnitViewUrl" action="list" namespace="/probationUnit" includeParams="none"></s:url>
		 				<sj:a href="%{#probationUnitViewUrl}" targets="probationUnitResultDiv"><input type="button" value="<s:text name='page.probationunit.add.cancelbutton'/>" /></sj:a>
		 			</table>
			 	   </td>
			 	  </tr>
			 	</table>
			 </td>
		  </tr>
	  </table>
	</s:form>

</div>

<%-- <script type="text/javascript">
$("#districtListDropDown").click(function () {
		
        $("#divHideID").toggle();
        });
</script> --%>
