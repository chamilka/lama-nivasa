<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td4" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name= "page.view.information"/></td>
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
	   		<s:label label="%{getText('page.view.label.home')}" name="monthlyData.lamaNivasa.name" />
	 	  </table>
     	 </td>
       </tr>
	  <tr>
	    <td style="width: 100px">
	   	  <table>
	   		<s:label label="%{getText('page.add.label.year')}" name="monthlyData.year" />
	 	  </table>
     	 </td>
     	 
     	 <td style="width: 100px">
	   	  <table>
	   		<s:label label="%{getText('page.add.label.month')}" name="monthlyData.month" />
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
	       <b><s:text name= "page.view.no.of.children"/></b>
	     </td>
	   </tr>
	   	<tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 <s:label 
				    	name="monthlyData.numOfMaleChildren" 
				    	label="%{getText('page.detail.label.female')}"
 		    	 />
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 <s:label 
				    	name="monthlyData.numOfFemaleChildren" 
				    	label="%{getText('page.detail.label.male')}"
				    	/>
		     	 	
		     	 </table>
		     </td>
	    </tr>
	   
	   
	   <tr>
	     <td>
	       <b><s:text name= "page.view.officers"/></b>
	     </td>
	   </tr>
	   
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label 
				    	name="monthlyData.numOfOfficers" 
				    	label="%{getText('page.view.label.no.of.officers')}"
				    	/>
		     	 	
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label 
				    	name="monthlyData.numOfVacantOfficers" 
				    	label="%{getText('page.view.label.no.of.vacant.officers')}"
				    	/>
		     	 	
		     	 </table>
		     </td>
	    </tr> 
	   <tr>
	     <td>
	       <b><s:text name= "page.view.reunifications"/></b>
	     </td>
	   </tr>
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	     <s:label 
				    	name="monthlyData.numOfFemaleReunification" 
				    	label="%{getText('page.detail.female')}"
				    	/>
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	     <s:label 
				    	name="monthlyData.numOfMaleReunification" 
				    	label="%{getText('page.detail.male')}"
				    	/>
		     	 </table>
		     </td>
	    </tr> 
	    
	    <tr>
		     <td style="padding-left: 25px" colspan="2">
		     	 <table>
		     	 	<s:label 
				    	name="monthlyData.numToAdoption" 
				    	label="%{getText('page.detail.adoption')}"
				    	/>
		     	 </table>
		     </td>
	    </tr> 
	    	    
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label 
				    	name="monthlyData.numToParent" 
				    	label="%{getText('page.detail.parents')}"
				    	/>
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 	<s:label 
				    	name="monthlyData.numToMarrage" 
				    	label="%{getText('page.detail.marriage')}"
				    	/>
		     	 </table>
		     </td>
	    </tr> 					
	    
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	 <s:label 
				    	name="monthlyData.numToEmployement" 
				    	label="%{getText('page.detail.employment')}"
				    	/>
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 	<s:label 
				    	name="monthlyData.numToVocational" 
				    	label="%{getText('page.detail.vocational')}"
				    	/>
		     	 </table>
		     </td>
	    </tr> 
	    
	     <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label 
				    	name="monthlyData.numToSelfEmployement" 
				    	label="%{getText('page.detail.self.employment')}"
				    	/>
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 	<s:label 
				    	name="monthlyData.numToOther" 
				    	label="%{getText('page.detail.other')}"
				    	/>
		     	 </table>
		     </td>
	    </tr> 						
	   
	   <tr>
	     <td>
	       <b><s:text name= "page.view.transfers"/></b>
	     </td>
	   </tr>
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	      <s:label 
				    	name="monthlyData.numOfFemaleTransfers" 
				    	label="%{getText('page.view.label.female')}"
				    	/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	     <s:label 
				    	name="monthlyData.numOfMaleTransfers" 
				    	label="%{getText('page.view.label.male')}"
				    	/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 	
	    <tr>
	     <td>
	       <b><s:text name= "page.view.proforma"/></b>
	     </td>
	    </tr>
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	      <s:label 
				    	name="monthlyData.numOfProformaFemale" 
				    	label="%{getText('page.view.label.female')}"
				    	/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	     <s:label 
				    	name="monthlyData.numOfProformaMale" 
				    	label="%{getText('page.view.label.male')}"
				    	/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 		
	   <tr>
	     <td>
	       <b><s:text name= "page.view.guardian"/></b>
	     </td>
	   </tr>
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	     <s:label 
				    	name="monthlyData.numOfFemaleNoGuardians" 
				    	label="%{getText('page.view.label.female')}"
				    	/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 	  <s:label 
				    	name="monthlyData.numOfMaleNoGuardians" 
				    	label="%{getText('page.view.label.male')}"
				    	/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 		
	    <tr>
	    <td>
	       <b><s:text name= "page.view.terminates"/></b>
	     </td>
	    </tr>
	   
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	     <s:label 
				    	name="monthlyData.numOfFemaleTerminates" 
				    	label="%{getText('page.view.label.female')}"
				    	/>
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	      <s:label 
				    	name="monthlyData.numOfMaleTerminates" 
				    	label="%{getText('page.view.label.male')}"
				    	/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 		
	    <tr>
	     <td>
	       <b><s:text name= "page.view.having.sp.requirements"/></b>
	     </td>
	    </tr>
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	 <s:label 
				    	name="monthlyData.numOfFemaleHavingSpecialRequirements" 
				    	label="%{getText('page.view.label.female')}"
				    	/>
		     	 	 
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 <s:label 
				    	name="monthlyData.munOfMaleHavingSpecialRequirements" 
				    	label="%{getText('page.view.label.male')}"
				    	/>
		     	 	 
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
		     	    <tr>
		     	      <td>
		     	         <s:text name="page.view.officer"/>
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
		     	         <s:text name="page.view.counsellor"/>
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
		     	         <s:text name="page.view.commissioner"/>
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
		     	         <s:text name="page.view.department.probation.officer"/>
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
		     	         <s:text name="page.view.department.development.officer"/>
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
	       <b><s:text name="page.view.meetings"/></b>
	     </td>
	    </tr>
	    <tr>
		     <td style="padding-left: 25px">
		         <table>
		     	    <tr>
		     	      <td>
		     	         <s:text name="page.view.last.meeting"/>
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
				    	label="%{getText('page.view.label.no.of.meetings.up.to')}
