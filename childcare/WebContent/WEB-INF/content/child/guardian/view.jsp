<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td1" style="width:5px">&nbsp;</td><td>Guardian Information</td>
	   </tr>
	  </table>
	</div>
	<div>

	<hr />

	  <table style="padding-left:0px"  width="100%" id="commonTable" class="blueTbl">

	  	<tr>
	  		<th style="width:120px">Name</th>
	  		<td> <s:property value="childGuardian.name" /></td>
	  	</tr>
	  	<tr>
	  		<th>Relationship</th>
	  		<td><s:property value="childGuardian.relationship"  /></td>
	  	</tr>
	  	<tr>
	  		<th>Telephone</th>
	  		<td><s:property value="childGuardian.telephone" /></td>
	  	</tr>
	  	<tr>
	  		<th>Address</th>
	  		<td><s:property value="childGuardian.address"  /></td>
	  	</tr>
	  	<tr>
	  		<th>Path to home</th>
	  		<td><s:property value="childGuardian.pathToHome" /></td>
	  	</tr>

	  	<tr>
	  		<td colspan="2">
	  			<table cellpadding="0" cellspacing="0">
	  				<s:url var="childGuardianEditUrl" action="edit" namespace="/childGuardian" includeParams="none" >
	  					<s:param name="id" value="%{childGuardian.id}"></s:param>
	  				</s:url>
	  				<sj:a href="%{#childGuardianEditUrl}" targets="childGuardianResultDiv">
	  					<input type="button" value="Edit" /></sj:a>

	  				<s:url var="childGuardianDeleteUrl" action="delete" namespace="/childGuardian" includeParams="none" >
	  					<s:param name="id" value="%{childGuardian.id}"></s:param>
	  				</s:url>
	  				<sj:a href="%{#childGuardianDeleteUrl}" targets="childGuardianResultDiv"  onClickTopics="/confirmDelete">
	  					<input type="button" value="Delete" /></sj:a>
	  			</table>
	  		</td>
	  	</tr>
	  </table>

</div>