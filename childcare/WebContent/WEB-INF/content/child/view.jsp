<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>

    <table id="commonTable" class="blueTbl" width="100%">
     <tr>
       <th colspan="7" >
        	<s:text name="page.view.child.detail"/>
       </th>
      </tr>
      <tr>
        <th><s:text name="page.view.lamanivasaya"/></th>
        <td colspan="5">
     		<s:property value="child.lamaNivasa.name" />
    	</td>
      </tr>

      <tr>
        <th><s:text name="page.add.full.name"/></th>
        <td colspan="5">
   			<s:property value="child.fullName"  />
    	</td>
      </tr>
      <tr>
	      <th><s:text name="page.search.code"/></th>
	        <td>
	     		<table>
					<s:property value="child.code"/>
				</table>
	       </td>
	       <th><s:text name="page.list.dob"/></th>
	       <td>
	     			<s:date
	     				name="child.dateOfBirth"
	     				format="yyyy/MM/dd"
	     				/>
	    	</td>
	    	<th><s:text name="page.view.date.of.registration"/></th>
	       <td>
	     			<s:date
	     				name="child.dateOfRegistration"
	     				format="yyyy/MM/dd"
	     				/>
	    	</td>
      </tr>
      <tr>
        <th><s:text name="page.list.gender"/></th>
        <td>
     		<table>
     			<s:property value="child.sexType" />
     		</table>
    	</td>
    	<th><s:text name="page.add.race"/></th>
        <td>
     		<table>
     			<s:property value="child.race"  />
     		</table>
    	</td>
    	<th><s:text name="page.add.religion"/></th>
        <td>
   			<s:property value="child.religion" />
    	</td>
      </tr>
      <tr>
        <th><s:text name="page.add.birth.certificate"/></th>
        <td>
     		<table>
     			<s:property value="child.birthCertificate" />
     		</table>
    	</td>
    	<th><s:text name="page.add.proforma"/></th>
        <td>
     		<table>
     			<s:property value="child.proforma"  />
     		</table>
    	</td>
    	<th><s:text name="page.add.vacc.card"/></th>
        <td>
   			<s:property value="child.vaccinationCard" />
    	</td>
      </tr>
      <tr>
        <th><s:text name="page.add.disable"/></th>
        <td>
     		<s:property value="child.disable" />
    	</td>
    	<th><s:text name="page.add.type.disability"/></th>
        <td colspan="3">
     		<s:property value="child.typeOfDisability"  />
    	</td>
      </tr>
      <tr>
    	<th><s:text name="page.add.grade"/></th>
        <td>
     		<table>
     			<s:property value="child.grade"/>
     		</table>
    	</td>
    	<th><s:text name="page.add.school"/></th>
        <td colspan="3">
     		<s:property value="child.school" />
    	</td>
       </tr>
      <tr>
        <th><s:text name="page.add.intake"/></th>
        <td  colspan="3">
			<s:property value="child.intakeMethod"  />
    	</td>
    	<th><s:text name="page.add.prob.unit"/></th>
        <td  colspan="3">
			<s:property value="child.originalProbationUnit"  />
    	</td>
      </tr>
      <tr>
        <th><s:text name="page.add.comment"/></th>
        <td colspan="5">
			<s:property value="child.comment"/>
    	</td>
      </tr>

      <tr>
        <th><s:text name="page.add.history"/></th>
        <td colspan="5">
			<s:property value="child.history"/>
    	</td>
      </tr>

      <tr>
        <td colspan="2">
        	<s:url var="childPictureFrameUrl" action="frame" namespace="/childPicture" includeParams="none">
				<s:param name="childId" value="child.id"></s:param>
			</s:url>

        	<sj:a href="%{#childPictureFrameUrl}" targets="childDetailViewDiv"><input type="button" value="<s:text name="page.view.button.pictures"/>" /></sj:a>
			|
			<s:url var="childGuardianFrameUrl" action="frame" namespace="/childGuardian" includeParams="none">
				<s:param name="childId" value="child.id"></s:param>
			</s:url>

			<sj:a href="%{#childGuardianFrameUrl}" targets="childDetailViewDiv"><input type="button" value="<s:text name="page.view.button.guard"/>" /></sj:a>

			|
				<s:url var="childRecordFrameUrl" action="frame" namespace="/childRecord" includeParams="none">
					<s:param name="childId" value="child.id"></s:param>
				</s:url>

				<sj:a href="%{#childRecordFrameUrl}" targets="childDetailViewDiv"><input type="button" value="<s:text name="page.view.button.record"/>" /></sj:a>

			|
				<s:url var="childCareplanFrameUrl" action="frame" namespace="/childCareplan" includeParams="none">
					<s:param name="childId" value="child.id"></s:param>
				</s:url>

				<sj:a href="%{#childCareplanFrameUrl}" targets="childDetailViewDiv"><input type="button" value="<s:text name="page.view.button.plan"/>" /></sj:a>
			
    	</td>
    	<td colspan="3">&nbsp;
    	</td>
    	<td>
			 	<s:url var="childEditUrl" action="edit" namespace="/child" includeParams="none">
			 		<s:param name="id" value="%{child.id}"></s:param>
			 	</s:url>
			 	<sj:a href="%{childEditUrl}" targets="childResultDiv"><input type="button" value="<s:text name="page.view.button.edit"/>" /></sj:a>
				 |
				
				<s:if test="child.status == @pdn.sci.cs.action.BaseAction@ACTIVE_STATE"> 
				 	<s:url var="childDeleteUrl" action="delete" namespace="/child" escapeAmp="false" includeParams="none">
				 		<s:param name="id" value="%{child.id}"></s:param>
				 	</s:url>
				 	<sj:a href="%{childDeleteUrl}" targets="childResultDiv" onClickTopics="/confirmDelete"><input type="button" value="<s:text name="page.view.button.delete"/>" /></sj:a>
				</s:if>
				<s:else>
					<s:url var="childRestoreUrl" action="restore" namespace="/child" escapeAmp="false" includeParams="none">
				 		<s:param name="id" value="%{child.id}"></s:param>
				 	</s:url>
				 	<sj:a href="%{childRestoreUrl}" targets="childResultDiv" onClickTopics="/confirmRestore"><input type="button" value="<s:text name="page.view.button.restore"/>" /></sj:a>
				</s:else>
		</td>

      </tr>
    </table>

</div>


<div id="childDetailViewDiv" style="margin: 20px 0 0 0px">

</div>