"
				    	/>
		     	 	 
		     	 </table>
		     </td>
	    </tr> 								
	    <tr>
		      <td colspan="2" style="padding-left: 25px">
		         <table>
		     	    <tr>
		     	      <td>
		     	         <s:text name="page.view.placement.committee"/>
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
	    
	    <tr>
		     <td>
		       <b><s:text name="page.view.intakes"/></b>
		     </td>
	    </tr>
	    <tr>
		     <td style="padding-left: 25px" colspan="2">
		     	 <table>
		     	    <s:label 
				    	name="monthlyData.numOfIntakes" 
				    	label="%{getText('page.detail.number.of.intakes')}
"
				    	/>
		     	 </table>
		     </td>
	    </tr> 		
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label 
				    	name="monthlyData.intakeFromCourt" 
				    	label="%{getText('page.detail.intakes.court')}
"
				    	/>
		     	 </table>
		     </td>
		     <td>
		     	 <table>
		     	 	<s:label 
				    	name="monthlyData.intakeFromDepartment" 
				    	label="%{getText('page.detail.intakes.dept')}
"
				    	/>
		     	 </table>
		     </td>
	    </tr> 			
	    
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label 
				    	name="monthlyData.intakeFromParents" 
				    	label="%{getText('page.detail.intakes.parents')}
"
				    	/>
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 	<s:label 
				    	name="monthlyData.intakeFromOrganizations" 
				    	label="%{getText('page.detail.intakes.org')}
"
				    	/>
		     	 </table>
		     </td>
	    </tr> 			
	    
	    <tr>
		     <td style="padding-left: 25px" colspan="2">
		     	 <table>
		     	 	<s:label 
				    	name="monthlyData.intakeFromOther" 
				    	label="%{getText('page.detail.intakes.other')}
"
				    	/>
		     	 </table>
		     </td>
	    </tr> 
	    <tr>
		     <td>
		       <b><s:text name = "page.view.care.plans"/></b>
		     </td>
	    </tr>
	    <tr>
		     <td style="padding-left: 25px">
		     	 <table>
		     	 	<s:label 
				    	name="monthlyData.numNoChildPlans" 
				    	label="%{getText('page.detail.no.care.plans')}
"
				    	/>
		     	 </table>
		     </td>
		      <td>
		     	 <table>
		     	 	<s:label 
				    	name="monthlyData.numDeviatedChildPlans" 
				    	label="%{getText('page.detail.deviated.care.plans')}
"
				    	/>
		     	 </table>
		     </td>
	    </tr> 		
	    
	    <s:if test="user">	
	    <tr>
	    	<td style="padding-left: 25px" colspan="2">
			 	<s:url var="monthlyEditUrl" action="edit" namespace="/report" includeParams="none">
			 		<s:param name="id" value="%{monthlyData.id}"></s:param>
			 	</s:url>
			 	<sj:a href="%{monthlyEditUrl}" targets="monthlyResultDiv"><input type="button" value="<s:text name = "page.view.edit"/>" /></sj:a>
				 |
			 	<s:url var="monthlyDeleteUrl" action="delete" namespace="/report" escapeAmp="false" includeParams="none">
			 		<s:param name="id" value="%{monthlyData.id}"></s:param>
			 	</s:url>
			 	<sj:a href="%{monthlyDeleteUrl}" targets="monthlyResultDiv" onClickTopics="/confirmDelete"><input type="button" value="<s:text name = "page.view.delete"/>" /></sj:a>

			</td>
	    </tr>
	    </s:if>
	  </table>
  </s:if>