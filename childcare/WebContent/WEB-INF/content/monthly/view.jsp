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
	
	 <table width="100%">
	   <tr>
	     <td>
	       <b>1. Number Of Children</b>
	     </td>
	   </tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 <s:label 
				    	name="numberOfFemaleChildren" 
				    	label="Female"
				    	/>
		     	 	
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 <s:label
				    	name="numberOfMaleChildren" 
				    	label="Male"
				    	/>
		     	 	
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
		     	 	<s:lable
				    	name="numberOfOfficers" 
						label="Number of Officers"
				    	/>
		     	 	
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:lable
				    	name="numberOfVacantOfficers" 
				    	label="Number of Vacant Officers"
				    	/>
		     	 	
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
		     	     <s:lable
				    	name="numberOfFemaleSocietals" 
				    	label="Female"
				    	/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	     <s:lable
				    	name="numberOfMaleSocietals" 
				    	label="Male"
				    	/>
		     	 	 
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
		     	      <s:lable 
				    	name="numberOfFemaleTransfered" 
				    	label="Female"
				    	/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	     <s:lable
				    	name="numberOfMaleTransferred" 
				    	label="Male"
				    	/>
		     	 	 
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
		     	      <s:lable
				    	name="numberOfFemaleProforma" 
				    	label="Female"
				    	/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	     <s:lable 
				    	name="numberOfMaleProforma" 
				    	label="Male"
				    	/>
		     	 	 
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
		     	     <s:lable
				    	name="numberOfFemaleNoGuardian" 
				    	label="Female"
				    	/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 	  <s:lable
				    	name="numberOfMaleNoGuardian" 
				    	label="Male"
				    	/>
		     	 	 
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
		     	     <s:lable 
				    	name="numberOfTerminatedFemale" 
				    	label="Female"
				    	/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	      <s:lable 
				    	name="numberOfTerminatedMale" 
				    	label="Male"
				    	/>
		     	 	 
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
		     	 	 <s:lable
				    	name="numberOfRequirementFemale" 
				    	label="Female"
				    	/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 <s:lable 
				    	name="numberOfRequirementMale" 
				    	label="Male"
				    	/>
		     	 	 
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
		     	      <s:lable 
	     				 
	     				name="probationOfficerObserved" 
	     				label="Probation Officer" 
	     				
	     				/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	     <s:lable 
	     				
	     				name="counsellingOfficerObserved" 
	     				label="Counsellor" 
	     				
	     				/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 		
	    
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	      <s:lable 
	     				name="commisionerDepartmentObserved" 
	     				label="Department Commissioner" 
	     				/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	      <s:lable 
	     				name="officerDepartmentObserved" 
	     				label="Department Probation Officer" 
	     				/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 					
	 
	 	<tr>
		      <td colspan="2" style="padding-left: 25px">
		     	 <table>
		     	      <s:lable 
	     				name="officerDepartmentChildDevelopmentObserved" 
	     				label="Department Child Development Officer" 
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
		     	      <s:lable
	     				name="lastMeetingHeld" 
	     				label="The last meeting" 
	     				/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	     <s:lable 
				    	name="numberOfMeetings" 
				    	label="Number of meetings upto now"
				    	/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 								
	    <tr>
		      <td colspan="2" style="padding-left: 25px">
		     	 <table>
		     	      <s:lable 
	     				name="officerDepartmentChildDevelopmentObserved" 
	     				label="Placement Committee" 
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