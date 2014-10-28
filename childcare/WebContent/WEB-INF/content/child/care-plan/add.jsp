<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sjr" uri="/struts-jquery-richtext-tags"%>

<div>
	<table>
		<tr>
			<td class="td3" style="width: 5px">&nbsp;</td>
			<td class="sub-title">Care Plan Information</td>
		</tr>
	</table>
</div>
<div>

	<hr />

	<s:form action="save" namespace="/childCareplan" method="post"
		id="childCarePlanForm" cssStyle="margin: 20px 0 0 50px">

		<s:actionerror />
		<s:hidden name="childCareplan.id" />
		<s:hidden name="childCareplan.child.id" value="%{childId}" />
		<s:hidden name="operationMode" />
	
		<s:select name="childCareplan.category" list="careplanCategories" listKey="listValue" listValue="listValue" label="Category"/>
		 
		<sj:datepicker id="dateStart" name="childCareplan.dateStart"
			changeMonth="true" changeYear="true" required="true"
			value="%{childCareplan.dateStart.time}" label="Start Date" />
			
			
		<sj:datepicker id="dateEnd" name="childCareplan.dateEnd"
			changeMonth="true" changeYear="true" required="true"
			value="%{childCareplan.dateEnd.time}" label="End Date" />
			
		<sjr:tinymce name="childCareplan.preNote" label="Pre-Note"
			cssStyle="width:550px;height:100px" required="true"
			toolbarButtonsRow2="undo,redo,|,forecolor,backcolor" />
			
		<sjr:tinymce name="childCareplan.status" label="Status"
			cssStyle="width:550px;height:100px"
			toolbarButtonsRow2="undo,redo,|,forecolor,backcolor" />
			
		<sjr:tinymce name="childCareplan.location" label="Location"
			cssStyle="width:550px;height:100px"
			toolbarButtonsRow2="undo,redo,|,forecolor,backcolor" />
		
		<sjr:tinymce name="childCareplan.actionTaken" label="Action Taken"
			cssStyle="width:550px;height:100px"
			toolbarButtonsRow2="undo,redo,|,forecolor,backcolor" />
			
		<sjr:tinymce name="childCareplan.postNote" label="Post-note"
			cssStyle="width:550px;height:100px"
			toolbarButtonsRow2="undo,redo,|,forecolor,backcolor" />

		<sj:submit value="SUBMIT" targets="childCareplanResultDiv"
			cssStyle="margin-left:85px" />
			
	</s:form>

</div>