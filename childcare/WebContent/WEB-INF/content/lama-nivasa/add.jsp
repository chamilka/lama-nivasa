<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td1" style="width:5px">&nbsp;</td><td class="sub-title">Add Chidren's Home</td>
	   </tr>
	  </table>
	</div>

 	<div style="margin: 10px 0 0 0px">

	<hr />

	<s:form id="lamaNivasaAddForm" action="save" method="post" namespace="/lamaNivasa" >

	  <s:actionerror/>
	  <s:hidden name="lamaNivasa.id" />
	  <s:hidden name="operationMode"/>

	  <table id="commonTable" class="blueTbl" width="100%">

	 	<tr>
	 		<th>Name</th><td  colspan="5"><table><s:textfield name="lamaNivasa.name" cssStyle="width:350px" required="true" /></table></td>
	 	</tr>
	 	<tr>
	 		<th>Date of Establishment</th><td  colspan="5"><table>
	 		<sj:datepicker
     				id="dateOfEstablished"
     				name="lamaNivasa.dateOfEstablishment"
     				changeMonth="true"
     				changeYear="true"
     				yearRange="1972:2012"
     				value="%{lamaNivasa.dateOfEstablishment.time}"
     				/>

	 		</table></td>
	 	</tr>
	 	<tr>
	 		<th>Category</th><td><table><s:select name="lamaNivasa.category" list="lamaNivasaTypeList" listKey="listKey" listValue="listValue"/></table></td>
	 		<th>Unit</th><td colspan="3"><table><s:select name="lamaNivasa.probationUnit.id" list="probationUnitList" listKey="id" listValue="name"/></table></td>
	 	</tr>
	 	<tr>
	 	<th>Div. Secretariat</th>
	 			<td colspan="5">
	 				<table>  <sj:autocompleter
			  		id="lamaNivasa.divisionalSecretariat.id"
		     		name="lamaNivasa.divisionalSecretariat.id"
		     		list="%{divisionalSecretariatList}"
		     		listKey="id" listValue="name"
		     	/></table></td>
	 	</tr>
	 	<tr>
	 		<th>Address</th><td  colspan="5"><table><s:textfield name="lamaNivasa.address" cssStyle="width:300px" required="true" /></table></td>
	 	</tr>
	 	<tr>
	 		<th>Telephone</th><td><table><s:textfield name="lamaNivasa.telephone"  cssStyle="width:150px" required="true" /></table></td>
	 		<th>Fax</th><td><table><s:textfield name="lamaNivasa.fax"  cssStyle="width:150px" /></table></td>
	 		<th>Email</th><td><table><s:textfield name="lamaNivasa.email"  cssStyle="width:200px" /></table></td>
	 	</tr>
	 	<tr>
	 		<th>Number of children</th>
	 			<td><table> <sj:spinner
			    	name="lamaNivasa.numberOfChildren" id="numberOfChildrenSpinner"
			    	min="0" step="1"
			    	cssStyle="width:60px" required="true" mouseWheel="true"
			    	tooltip="Head count"/>	</table></td>
	 		<th>Min Age</th>
	 		<td><table> <sj:spinner
		    	name="lamaNivasa.minAge" id="minAgeSpinner"
		    	min="0" max="30" step="1"
		    	cssStyle="width:60px" required="true" mouseWheel="true"
		    	tooltip="Minimum Age in Years"/>
    			</table></td>
	 		<th>Max Age</th>
	 		<td><table>
	 			<sj:spinner
		    	name="lamaNivasa.maxAge" id="maxAgeSpinner"
		    	min="5" max="30" step="1"
		    	cssStyle="width:60px" required="true" mouseWheel="true"
		    	tooltip="Maximu Age in Years"/></table></td>
	 	</tr>

	 	<tr>
	 		<th>Is Registered</th><td><table><s:select name="lamaNivasa.registrationStatus"  list="registrationStatusList" listKey="listKey" listValue="listValue"/></table></td>
	 		<th>Reg Number</th><td><table><s:textfield name="lamaNivasa.registrationNumber" cssStyle="width:120px"></s:textfield></table></td>
	 		<th>Reg Date</th><td><table>  <sj:datepicker
     				id="registrationDate"
     				name="lamaNivasa.registrationDate"
     				changeMonth="true"
     				changeYear="true"
     				yearRange="1972:2012"
     				value="%{lamaNivasa.registrationDate.time}"
     				/></table></td>
	 	</tr>

	 	<tr>
	 		<th>Funding</th><td><table><s:select name="lamaNivasa.fundingMethod"  list="maintenanceDonationList" listKey="listKey" listValue="listValue"/></table></td>
	 		<th>Dept Funding</th><td colspan="3"><table>
	 			 <s:select name="lamaNivasa.departmentFunding" list="yesNoList" listKey="listKey" listValue="listValue"/>
	 		</table></td>
	 	</tr>
	 	<tr>

	 		<th>No. of Officers</th><td colspan="5"><table><sj:spinner
		    	name="lamaNivasa.numberOfOfficers" id="numberOfOfficersSpinner"
		    	min="0" max="20" step="1"
		    	cssStyle="width:60px" required="true" mouseWheel="true"
		    	tooltip="Head count"/></table></td>
	 	</tr>
		<tr>
	 		<th></th><td colspan="5"><table><sj:submit value="Submit" targets="lamaNivasaResultDiv"/></table></td>

	 	</tr>

	   </table>
	</s:form>

</div>