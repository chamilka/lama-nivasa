<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:5px">&nbsp;</td><td><s:text name="page.record.info"/></td>
	   </tr>
	  </table>
	</div>
	<div>

	<hr />

	  <table style="padding-left:0px"  width="100%" id="commonTable" class="blueTbl">

	  	<tr>
	  		<th style="width:100px"><s:text name="page.record.date"/></th>
	  		<td><s:date name="childRecord.recordDate.time" format="yyyy/MM/dd"/></td>
	  	</tr>
	  	<tr>
	  		<th><s:text name="page.record.comment"/></th>
	  		<td><s:property value="childRecord.comment" escape="false"/></td>
	  	</tr>

	  	<tr>
	  		<td colspan="2">
	  			<table cellpadding="0" cellspacing="0">
	  				<s:url var="childRecordEditUrl" action="edit" namespace="/childRecord" includeParams="none" >
	  					<s:param name="id" value="%{childRecord.id}"></s:param>
	  				</s:url>
	  				<sj:a href="%{#childRecordEditUrl}" targets="childRecordResultDiv">
	  					<input type="button" value="<s:text name="child.record.edit.record"/>" /></sj:a>
	  				<s:url var="childRecordDeleteUrl" action="delete" namespace="/childRecord" includeParams="none" >
	  					<s:param name="id" value="%{childRecord.id}"></s:param>
	  				</s:url>
	  				<sj:a href="%{#childRecordDeleteUrl}" targets="childRecordResultDiv" onClickTopics="/confirmDelete">
	  					<input type="button" value="<s:text name="page.record.delete"/>" /></sj:a>
	  			</table>
	  		</td>
	  	</tr>
	  </table>

</div>