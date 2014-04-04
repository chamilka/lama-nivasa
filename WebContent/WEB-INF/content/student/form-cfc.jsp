<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:10px">&nbsp;</td><td>Add Child Information</td>
	   </tr>
	  </table>
	</div>

 	<div style="margin: 20px 0 0 50px">
	
	<hr />
	
	<s:form action="guardian-add" method="post" namespace="/student" >
	 
	  <s:select name="district"  label="District" list="#{'':'','Kandy':'Kandy', 'Matale':'Matale', 'Nuwara-Eliya':'Nuwara-Eliya'}"/>
	  <s:select name="divisionalSecretariat"  label="Divisional Secretariat" list="#{'':'','Harispattuwa':'Harispattuwa', 'Kundasale':'Kundasale', 'Teldeniya':'Teldeniya'}"/>
	  <s:select name="gnDevision"  label="GN Devision" list="#{'':'','Dambarawa':'Dambarawa (706)', 'Pilawala':'Pilawala (711)'}"/>
	 
	  <s:textfield name="code" label="Code" cssStyle="width:100px" required="true"></s:textfield>
	  <s:textfield name="name" label="Full Name" cssStyle="width:450px" required="true"></s:textfield>
	  <s:select name="gender"  label="Gender" list="#{'Male':'Male', 'Female':'Female'}" required="true"/>
	  <sj:datepicker 
     				id="registeredDate" 
     				name="dateOfBirth" 
     				label="Date Of Birth" 
     				changeMonth="true" 
     				changeYear="true"
     				/>
    

	  <sj:datepicker 
			id="dateOfCommencement" 
			name="dateOfCommencement" 
			label="Date Of Commencement" 
			changeMonth="true" 
			changeYear="true"
	  />
	  
	      	
	  <s:textarea name="school" label="School" cssStyle="width:400px;height:40px" required="true" />
	  <s:textarea name="schoolAddress" label="School Address" cssStyle="width:400px;height:60px" required="true" />

	  <s:textarea name="financialStatus" label="Financial Status" cssStyle="width:400px;height:60px" required="true" />
	  <s:textarea name="requirementStatus" label="Requirement/Problem" cssStyle="width:400px;height:60px" required="true" />
	  <s:textarea name="benefits" label="Expecting Benefits" cssStyle="width:400px;height:60px" required="true" />
	  <s:textfield name="nearestPostOffice" label="Nearest Post Office" cssStyle="width:200px" required="true"></s:textfield>
		
	  <tr style="margin-top: 20px">
	   <td colspan="1" style="font-size: 1em">
	   	Bank Details
	   </td>
	   <td colspan="1">
	   	<hr />
	   </td>
	  </tr>
	  <s:textfield name="nameAsInTheAccount" label="Account Name" cssStyle="width:300px" required="true"></s:textfield>
	  <s:textfield name="bankName" label="Bank Name" cssStyle="width:300px" required="true"></s:textfield>
	  <s:textfield name="accountNumber" label="Account Number" cssStyle="width:300px" required="true"></s:textfield>
	  <s:textfield name="branch" label="Branch" cssStyle="width:300px" required="true"></s:textfield>
	  <sj:submit value="NEXT" cssStyle="margin-left:500px" targets="studentSearchResultDiv"/>
	</s:form>

</div>