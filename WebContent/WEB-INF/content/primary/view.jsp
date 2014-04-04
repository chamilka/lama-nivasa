<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:10px">&nbsp;</td><td>Primary Information</td>
	   </tr>
	  </table>
	</div>
	<div>
	
	<hr />
	
	<s:form>
	 
	  <s:textfield name="Index Number" label="Index Number" cssStyle="width:150px" required="true"></s:textfield>
	  <s:select name="probationUnit"  label="Probation Unit" list="probationUnitList" listKey="listKey" listValue="listValue"/>
	  <s:textfield name="nature" label="Nature" cssStyle="width:150px" required="true"></s:textfield>
	  <s:textfield name="name" label="Name" cssStyle="width:150px" required="true"></s:textfield>
	  <s:textarea name="address" label="Address" cssStyle="width:300px;height:60px" required="true"></s:textarea>
	  
	  <s:select name="district"  label="District" list="districtList" listKey="id" listValue="name" required="true"/>
	  <s:select name="divisionalSecretariat"  label="Divisional Secretariat" list="#{'Kundasale':'Kundasale', 'Harispattuwa':'Harispattuwa'}" required="true"/>
	  
	  <s:textfield name="telephone" label="Telephone" cssStyle="width:150px" required="true"></s:textfield>
	  <s:textfield name="fax" label="Fax" cssStyle="width:150px" required="true"></s:textfield>
	  <s:textfield name="email" label="Email" cssStyle="width:250px" required="true"></s:textfield>
	  <s:textfield name="ageLimit" label="Age Limit" cssStyle="width:250px" required="true"></s:textfield>
	  <s:select name="registrationStatus"  label="Is Registered" list="registrationStatusList" listKey="listKey" listValue="listValue"/>
	  <s:textfield name="registrationNumber" label="Registration Number" cssStyle="width:250px"></s:textfield>
	  <sj:datepicker 
     				id="registeredDate" 
     				name="registeredDate" 
     				label="Registered Date" 
     				changeMonth="true" 
     				changeYear="true"
     				/>
	  <s:select name="maintenanceDonation"  label="Maintenance Donations" list="maintenanceDonationList" listKey="listKey" listValue="listValue"/>
	  <s:textfield name="maintenanceMethod" label="Maintenance Method" cssStyle="width:250px" required="true"></s:textfield>
	  <s:textarea name="aboutContactPerson" label="About Contact Person" cssStyle="width:300px;height:60px" required="true"></s:textarea>
	  
	  <s:textfield name="allocatedNumberOfStudents" label="Allocated Number Of Students" cssStyle="width:100px" required="true"></s:textfield>
	
	  <sj:submit />
	</s:form>

</div>