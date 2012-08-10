<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td4" style="width:5px">&nbsp;</td><td>Monthly Information</td>
	   		<td style="text-align: right; padding-right: 10px;white-space: nowrap">
	   	 	
			
	
			<s:url var="addReport" action="search" 
			namespace="/report" includeParams="none"></s:url>
     	
     		
			<sj:a href="%{#addReport}" targets="userList">Search Report</sj:a>
		</td>
		
	   </tr>
	   
	  </table>
	</div>

	
	<hr />
	
	<s:form action="save" method="post" namespace="/report" cssStyle="margin-left:50px" >
	 
	 <table width="100%">
	   <tr>
	     <td>
	       <b>1. Number Of Children</b>
	     </td>
	   </tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 <sj:spinner 
				    	name="numberOfFemaleChildren" 
				    	id="numberOfFemaleChildren" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Female"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"
				    	tooltip="Max 35"/>
		     	 	
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 <sj:spinner 
				    	name="numberOfMaleChildren" 
				    	id="numberOfMaleChildren" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Male"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"
				    	tooltip="Max 35"/>
		     	 	
		     	 </table>
		     </td>
	    </tr>
	   
	   
	   <tr>
	     <td>
	       <b>2. Officers</b>
	     </td>
	   </tr>
	   
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<sj:spinner 
				    	name="numberOfOfficers" 
				    	id="numberOfOfficers" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Number of Officers"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<sj:spinner 
				    	name="numberOfVacantOfficers" 
				    	id="numberOfVacantOfficers" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Number of Vacant Officers"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	
		     	 </table>
		     </td>
	    </tr> 
	   <tr>
	     <td>
	       <b>3. Number Of Reunifications</b>
	     </td>
	   </tr>
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	     <sj:spinner 
				    	name="numberOfFemaleSocietals" 
				    	id="numberOfFemaleSocietals" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Female"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	     <sj:spinner 
				    	name="numberOfMaleSocietals" 
				    	id="numberOfMaleSocietals" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Male"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 	
	   
	   <tr>
	     <td>
	       <b>4. Number Of Transfers</b>
	     </td>
	   </tr>
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	      <sj:spinner 
				    	name="numberOfFemaleTransfered" 
				    	id="numberOfFemaleTransfered" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Female"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	     <sj:spinner 
				    	name="numberOfMaleTransferred" 
				    	id="numberOfMaleTransferred" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Male"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 	
	    <tr>
	     <td>
	       <b>5. No Proforma</b>
	     </td>
	    </tr>
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	      <sj:spinner 
				    	name="numberOfFemaleProforma" 
				    	id="numberOfFemaleProforma" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Female"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	     <sj:spinner 
				    	name="numberOfMaleProforma" 
				    	id="numberOfMaleProforma" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Male"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 		
	   <tr>
	     <td>
	       <b>6. No Guardian</b>
	     </td>
	   </tr>
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	     <sj:spinner 
				    	name="numberOfFemaleNoGuardian" 
				    	id="numberOfFemaleNoGuardian" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Female"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 	  <sj:spinner 
				    	name="numberOfMaleNoGuardian" 
				    	id="numberOfMaleNoGuardian" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Male"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 		
	    <tr>
	    <td>
	       <b>7. Number Of Terminates</b>
	     </td>
	    </tr>
	   
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	     <sj:spinner 
				    	name="numberOfTerminatedFemale" 
				    	id="numberOfTerminatedFemale" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Female"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	      <sj:spinner 
				    	name="numberOfTerminatedMale" 
				    	id="numberOfTerminatedMale" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Male"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 		
	    <tr>
	     <td>
	       <b>8. Having Special Requirements</b>
	     </td>
	    </tr>
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	 <sj:spinner 
				    	name="numberOfRequirementFemale" 
				    	id="numberOfRequirementFemale" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Female"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 <sj:spinner 
				    	name="numberOfRequirementMale" 
				    	id="numberOfRequirementMale" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Male"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 			
	    <tr>
	     <td>
	       <b>9. Visits on</b>
	     </td>
	    </tr>
	    
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	      <sj:datepicker 
	     				id="probationOfficerObserved" 
	     				name="probationOfficerObserved" 
	     				label="Probation Officer" 
	     				changeMonth="true" 
	     				changeYear="true"
	     				cssStyle="width:80px"
	     				displayFormat="yy/mm/dd"
	     				/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	     <sj:datepicker 
	     				id="counsellingOfficerObserved" 
	     				name="counsellingOfficerObserved" 
	     				label="Counsellor" 
	     				changeMonth="true" 
	     				changeYear="true"
	     				cssStyle="width:80px"
	     				displayFormat="yy/mm/dd"
	     				/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 		
	    
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	      <sj:datepicker 
	     				id="commisionerDepartmentObserved" 
	     				name="commisionerDepartmentObserved" 
	     				label="Department Commissioner" 
	     				changeMonth="true" 
	     				changeYear="true"
	     				cssStyle="width:80px"
	     				displayFormat="yy/mm/dd"
	     				/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	      <sj:datepicker 
	     				id="officerDepartmentObserved" 
	     				name="officerDepartmentObserved" 
	     				label="Department Probation Officer" 
	     				changeMonth="true" 
	     				changeYear="true"
	     				cssStyle="width:80px"
	     				displayFormat="yy/mm/dd"
	     				/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 					
	 
	 	<tr>
		      <td colspan="2" style="padding-left: 25px">
		     	 <table>
		     	      <sj:datepicker 
	     				id="officerDepartmentChildDevelopmentObserved" 
	     				name="officerDepartmentChildDevelopmentObserved" 
	     				label="Department Child Development Officer" 
	     				changeMonth="true" 
	     				changeYear="true"
	     				cssStyle="width:80px"
	     				displayFormat="yy/mm/dd"
	     				/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 	
	     <tr>
	     <td>
	       <b>10. Meetings</b>
	     </td>
	    </tr>
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	      <sj:datepicker 
	     				id="lastMeetingHeld" 
	     				name="lastMeetingHeld" 
	     				label="The last meeting" 
	     				changeMonth="true" 
	     				changeYear="true"
	     				cssStyle="width:80px"
	     				displayFormat="yy/mm/dd"
	     				/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	     <sj:spinner 
				    	name="numberOfMeetings" 
				    	id="numberOfMeetings" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Number of meetings upto now"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 								
	    <tr>
		      <td colspan="2" style="padding-left: 25px">
		     	 <table>
		     	      <sj:datepicker 
	     				id="placementCommittee" 
	     				name="officerDepartmentChildDevelopmentObserved" 
	     				label="Placement Committee" 
	     				changeMonth="true" 
	     				changeYear="true"
	     				cssStyle="width:80px"
	     				displayFormat="yy/mm/dd"
	     				/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 	
	 
	 	<tr>
		      <td colspan="2">
		     	 <table>
		     	      <sj:submit targets="childResultDiv"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 	
	
	  </table>
	</s:form>