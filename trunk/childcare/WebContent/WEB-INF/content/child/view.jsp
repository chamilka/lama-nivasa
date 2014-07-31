<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>

    <table id="commonTable" class="blueTbl" width="100%">
     <tr>
       <th colspan="7" >
        	Child Detail
       </th>
      </tr>
      <tr>
        <th>Lama Nivasaya</th>
        <td colspan="5">
     		<s:property value="child.lamaNivasa.name" />
    	</td>
      </tr>

      <tr>
        <th>Full Name</th>
        <td colspan="5">
   			<s:property value="child.fullName"  />
    	</td>
      </tr>
      <tr>
	      <th>Code</th>
	        <td>
	     		<table>
					<s:property value="child.code"/>
				</table>
	       </td>
	       <th>Date Of Birth</th>
	       <td>
	     			<s:date
	     				name="child.dateOfBirth"
	     				format="yyyy/MM/dd"
	     				/>
	    	</td>
	    	<th>Date Of Registration</th>
	       <td>
	     			<s:date
	     				name="child.dateOfRegistration"
	     				format="yyyy/MM/dd"
	     				/>
	    	</td>
      </tr>
      <tr>
        <th>Gender</th>
        <td>
     		<table>
     			<s:property value="child.sexType" />
     		</table>
    	</td>
    	<th>Race</th>
        <td>
     		<table>
     			<s:property value="child.race"  />
     		</table>
    	</td>
    	<th>Religion</th>
        <td>
   			<s:property value="child.religion" />
    	</td>
      </tr>
      <tr>
        <th>Birth Certificate</th>
        <td>
     		<table>
     			<s:property value="child.birthCertificate" />
     		</table>
    	</td>
    	<th>Proforma</th>
        <td>
     		<table>
     			<s:property value="child.proforma"  />
     		</table>
    	</td>
    	<th>Vaccination Card</th>
        <td>
   			<s:property value="child.vaccinationCard" />
    	</td>
      </tr>
      <tr>
        <th>Disable</th>
        <td>
     		<s:property value="child.disable" />
    	</td>
    	<th>Type of Disability</th>
        <td colspan="3">
     		<s:property value="child.typeOfDisability"  />
    	</td>
      </tr>
      <tr>
    	<th>Grade</th>
        <td>
     		<table>
     			<s:property value="child.grade"/>
     		</table>
    	</td>
    	<th>School</th>
        <td colspan="3">
     		<s:property value="child.school" />
    	</td>
       </tr>
      <tr>
        <th>Intake Method</th>
        <td  colspan="3">
			<s:property value="child.intakeMethod"  />
    	</td>
    	<th>Primary Prob. Unit</th>
        <td  colspan="3">
			<s:property value="child.originalProbationUnit"  />
    	</td>
      </tr>
      <tr>
        <th>Comment</th>
        <td colspan="5">
			<s:property value="child.comment"/>
    	</td>
      </tr>

      <tr>
        <th>History</th>
        <td colspan="5">
			<s:property value="child.history"/>
    	</td>
      </tr>

      <tr>
        <td colspan="2">
        	<s:url var="childPictureFrameUrl" action="frame" namespace="/childPicture" includeParams="none">
				<s:param name="childId" value="child.id"></s:param>
			</s:url>

        	<sj:a href="%{#childPictureFrameUrl}" targets="childDetailViewDiv"><input type="button" value="Pictures" /></sj:a>
			|
			<s:url var="childGuardianFrameUrl" action="frame" namespace="/childGuardian" includeParams="none">
				<s:param name="childId" value="child.id"></s:param>
			</s:url>

			<sj:a href="%{#childGuardianFrameUrl}" targets="childDetailViewDiv"><input type="button" value="Guardians" /></sj:a>

			|
				<s:url var="childRecordFrameUrl" action="frame" namespace="/childRecord" includeParams="none">
					<s:param name="childId" value="child.id"></s:param>
				</s:url>

				<sj:a href="%{#childRecordFrameUrl}" targets="childDetailViewDiv"><input type="button" value="Records" /></sj:a>

			|
				<s:url var="childCareplanFrameUrl" action="frame" namespace="/childCareplan" includeParams="none">
					<s:param name="childId" value="child.id"></s:param>
				</s:url>

				<sj:a href="%{#childCareplanFrameUrl}" targets="childDetailViewDiv"><input type="button" value="Care Plan" /></sj:a>
			
    	</td>
    	<td colspan="3">&nbsp;
    	</td>
    	<td>
			 	<s:url var="childEditUrl" action="edit" namespace="/child" includeParams="none">
			 		<s:param name="id" value="%{child.id}"></s:param>
			 	</s:url>
			 	<sj:a href="%{childEditUrl}" targets="childResultDiv"><input type="button" value="Edit" /></sj:a>
				 |
				
				<s:if test="child.status == @pdn.sci.cs.action.BaseAction@ACTIVE_STATE"> 
				 	<s:url var="childDeleteUrl" action="delete" namespace="/child" escapeAmp="false" includeParams="none">
				 		<s:param name="id" value="%{child.id}"></s:param>
				 	</s:url>
				 	<sj:a href="%{childDeleteUrl}" targets="childResultDiv" onClickTopics="/confirmDelete"><input type="button" value="Delete" /></sj:a>
				</s:if>
				<s:else>
					<s:url var="childRestoreUrl" action="restore" namespace="/child" escapeAmp="false" includeParams="none">
				 		<s:param name="id" value="%{child.id}"></s:param>
				 	</s:url>
				 	<sj:a href="%{childRestoreUrl}" targets="childResultDiv" onClickTopics="/confirmRestore"><input type="button" value="Restore" /></sj:a>
				</s:else>
		</td>

      </tr>
    </table>

</div>


<div id="childDetailViewDiv" style="margin: 20px 0 0 0px">

</div>
