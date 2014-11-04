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
	       <b><s:text name="page.detail.proforma"/></b>
	     </td>
	    </tr>
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	      <s:label 
				    	name="monthlyDataReport.numOfProformaFemale" 
				    	label="%{getText('page.detail.label.female')}"

				    	/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	     <s:label 
				    	name="monthlyDataReport.numOfProformaMale" 
				    	label="%{getText('page.detail.label.male')}"

				    	/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 		
	   <tr>
	     <td>
	       <b><s:text name="page.detail.guardian "/></b>
	     </td>
	   </tr>
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	     <s:label 
				    	name="monthlyDataReport.numOfFemaleNoGuardians" 
				    	label="%{getText('page.detail.label.female')}"
				    	/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 	  <s:label 
				    	name="monthlyDataReport.numOfMaleNoGuardians" 
				    	label="%{getText('page.detail.label.male')}"
				    	/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 		
	    <tr>
	    <td>
	       <b><s:text name="page.detail.terminates"/></b>
	     </td>
	    </tr>
	   
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	     <s:label 
				    	name="monthlyDataReport.numOfFemaleTerminates" 
				    	label="%{getText('page.detail.label.female')}"
				    	/>
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	      <s:label 
				    	name="monthlyDataReport.numOfMaleTerminates" 
				    	label="%{getText('page.detail.label.male')}"
				    	/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 		
	    
	    <tr>
		     <td>
		       <b><s:text name="page.detail.intakes"/></b>
		     </td>
	    </tr>
	    <tr>
		     <td style="padding-left: 25px" colspan="2">
		     	 <table>
		     	    <s:label 
				    	name="monthlyDataReport.numOfIntakes" 
				    	label="%{getText('page.detail.number.of.intakes')}"
				    	/>
		     	 </table>
		     </td>
	    </tr> 		
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label 
				    	name="monthlyDataReport.intakeFromCourt" 
				    	label="%{getText('page.detail.intakes.court')}"
				    	/>
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label 
				    	name="monthlyDataReport.intakeFromDepartment" 
				    	label="%{getText('page.detail.intakes.dept')}"
				    	/>
		     	 </table>
		     </td>
	    </tr> 			
	    
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label 
				    	name="monthlyDataReport.intakeFromParents" 
				    	label="%{getText('page.detail.intakes.parents')}"
				    	/>
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 	<s:label 
				    	name="monthlyDataReport.intakeFromOrganizations" 
				    	label="%{getText('page.detail.intakes.org')}"
				    	/>
		     	 </table>
		     </td>
	    </tr> 			
	    
	    <tr>
		     <td style="padding-left: 25px" colspan="2">
		     	 <table>
		     	 	<s:label 
				    	name="monthlyDataReport.intakeFromOther" 
				    	label="%{getText('page.detail.intakes.other')}"
				    	/>
		     	 </table>
		     </td>
	    </tr> 
	    <tr>
		     <td>
		       <b><s:text name="page.detail.care.plans"/></b>
		     </td>
	    </tr>
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label 
				    	name="monthlyDataReport.numNoChildPlans" 
				    	label="%{getText('page.detail.no.care.plans')}"
				    	/>
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 	<s:label 
				    	name="monthlyDataReport.numDeviatedChildPlans" 
				    	label="%{getText('page.detail.deviated.care.plans')}"
				    	/>
		     	 </table>
		     </td>
	    </tr> 		
	    
	   
	  </table>
  </s:if>