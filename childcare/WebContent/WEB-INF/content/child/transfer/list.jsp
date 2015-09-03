<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td1" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="page.transfer.list.title"/></td>
	   </tr>
	  </table>
	</div>
	<hr />

	<div>
	  <s:if test="list.size > 0">
	  <table style="margin-top: 10px" width="100%" id="commonTable" class="blueTbl">
	  	<tr>
	  		<th></th>
	  		<th><s:text name="page.transfer.edit" /></th>
	  		<th><s:text name="page.transfer.add.fromLamaNivasaId"/></th>
	  		<th><s:text name="page.transfer.add.toLamaNivasaId"/></th>
	  		<th><s:text name="page.transfer.list.status"/></th>
			<s:iterator value="list" status="rowIndex">
				<tr>
				<td style="width: 40px"><s:property value="#rowIndex.index + 1" /></td>
				<td style="width: 80px">
					<s:url var="transferViewUrl" action="view" namespace="/childTransfer" includeParams="none">
							<s:param name="id" value="%{id}"></s:param></s:url> 
					<s:url var="transferEditUrl" action="edit" namespace="/childTransfer" includeParams="none">
							<s:param name="id" value="%{id}"></s:param></s:url> 
					
					<sj:a href="%{#transferViewUrl}" targets="childTransferResultDiv"><s:text name="page.record.view" /></sj:a> 
					
					<s:if test="probationOfficer">
						<s:if test="status == 0">
					 		|
				 			<sj:a href="%{#transferEditUrl}" targets="childTransferResultDiv"><s:text name="page.record.edit" /></sj:a>
						</s:if>
					</s:if>
				</td>
				 
				 <td><s:property value="fromLamaNivasaId.name" /> </td>
				 <td><s:property value="toLamaNivasaId.name" /> </td>
				 <td>
				 	<s:if test="status == 0">
				 		<div style="color: blue;">Transfer Processing...</div>
					</s:if>
					<s:elseif test="status == 1">
						<div style="color:green;">Transfer Completed</div>
					</s:elseif>
					<s:elseif test="status == -1">
						<div style="color: red;">Transfer Rejected</div>
					</s:elseif>
				</td>
				 
			</s:iterator>
		</table>
	  </s:if>
	  <s:else>
	  	<s:text name="page.transfer.list.msg"/>
	  </s:else>
	</div>

