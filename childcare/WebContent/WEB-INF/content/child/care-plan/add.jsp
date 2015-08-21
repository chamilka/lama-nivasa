<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sjr" uri="/struts-jquery-richtext-tags"%>

<script type="text/javascript">
 $(document).ready(function() {
    $( "#dateStart" ).datepicker({
      defaultDate: "today",
      changeMonth: true,
      showOn: "button",
      buttonImage: "/childcare/struts/js/calendar.gif",
      buttonText: "Select End date",
      onClose: function( selectedDate ) {
        $( "#dateEnd" ).datepicker( "option", "minDate", selectedDate );
      }
    });
    $( "#dateEnd" ).datepicker({
      defaultDate: "today",
      changeMonth: true,
      showOn: "button",
      buttonImage: "/childcare/struts/js/calendar.gif",
      buttonText: "Select End date",

      onClose: function( selectedDate ) {
        $( "#dateStart" ).datepicker( "option", "maxDate", selectedDate );
      }
    });
  });
</script>

	<div>
		<table>
			<tr>
				<td class="td3" style="width: 5px">&nbsp;</td>
				<td class="sub-title"><s:text name="page.care-plan.view.title"/></td>
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
	
		<s:select name="childCareplan.category" list="careplanCategories" listKey="listValue" listValue="listValue" label="%{getText('page.care-plan.view.category')}"/>
		 
		<sj:datepicker id="dateStart" name="childCareplan.dateStart"
			changeMonth="true" changeYear="true" required="true"
			value="%{childCareplan.dateStart.time}" label="%{getText('page.care-plan.list.start')}" />
			
			
		<sj:datepicker id="dateEnd" name="childCareplan.dateEnd"
			changeMonth="true" changeYear="true" required="true"
			value="%{childCareplan.dateEnd.time}" label="%{getText('page.care-plan.list.end')}" />
			
		<sjr:tinymce name="childCareplan.preNote" label="%{getText('page.care-plan.list.note')}"
			cssStyle="width:550px;height:100px" required="true"
			toolbarButtonsRow2="undo,redo,|,forecolor,backcolor" />
			
		<sjr:tinymce name="childCareplan.status" label="%{getText('page.care-plan.view.status')}"
			cssStyle="width:550px;height:100px"
			toolbarButtonsRow2="undo,redo,|,forecolor,backcolor" />
			
		<sjr:tinymce name="childCareplan.location" label="%{getText('page.care-plan.view.location')}"
			cssStyle="width:550px;height:100px"
			toolbarButtonsRow2="undo,redo,|,forecolor,backcolor" />
		
		<sjr:tinymce name="childCareplan.actionTaken" label="%{getText('page.care-plan.view.take')}"
			cssStyle="width:550px;height:100px"
			toolbarButtonsRow2="undo,redo,|,forecolor,backcolor" />
			
		<sjr:tinymce name="childCareplan.postNote" label="%{getText('page.care-plan.view.post')}"
			cssStyle="width:550px;height:100px"
			toolbarButtonsRow2="undo,redo,|,forecolor,backcolor" />

		<sj:submit value="%{getText('page.record.submit')}" targets="childCareplanResultDiv"
			cssStyle="margin-left:85px" />
			
	</s:form>

</div>