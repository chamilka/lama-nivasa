<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="page.detail.title"/></td>
	   </tr>
	   
	  </table>
	</div>

	<hr />
     <div style="margin-left:50px"> <s:actionerror/></div>
     
     <s:if test="!hasErrors()" > 		 
	 <table width="100%" style="margin-left:50px">
	  
	    
	  <tr>
	     <td>
	       <b><s:text name="page.detail.reunifications"/></b>
	     </td>
	  </tr>
	  
	  <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	     <s:label 
				    	name="monthlyDataReport.numOfFemaleReunification" 
				    	label="%{getText('page.detail.female')}"
				    	/>
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	     <s:label 
				    	name="monthlyDataReport.numOfMaleReunification" 
				    	label="%{getText('page.detail.male')}"
				    	/>
		     	 </table>
		     </td>
	    </tr> 
	    
	    <tr>
		     <td style="padding-left: 25px" colspan="2">
		     	 <table>
		     	 	<s:label 
				    	name="monthlyDataReport.numToAdoption" 
				    	label="%{getText('page.detail.adoption ')}"
				    	/>
		     	 </table>
		     </td>
	    </tr> 
	    	    
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label 
				    	name="monthlyDataReport.numToParent" 
				    	label="%{getText('page.detail.parents')}"
				    	/>
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 	<s:label 
				    	name="monthlyDataReport.numToMarrage" 
				    	label="%{getText('page.detail.marriage')}"
				    	/>
		     	 </table>
		     </td>
	    </tr> 					
	    
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	 <s:label 
				    	name="monthlyDataReport.numToEmployement" 
				    	label="%{getText('page.detail.employment')}"
				    	/>
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 	<s:label 
				    	name="monthlyDataReport.numToVocational" 
				    	label="%{getText('page.detail.vocational')}"
				    	/>
		     	 </table>
		     </td>
	    </tr> 
	    
	     <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label 
				    	name="monthlyDataReport.numToSelfEmployement" 
				    	label="%{getText(page.detail.self.employment'')}"
				    	/>
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 	<s:label 
				    	name="monthlyDataReport.numToOther" 
				    	label="%{getText('page.detail.other')}"
				    	/>
		     	 </table>
		     </td>
	    </tr> 						
	   
	   <tr>
	     <td>
	       <b><s:text name="page.detail.transfers"/></b>
	     </td>
	   </tr>
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	      <s:label 
				    	name="monthlyDataReport.numOfFemaleTransfers" 
				    	label="%{getText('page.detail.label.female')}
"
				    	/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	     <s:label 
				    	name="monthlyDataReport.numOfMaleTransfers" 
				    	label="%{getText('page.detail.label.male')}
"
				    	/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 	
	    <tr>
	     <td>
	       <b>3. No Proforma</b>
	     </td>
	    </tr>
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	      <s:label 
				    	name="monthlyDataReport.numOfProformaFemale" 
				    	label="Female"
				    	/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	     <s:label 
				    	name="monthlyDataReport.numOfProformaMale" 
				    	label="Male"
				    	/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 		
	   <tr>
	     <td>
	       <b>4. No Guardian</b>
	     </td>
	   </tr>
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	     <s:label 
				    	name="monthlyDataReport.numOfFemaleNoGuardians" 
				    	label="Female"
				    	/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 	  <s:label 
				    	name="monthlyDataReport.numOfMaleNoGuardians" 
				    	label="Male"
				    	/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 		
	    <tr>
	    <td>
	       <b>5. Number Of Terminates</b>
	     </td>
	    </tr>
	   
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	     <s:label 
				    	name="monthlyDataReport.numOfFemaleTerminates" 
				    	label="Female"
				    	/>
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	      <s:label 
				    	name="monthlyDataReport.numOfMaleTerminates" 
				    	label="Male"
				    	/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 		
	    
	    <tr>
		     <td>
		       <b>6. Intakes</b>
		     </td>
	    </tr>
	    <tr>
		     <td style="padding-left: 25px" colspan="2">
		     	 <table>
		     	    <s:label 
				    	name="monthlyDataReport.numOfIntakes" 
				    	label="Number of Intakes"
				    	/>
		     	 </table>
		     </td>
	    </tr> 		
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label 
				    	name="monthlyDataReport.intakeFromCourt" 
				    	label="Intakes from Court"
				    	/>
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label 
				    	name="monthlyDataReport.intakeFromDepartment" 
				    	label="Intakes from Department"
				    	/>
		     	 </table>
		     </td>
	    </tr> 			
	    
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label 
				    	name="monthlyDataReport.intakeFromParents" 
				    	label="Intakes from Parents"
				    	/>
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 	<s:label 
				    	name="monthlyDataReport.intakeFromOrganizations" 
				    	label="Intakes from Organizations"
				    	/>
		     	 </table>
		     </td>
	    </tr> 			
	    
	    <tr>
		     <td style="padding-left: 25px" colspan="2">
		     	 <table>
		     	 	<s:label 
				    	name="monthlyDataReport.intakeFromOther" 
				    	label="Intakes from Other"
				    	/>
		     	 </table>
		     </td>
	    </tr> 
	    <tr>
		     <td>
		       <b>7. Child Care Plans</b>
		     </td>
	    </tr>
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label 
				    	name="monthlyDataReport.numNoChildPlans" 
				    	label="No. of children do not have care plans"
				    	/>
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 	<s:label 
				    	name="monthlyDataReport.numDeviatedChildPlans" 
				    	label="No of Children Deviated From Care Plans"
				    	/>
		     	 </table>
		     </td>
	    </tr> 		
	    
	   
	  </table>
  </s:if>