<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td4" style="width:5px">&nbsp;</td><td>Monthly Information</td>
	   </tr>
	   
	  </table>
	</div>

	
	<hr />
	
	<s:form action="save" method="post" namespace="/report" cssStyle="margin-left:50px" >
	 <hidden name="monthlyData.lamaNivasa.id" value=" SET " />
	 
	 <table width="100%">
	  <tr>
	    <td style="width: 100px">
	   	  <table>
	   		<s:select label="Year" name="monthlyData.year"  list="yearList" listKey="listKey" listValue="listValue"/>
	 	  </table>
     	 </td>
     	 
     	 <td style="width: 100px">
	   	  <table>
	   		<s:select label="Month" name="monthlyData.month"  list="monthList" listKey="listKey" listValue="listValue"/>
	 	  </table>
     	 </td>
       </tr>	
       <tr>
       	<td colspan="2">
       		<hr />
       	</td>
       </tr> 
	   <tr>
	     <td>
	       <b>1. Number Of Children</b>
	     </td>
	   </tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 <sj:spinner 
				    	name="monthlyData.numberOfFemaleChildren" 
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
				    	name="monthlyData.numberOfMaleChildren" 
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
				    	name="monthlyData.numberOfOfficers" 
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
				    	name="monthlyData.numberOfVacantOfficers" 
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
				    	name="monthlyData.numberOfFemaleReunification" 
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
				    	name="monthlyData.numberOfMaleReunification" 
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
				    	name="monthlyData.numberOfFemaleTransfered" 
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
				    	name="monthlyData.numberOfMaleTransferred" 
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
				    	name="monthlyData.numberOfFemaleProforma" 
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
				    	name="monthlyData.numberOfMaleProforma" 
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
				    	name="monthlyData.numberOfFemaleNoGuardian" 
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
				    	name="monthlyData.numberOfMaleNoGuardian" 
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
				    	name="monthlyData.numberOfTerminatedFemale" 
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
				    	name="monthlyData.numberOfTerminatedMale" 
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
				    	name="monthlyData.numberOfRequirementFemale" 
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
				    	name="monthlyData.numberOfRequirementMale" 
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
	     				name="monthlyData.probationOfficerObserved" 
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
	     				name="monthlyData.counsellingOfficerObserved" 
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
	     				name="monthlyData.commisionerDepartmentObserved" 
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
	     				name="monthlyData.officerDepartmentObserved" 
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
	     				name="monthlyData.officerDepartmentChildDevelopmentObserved" 
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
	     				name="monthlyData.lastMeetingHeld" 
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
				    	name="monthlyData.numberOfMeetings" 
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
	     				name="monthlyData.officerDepartmentChildDevelopmentObserved" 
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