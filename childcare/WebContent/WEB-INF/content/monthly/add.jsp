<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td4" style="width:5px">&nbsp;</td><td><s:text name="page.add"/> <s:property value="monthlyData.lamaNivasa.name" /></td>
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
	   		<s:select label="%{getText('page.add.label.year')}" name="monthlyData.year"  list="yearList" listKey="listKey" listValue="listValue"/>
	 	  </table>
     	 </td>
     	 
     	 <td style="width: 100px">
	   	  <table>
	   		<s:select label="%{getText('page.add.label.month')}" name="monthlyData.month"  list="monthList" listKey="listKey" listValue="listValue"/>
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
	       <b><s:text name="page.view.no.of.children"/></b>
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
	       <b><s:text name="page.view.officers"/></b>
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
				    	label="Number of Vacant Officers"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	
		     	 </table>
		     </td>
	    </tr>
	    <tr>
		     <td>
		       <b><s:text name="page.view.reunifications"/></b>
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
				    	label="Total Female"
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
				    	label="Total Male"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
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
				    	label="To Other"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 
	   
	   <tr>
	     <td>
	       <b><s:text name="page.view.transfers"/></b>
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
				    	label="Male"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 	
	    <tr>
	     <td>
	       <b><s:text name="page.view.proforma"/></b>
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
				    	label="Male"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 		
	   <tr>
	     <td>
	       <b><s:text name="page.view.guardian"/></b>
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
				    	label="Male"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 		
	    <tr>
	    <td>
	       <b><s:text name="page.view.terminates"/></b>
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
				    	label="Male"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 		
	    <tr>
	     <td>
	       <b><s:text name="page.view.having.sp.requirements"/></b>
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
				    	label="Male"
				    	cssStyle="width:60px"
				    	required="true"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 			
	    <tr>
	     <td>
	       <b><s:text name="page.view.visits"/></b>
	     </td>
	    </tr>
	    
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	      <sj:datepicker 
	     				id="probationOfficerObserved" 
	     				name="monthlyData.probationOfficerVisitedDate" 
	     				value="%{monthlyData.probationOfficerVisitedDate.time}"
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
	     				value="%{monthlyData.counsellorVisitedDate.time}"
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
	     				value="%{monthlyData.departmentCommissionerVisitedDate.time}"
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
	     				value="%{monthlyData.departmentProbationOfficerVisitedDate.time}"
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
	     				value="%{monthlyData.departmentOfChildDevelopmentOfficerVisitedDate.time}"
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
	       <b><s:text name="page.view.meetings"/></b>
	     </td>
	    </tr>
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	      <sj:datepicker 
	     				id="theLastMeetingHeldOn" 
	     				name="monthlyData.theLastMeetingHeldOn" 
	     				value="%{monthlyData.theLastMeetingHeldOn.time}"
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
	     				value="%{monthlyData.placementCommittee.time}"
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
		       <b><s:text name="page.view.intakes"/></b>
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
				    	label="Intakes from Other"
				    	cssStyle="width:60px"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
		    
	    </tr> 	
	    <tr>
		     <td>
		       <b><s:text name="page.view.care.plans"/></b>
		     </td>
	    </tr>
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	 <sj:spinner 
				    	name="monthlyData.numNoChildPlans" 
				    	id="numNoChildPlans" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	label="No of Children Do Not Have Care Plans"
				    	cssStyle="width:60px"
				    	mouseWheel="true"/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 <sj:spinner 
				    	name="monthlyData.numDeviatedChildPlans" 
				    	id="numDeviatedChildPlans" 
				    	min="0" 
				    	max="100" 
				    	step="1" 
				    	label="No of Children Deviated From Care Plans"
				    	cssStyle="width:60px"
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