<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td1" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="page.record"/></td>
	   </tr>
	  </table>
	</div>
	<hr />

	<div>
	  <s:if test="list.size > 0">
		<table style="margin-top: 10px" width="100%" id="commonTable"
			class="blueTbl">
			<tr>
				<th></th>
				<th><s:text name="page.record.edit" /></th>
				<th><s:text name="page.record.date" /></th>
				<th><s:text name="page.record.comment" /></th>
			</tr>
			<s:iterator value="list" status="rowIndex">
				<tr>
					<td style="width: 40px"><s:property
							value="#rowIndex.index + 1" /></td>
					<td style="width: 80px"><s:url var="childRecordViewUrl"
							action="view" namespace="/childRecord" includeParams="none">
							<s:param name="id" value="%{id}"></s:param>
						</s:url> <s:url var="childRecordEditUrl" action="edit"
							namespace="/childRecord" includeParams="none">
							<s:param name="id" value="%{id}"></s:param>
						</s:url> <sj:a href="%{#childRecordViewUrl}"
							targets="childRecordResultDiv">
							<s:text name="page.record.view" />
						</sj:a> <s:if test="probationOfficer">
				 	|
				 	<sj:a href="%{#childRecordEditUrl}" targets="childRecordResultDiv">
								<s:text name="page.record.edit" />
							</sj:a>
						</s:if></td>
					<td style="width: 120px"><s:date name="recordDate"
							format="yyyy/MM/dd" /></td>
					<td><s:property value="comment" escape="false" /></td>
			</s:iterator>
		</table>
	</s:if>
	  <s:else>
	  	<s:text name="page.record.list.msg"/>
	  </s:else>
	</div>

