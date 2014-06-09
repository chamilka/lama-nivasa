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
	 
	 <s:actionerror/>
	 <s:hidden name="monthlyData.id" />
	 <s:hidden name="operationMode"/>
	 <s:hidden name="monthlyData.lamaNivasa.id" value="%{lamaNivasaId}" />
	 
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
				    	name="monthlyData.numOfMaleChildren" 
				    	id="numOfMaleChildren" 
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
				    	name="monthlyData.numOfFemaleChildren" 
				    	id="numOfFemaleChildren" 
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
				    	name="monthlyData.numOfOfficers" 
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
				    	name="monthlyData.numOfVacantOfficers" 
				    	id="numOfVacantOfficers" 
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
				    	name="monthlyData.numOfFemaleReunification" 
				    	id="numOfFemaleReunification" 
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
				    	name="monthlyData.numOfMaleReunification" 
				    	id="numOfMaleReunification" 
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
				    	name="monthlyData.numOfFemaleTransfers" 
				    	id="numOfFemaleTransfers" 
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
				    	name="monthlyData.numOfMaleTransfers" 
				    	id="numOfMaleTransfers" 
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
				    	name="monthlyData.numOfProformaFemale" 
				    	id="numOfProformaFemale" 
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
				    	name="monthlyData.numOfProformaMale" 
				    	id="numOfProformaMale" 
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
				    	name="monthlyData.numOfFemaleNoGuardians" 
				    	id="numOfFemaleNoGuardians" 
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
				    	name="monthlyData.numOfMaleNoGuardians" 
				    	id="numOfMaleNoGuardians" 
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
				    	name="monthlyData.numOfFemaleTerminates" 
				    	id="numOfFemaleTerminates" 
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
				    	name="monthlyData.numOfMaleTerminates" 
				    	id="numOfMaleTerminates" 
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
				    	name="monthlyData.numOfFemaleHavingSpecialRequirements" 
				    	id="numOfFemaleHavingSpecialRequirements" 
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
				    	name="monthlyData.munOfMaleHavingSpecialRequirements" 
				    	id="munOfMaleHavingSpecialRequirements" 
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
	     				name="monthlyData.probationOfficerVisitedDate" 
	     				label="Probation Officer" 
	     				changeMonth="true" 
	     				changeYear="true"
	     				cssStyle="width:80px"
	     				/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	     <sj:datepicker 
	     				id="counsellorVisitedDate" 
	     				name="monthlyData.counsellorVisitedDate" 
	     				label="Counsellor" 
	     				changeMonth="true" 
	     				changeYear="true"
	     				cssStyle="width:80px"
	     				/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 		
	    
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	      <sj:datepicker 
	     				id="departmentCommissionerVisitedDate" 
	     				name="monthlyData.departmentCommissionerVisitedDate" 
	     				label="Department Commissioner" 
	     				changeMonth="true" 
	     				changeYear="true"
	     				cssStyle="width:80px"
	     				/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	      <sj:datepicker 
	     				id="departmentProbationOfficerVisitedDate" 
	     				name="monthlyData.departmentProbationOfficerVisitedDate" 
	     				label="Department Probation Officer" 
	     				changeMonth="true" 
	     				changeYear="true"
	     				cssStyle="width:80px"
	     				/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 					
	 
	 	<tr>
		      <td colspan="2" style="padding-left: 25px">
		     	 <table>
		     	      <sj:datepicker 
	     				id="departmentOfChildDevelopmentOfficerVisitedDate" 
	     				name="monthlyData.departmentOfChildDevelopmentOfficerVisitedDate" 
	     				label="Department Child Development Officer" 
	     				changeMonth="true" 
	     				changeYear="true"
	     				cssStyle="width:80px"
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
	     				id="theLastMeetingHeldOn" 
	     				name="monthlyData.theLastMeetingHeldOn" 
	     				label="The last meeting" 
	     				changeMonth="true" 
	     				changeYear="true"
	     				cssStyle="width:80px"
	     				/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	     <sj:spinner 
				    	name="monthlyData.numOfMeetingsUptoNow" 
				    	id="numOfMeetingsUptoNow" 
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
	     				name="monthlyData.placementCommittee" 
	     				label="Placement Committee" 
	     				changeMonth="true" 
	     				changeYear="true"
	     				cssStyle="width:80px"
	     				/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 	
	 
	 	
		<tr>
		     <td>
		       <b>11. Intakes</b>
		     </td>
	    </tr>
	    <tr>
		     <td style="padding-left: 25px" colspan="2">
		     	 <table>
		     	 	 <sj:spinner 
				    	name="monthlyData.numOfIntakes" 
				    	id="numOfIntakes" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Number of Intakes"
				    	cssStyle="width:60px"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
		      
	    </tr> 		
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	 <sj:spinner 
				    	name="monthlyData.intakeFromCourt" 
				    	id="intakeFromCourt" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Intakes from Court"
				    	cssStyle="width:60px"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 <sj:spinner 
				    	name="monthlyData.intakeFromDepartment" 
				    	id="intakeFromDepartment" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Intakes from Department"
				    	cssStyle="width:60px"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 			
	    
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	 <sj:spinner 
				    	name="monthlyData.intakeFromParents" 
				    	id="intakeFromParents" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Intakes from Parents"
				    	cssStyle="width:60px"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 <sj:spinner 
				    	name="monthlyData.intakeFromOrganizations" 
				    	id="intakeFromOrganizations" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Intakes from Organizations"
				    	cssStyle="width:60px"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 			
	    
	    <tr>
		     <td style="padding-left: 25px" colspan="2">
		     	 <table>
		     	 	 <sj:spinner 
				    	name="monthlyData.intakeFromOther" 
				    	id="intakeFromOther" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Intakes from Other"
				    	cssStyle="width:60px"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
		    
	    </tr> 	
	    
	    
		<tr>
		     <td>
		       <b>12. Reunifications</b>
		     </td>
	    </tr>
	    <tr>
		     <td style="padding-left: 25px" colspan="2">
		     	 <table>
		     	 	 <sj:spinner 
				    	name="monthlyData.numToAdoption" 
				    	id="numToAdoption" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="To Adoption"
				    	cssStyle="width:60px"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
		      
	    </tr> 
	    	    
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	 <sj:spinner 
				    	name="monthlyData.numToParent" 
				    	id="numToParent" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="To Parents"
				    	cssStyle="width:60px"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 <sj:spinner 
				    	name="monthlyData.numToMarrage" 
				    	id="numToMarrage" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="To Marrage"
				    	cssStyle="width:60px"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 					
	    
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	 <sj:spinner 
				    	name="monthlyData.numToEmployement" 
				    	id="numToEmployement" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="To Employement"
				    	cssStyle="width:60px"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 <sj:spinner 
				    	name="monthlyData.numToVocational" 
				    	id="numToVocational" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="To Vocational"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 
	    
	     <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	 <sj:spinner 
				    	name="monthlyData.numToSelfEmployement" 
				    	id="numToSelfEmployement" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="To Self Employement"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 <sj:spinner 
				    	name="monthlyData.numToOther" 
				    	id="numToOther" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="To Other"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 											
	    
	    <tr>
		      <td colspan="2">
		     	 <table>
		     	      <sj:submit targets="monthlyResultDiv"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 			
	  </table>
	</s:form>