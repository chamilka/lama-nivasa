<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:5px">&nbsp;</td><td><s:text name="page.care-plan.view.title"/></td>
	   </tr>
	  </table>
	</div>
	<div>

	<hr />

	  <table style="padding-left:0px"  width="100%" id="commonTable" class="blueTbl">

		<tr>
	  		<th style="width:100px"><s:text name="page.care-plan.view.category"/></th>
	  		<td><s:property value="childCareplan.category" /></td>
	  	</tr>
	  	
	  	<tr>
	  		<th style="width:100px"><s:text name="page.care-plan.view.start"/></th>
	  		<td><s:date name="childCareplan.dateStart.time" format="yyyy/MM/dd"/></td>
	  	</tr>
	  	
	  	<tr>
	  		<th style="width:100px"><s:text name="page.care-plan.view.end"/></th>
	  		<td><s:date name="childCareplan.dateEnd.time" format="yyyy/MM/dd"/></td>
	  	</tr>
	  	
	  	<tr>
	  		<th><s:text name="page.care-plan.view.pre"/></th>
	  		<td><s:property value="childCareplan.preNote" escape="false"/></td>
	  	</tr>
	  	
	  	<tr>
	  		<th><s:text name="page.care-plan.view.status"/></th>
	  		<td><s:property value="childCareplan.status" escape="false"/></td>
	  	</tr>
	  	
	  	<tr>
	  		<th><s:text name="page.care-plan.view.location"/></th>
	  		<td><s:property value="childCareplan.location" escape="false"/></td>
	  	</tr>
	  	
	  	<tr>
	  		<th><s:text name="page.care-plan.view.take"/></th>
	  		<td><s:property value="childCareplan.actionTaken" escape="false"/></td>
	  	</tr>
	  	
	  	<tr>
	  		<th><s:text name="page.care-plan.view.post"/></th>
	  		<td><s:property value="childCareplan.postNote" escape="false"/></td>
	  	</tr>

	  	<tr>
	  		<td colspan="2">
	  			<table cellpadding="0" cellspacing="0">
	  				<s:url var="childCareplanEditUrl" action="edit" namespace="/childCareplan" includeParams="none" >
	  					<s:param name="id" value="%{childCareplan.id}"></s:param>
	  				</s:url>
	  				<sj:a href="%{#childCareplanEditUrl}" targets="childCareplanResultDiv">
	  					<input type="button" value="Edit Care Plan" /></sj:a>
	  				<s:url var="childCareplanDeleteUrl" action="delete" namespace="/childCareplan" includeParams="none" >
	  					<s:param name="id" value="%{childCareplan.id}"></s:param>
	  				</s:url>
	  				<sj:a href="%{#childCareplanDeleteUrl}" targets="childCareplanResultDiv" onClickTopics="/confirmDelete">
	  					<input type="button" value="<s:text name="page.care-plan.view.delete"/>" /></sj:a>
	  			</table>
	  		</td>
	  	</tr>
	  </table>

</div>