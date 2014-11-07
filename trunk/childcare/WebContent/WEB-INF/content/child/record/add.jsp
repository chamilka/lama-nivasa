<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<%@ taglib prefix="sjr" uri="/struts-jquery-richtext-tags"%>

	<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="page.record.info"/></td>
	   </tr>
	  </table>
	</div>
	<div>

	<hr />

	<s:form action="save" namespace="/childRecord" method="post" id="childRecordForm" cssStyle="margin: 20px 0 0 50px" >

    <s:actionerror/>
    <s:hidden name="childRecord.id" />
	<s:hidden name="childRecord.child.id" value="%{childId}"/>
	<s:hidden name="operationMode"/>


	  <sj:datepicker
  				id="recordDate"
  				name="childRecord.recordDate"
  				changeMonth="true"
  				changeYear="true"
  				value="%{childRecord.recordDate.time}"
  				label ="%{getText('page.record.date')}"
  				/>
	  	  <sjr:tinymce
					name="childRecord.comment"
					label="%{getText('page.record.comment')}"
					cssStyle="width:550px;height:100px"
					toolbarButtonsRow2="undo,redo,|,forecolor,backcolor"

				/>

	  <sj:submit value="%{getText('page.record.submit')}" targets="childRecordResultDiv" cssStyle="margin-left:85px"/>
	</s:form>

</div>