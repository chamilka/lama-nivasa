<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:5px">&nbsp;</td><td><s:text name="page.transfer.info"/></td>
	   </tr>
	  </table>
	</div>
	<div>

	<hr />

	<table style="padding-left: 0px" width="100%" id="commonTable"
		class="blueTbl">
		<s:if test="childTransfer.status != 0">
			<tr>
				<th style="width: 150px">
					<s:if test="childTransfer.status == -1">
						<s:text name="page.transfer.list.transferRejectDate" />
					</s:if>
					<s:elseif test="childTransfer.status == 1">
						<s:text name="page.transfer.list.transferDate" />
					</s:elseif>
				</th>
				<td><s:date name="childTransfer.transferDate" format="yyyy/MM/dd" /></td>
			</tr>
		</s:if>
		<tr>
			<th><s:text name="page.transfer.list.from" /></th>
			<td><s:property value="childTransfer.fromLamaNivasaId.name" escape="false" /></td>
		</tr>
		
		<tr>
			<th><s:text name="page.transfer.list.to" /></th>
			<td><s:property value="childTransfer.toLamaNivasaId.name" escape="false" /></td>
		</tr>
		
		<tr>
			<th><s:text name="page.transfer.list.reason" /></th>
			<td><s:property value="childTransfer.reason" escape="false" /></td>
		</tr>
		
		<tr>
			<th><s:text name="page.transfer.list.status" /></th>
			<td>
				<s:if test="childTransfer.status == 0">
				 	<div style="color: blue;">Transfer Processing...</div>
						
				</s:if>
				<s:elseif test="childTransfer.status == 1">
					<div style="color:green;">Transfer Completed</div>
				</s:elseif>
				<s:elseif test="childTransfer.status == -1">
					<div style="color: red;">Transfer Rejected</div>	
				</s:elseif>
			</td>
		</tr>
		<s:if test="probationOfficer">
			<s:if test="childTransfer.status == 0">
				<tr>
					<td colspan="2">
						<table cellpadding="0" cellspacing="0">
							<s:url var="transferEditUrl" action="edit"
								namespace="/childTransfer" includeParams="none">
								<s:param name="id" value="%{childTransfer.id}"></s:param>
							</s:url>
							<s:url var="childTransferDeleteUrl" action="delete"
								namespace="/childTransfer" includeParams="none">
								<s:param name="id" value="%{childTransfer.id}"></s:param>
							</s:url>
							<sj:a href="%{#transferEditUrl}" targets="childTransferResultDiv">
								<input type="button" value="<s:text name="child.record.edit.record"/>" />
							</sj:a>
							|
							<sj:a href="%{#childTransferDeleteUrl}" targets="childTransferResultDiv" onClickTopics="/confirmDelete">
								<input type="button" value="<s:text name="page.record.delete"/>" />
							</sj:a>
						</table>
					</td>
				</tr>
			</s:if>
		</s:if>
	</table>

</div>