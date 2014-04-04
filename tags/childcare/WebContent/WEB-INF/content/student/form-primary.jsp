<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:10px">&nbsp;</td><td>Add Student Information</td>
	   </tr>
	  </table>
	</div>

 	<div style="margin: 20px 0 0 50px">
	
	<hr />
	
	<s:form action="guardian-add" method="post" namespace="/student" >
	 
	  <s:select name="district"  label="District" list="#{'':'','Kandy':'Kandy', 'Matale':'Matale', 'Nuwara-Eliya':'Nuwara-Eliya'}"/>
	  <s:select name="divisionalSecretariat"  label="Divisional Secretariat" list="#{'':'','Harispattuwa':'Harispattuwa', 'Kundasale':'Kundasale', 'Teldeniya':'Teldeniya'}"/>
	  <s:select name="gnDevision"  label="GN Devision" list="#{'':'','Dambarawa':'Dambarawa (706)', 'Pilawala':'Pilawala (711)'}"/>
	 
	  <s:textfield name="name" label="Child Name" cssStyle="width:250px" required="true"></s:textfield>
	  <s:select name="gender"  label="Gender" list="#{'Male':'Male', 'Female':'Female'}" required="true"/>
	  <sj:datepicker 
     				id="registeredDate" 
     				name="dateOfBirth" 
     				label="Date Of Birth" 
     				changeMonth="true" 
     				changeYear="true"
     				/>
     <sj:spinner 
    	name="age" 
    	id="ageSpinner" 
    	min="0" 
    	max="30" 
    	step="1" 
    	label="Age"
    	cssStyle="width:60px"
    	required="true"
    	mouseWheel="true"
    	tooltip="Max 18"/>

	  <sj:datepicker 
			id="dateOfAdmission" 
			name="dateOfAdmission" 
			label="Date Of Admission" 
			changeMonth="true" 
			changeYear="true"
	  />
	  
	  <sj:spinner 
    	name="ageAtAdmission" 
    	id="ageAtAdmission" 
    	min="0" 
    	max="30" 
    	step="1" 
    	label="Age At Admission"
    	cssStyle="width:60px"
    	required="true"
    	mouseWheel="true"
    	tooltip="Max 18"/>
    	
	  <s:select name="schooling"  label="Schooling" list="#{'Yes':'Yes', 'No':'No',  'Pre School':'Pre School', 'Disable':'Disable', 'Vocational Training':'Vocational Training'}"/>
	  <s:select name="race"  label="Race" list="#{'Sinhala':'Sinhala', 'Tamil':'Tamil', 'Moor':'Moor'}"/>
	  <s:select name="religion"  label="Religion" list="#{'Buddist':'Buddist', 'Christianity':'Christinity'}"/>
	  
	  <s:select name="birthCertificate"  label="Has Birth Certificate?" list="#{'Yes':'Yes', 'No':'No'}" required="true"/>
	  <s:select name="proformaAvailable"  label="Has Proforma?" list="#{'Yes':'Yes', 'No':'No'}" required="true"/>
	  <s:select name="status"  label="Status" list="#{'Needy':'Needy', 'Desearted':'Desearted', 'Orphan':'Orphan', 'Disable':'Disable', 'Vocational Training':'Vocational Training'}"/>
	  <s:select name="recomondedBy"  label="Recomonded By" list="#{'Yes':'Yes', 'No':'No',  'Pre School':'Pre School', 'Disable':'Disable', 'Vocational Training':'Vocational Training'}"/>
	  <sj:submit value="NEXT" cssStyle="margin-left:300px" targets="studentSearchResultDiv"/>
	</s:form>

</div>