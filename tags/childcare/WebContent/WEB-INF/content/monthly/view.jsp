<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td4" style="width:5px">&nbsp;</td><td class="sub-title">Monthly Information View</td>
	   </tr>
	   
	  </table>
	</div>

	
	<hr />
     <div style="margin-left:50px"> <s:actionerror/></div>
     
     <s:if test="!hasErrors()" > 		 
	 <table width="100%" style="margin-left:50px">
	  
	  <tr>
	    <td style="width: 100px" colspan="2">
	   	  <table>
	   		<s:label label="Chidren's Home" name="monthlyData.lamaNivasa.name" />
	 	  </table>
     	 </td>
       </tr>
	  <tr>
	    <td style="width: 100px">
	   	  <table>
	   		<s:label label="Year" name="monthlyData.year" />
	 	  </table>
     	 </td>
     	 
     	 <td style="width: 100px">
	   	  <table>
	   		<s:label label="Month" name="monthlyData.month" />
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
		     	 <s:label 
				    	name="monthlyData.numOfMaleChildren" 
				    	label="Female"
 		    	 />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 <s:label 
				    	name="monthlyData.numOfFemaleChildren" 
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
		     	 	<s:label 
				    	name="monthlyData.numOfOfficers" 
				    	label="Number of Officers"
				    	/>
		     	 	
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label 
				    	name="monthlyData.numOfVacantOfficers" 
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
		     	     <s:label 
				    	name="monthlyData.numOfFemaleReunification" 
				    	label="Female"
				    	/>
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	     <s:label 
				    	name="monthlyData.numOfMaleReunification" 
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
		     	      <s:label 
				    	name="monthlyData.numOfFemaleTransfers" 
				    	label="Female"
				    	/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	     <s:label 
				    	name="monthlyData.numOfMaleTransfers" 
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
		     	      <s:label 
				    	name="monthlyData.numOfProformaFemale" 
				    	label="Female"
				    	/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	     <s:label 
				    	name="monthlyData.numOfProformaMale" 
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
		     	     <s:label 
				    	name="monthlyData.numOfFemaleNoGuardians" 
				    	label="Female"
				    	/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 	  <s:label 
				    	name="monthlyData.numOfMaleNoGuardians" 
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
		     	     <s:label 
				    	name="monthlyData.numOfFemaleTerminates" 
				    	label="Female"
				    	/>
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	      <s:label 
				    	name="monthlyData.numOfMaleTerminates" 
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
		     	 	 <s:label 
				    	name="monthlyData.numOfFemaleHavingSpecialRequirements" 
				    	label="Female"
				    	/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 <s:label 
				    	name="monthlyData.munOfMaleHavingSpecialRequirements" 
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
		     	    <tr>
		     	      <td>
		     	         Probation Officer :
		     	      </td>
		     	      <td>
			     	      <s:date 
		     				name="monthlyData.probationOfficerVisitedDate" 
		     				format="yyyy/MM/dd"
		     				/>
	     			  </td>
	     			</tr>
		     	 </table>
		     </td>
		     <td>
		      	 <table>
		     	    <tr>
		     	      <td>
		     	         Counsellor :
		     	      </td>
		     	      <td>
			     	      <s:date 
		     				name="monthlyData.counsellorVisitedDate" 
		     				format="yyyy/MM/dd"
		     				/>
	     			  </td>
	     			</tr>
		     	 </table>
		     </td>
	    </tr> 		
	    
	    <tr>
		     <td style="padding-left: 25px">
		     	<table>
		     	    <tr>
		     	      <td>
		     	         Department Commissioner :
		     	      </td>
		     	      <td>
			     	      <s:date 
		     				name="monthlyData.departmentCommissionerVisitedDate" 
		     				format="yyyy/MM/dd"
		     				/>
	     			  </td>
	     			</tr>
		     	 </table>
		     </td>
		      <td>
		         <table>
		     	    <tr>
		     	      <td>
		     	         Department Probation Officer :
		     	      </td>
		     	      <td>
			     	      <s:date 
		     				name="monthlyData.departmentProbationOfficerVisitedDate" 
		     				format="yyyy/MM/dd"
		     				/>
	     			  </td>
	     			</tr>
		     	 </table>
		     	 
		     </td>
	    </tr> 					
	 
	 	<tr>
		      <td colspan="2" style="padding-left: 25px">
		      	 <table>
		     	    <tr>
		     	      <td>
		     	         Department Child Development Officer :
		     	      </td>
		     	      <td>
			     	      <s:date 
		     				name="monthlyData.departmentOfChildDevelopmentOfficerVisitedDate" 
		     				format="yyyy/MM/dd"
		     				/>
	     			  </td>
	     			</tr>
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
		     	    <tr>
		     	      <td>
		     	         The last meeting :
		     	      </td>
		     	      <td>
			     	      <s:date 
		     				name="monthlyData.theLastMeetingHeldOn" 
		     				format="yyyy/MM/dd"
		     				/>
	     			  </td>
	     			</tr>
		     	 </table>
		     	 
		     </td>
		      <td>
		     	 <table>
		     	     <s:label 
				    	name="monthlyData.numOfMeetingsUptoNow" 
				    	label="Number of meetings upto now"
				    	/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 								
	    <tr>
		      <td colspan="2" style="padding-left: 25px">
		         <table>
		     	    <tr>
		     	      <td>
		     	         Placement Committee :
		     	      </td>
		     	      <td>
			     	      <s:date 
		     				name="monthlyData.placementCommittee" 
		     				format="yyyy/MM/dd"
		     				/>
	     			  </td>
	     			</tr>
		     	 </table>
		     </td>
	    </tr> 	
	
	  </table>
  </s:if>