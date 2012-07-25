<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:10px">&nbsp;</td><td>Guardian Information</td>
	   </tr>
	  </table>
	</div>
	<div>
	
	<hr />
	 
	  <s:label name="childGuardian.name" label="Name" /> <br />
	  <s:label name="childGuardian.relationship"  label="Relationship to Child" /> <br />
	  <s:label name="childGuardian.telephone" label="Telephone" />   <br />
	  <s:label name="childGuardian.address" label="Address" /> <br />
	  <s:label name="childGuardian.pathToHome" label="Path To Home" /> <br />
	 
	  <table style="padding-left:0px" cellpadding="0" cellspacing="0">
	  	<tr>
	  		<td>
	  			<table cellpadding="0" cellspacing="0">
	  				<s:url var="childGuardianEditUrl" action="edit" namespace="/childGuardian" includeParams="none" >
	  					<s:param name="id" value="%{childGuardian.id}"></s:param>
	  				</s:url>
	  				<sj:a href="%{#childGuardianEditUrl}" targets="childGuardianResultDiv">
	  					<input type="button" value="Edit Guardian Info" /></sj:a>
	  			</table>
	  		</td>
	  	</tr>
	  </table>

</div>