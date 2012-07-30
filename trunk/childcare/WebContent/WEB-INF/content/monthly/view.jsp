<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td4" style="width:10px">&nbsp;</td><td>Monthly Information</td>
	   </tr>
	  </table>
	</div>

	
	<hr />
	
	<s:form action="save" method="post" namespace="/report" >
	 
	 <table width="100%">
	   	<tr>
		     <td class="monthly-td">
		     	 <table>
		     	 <sj:spinner 
				    	name="numberOfChildren" 
				    	id="numberOfChildren" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Number of Children"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"
				    	tooltip="Max 35"/>
		     	 	
		     	 </table>
		     </td>
	    </tr>
	   
	    <tr>
		     <td class="monthly-td">
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
		     <td class="monthly-td">
		     	 <table>
		     	     <sj:spinner 
				    	name="numberOfFemaleSocietals" 
				    	id="numberOfFemaleSocietals" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Female Reunification"
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
				    	label="Male Reunification"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 	
	   
	    <tr>
		     <td class="monthly-td">
		     	 <table>
		     	      <sj:spinner 
				    	name="numberOfFemaleTransfered" 
				    	id="numberOfFemaleTransfered" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Female Transferred"
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
				    	label="Male Transferred"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 	
	    
	    <tr>
		     <td class="monthly-td">
		     	 <table>
		     	      <sj:spinner 
				    	name="numberOfFemaleProforma" 
				    	id="numberOfFemaleProforma" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Female having Pro forma"
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
				    	label="Male having Pro forma"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 		
	   
	    <tr>
		     <td class="monthly-td">
		     	 <table>
		     	     <sj:spinner 
				    	name="numberOfFemaleNoGuardian" 
				    	id="numberOfFemaleNoGuardian" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Female having no guardians"
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
				    	label="Male having no guardians"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 		
	    
	   
	    <tr>
		     <td class="monthly-td">
		     	 <table>
		     	     <sj:spinner 
				    	name="numberOfTerminatedFemale" 
				    	id="numberOfTerminatedFemale" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Female terminated"
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
				    	label="Male terminated"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 		
	    
	    <tr>
		     <td class="monthly-td">
		     	 <table>
		     	 	 <sj:spinner 
				    	name="numberOfRequirementFemale" 
				    	id="numberOfRequirementFemale" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	value="0"
				    	label="Female having special requirements"
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
				    	label="Male having special requirements"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 			
	    
	    
	    <tr>
		     <td class="monthly-td">
		     	 <table>
		     	      <sj:datepicker 
	     				id="probationOfficerObserved" 
	     				name="probationOfficerObserved" 
	     				label="Probation Officer Visited Date" 
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
	     				label="Couselling Officer Visited Date" 
	     				changeMonth="true" 
	     				changeYear="true"
	     				cssStyle="width:80px"
	     				displayFormat="yy/mm/dd"
	     				/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 		
	    
	    <tr>
		     <td class="monthly-td">
		     	 <table>
		     	      <sj:datepicker 
	     				id="commisionerDepartmentObserved" 
	     				name="commisionerDepartmentObserved" 
	     				label="Dept. Commissioner Visited Date" 
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
	     				label="Dept. Probation Officer Visited Date" 
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
		     	      <sj:datepicker 
	     				id="officerDepartmentChildDevelopmentObserved" 
	     				name="officerDepartmentChildDevelopmentObserved" 
	     				label="Dept. Child Development Officer Visited Date" 
	     				changeMonth="true" 
	     				changeYear="true"
	     				cssStyle="width:80px"
	     				displayFormat="yy/mm/dd"
	     				/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 	
	    
	    <tr>
		     <td class="monthly-td">
		     	 <table>
		     	      <sj:datepicker 
	     				id="lastMeetingHeld" 
	     				name="lastMeetingHeld" 
	     				label="The last meeting held on" 
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
		      <td colspan="2" class="monthly-td">
		     	 <table>
		     	      <sj:submit targets="childResultDiv"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 	
	
	  </table>
	</s:form>