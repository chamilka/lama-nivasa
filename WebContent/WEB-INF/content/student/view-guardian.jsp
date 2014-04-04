<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:10px">&nbsp;</td><td>Guardian Information</td>
	   		<td>
	   		 <s:url var="guardianAddUrl" action="guardian-add" namespace="/student" includeParams="none"  />
	   		 <sj:a href="%{#guardianAddUrl}" targets="guardianInfoViewDiv">
	  					<input type="button" value="Add New Guardian" style="height: 22px" /></sj:a>
	   		</td>
	   </tr>
	  </table>
	</div>
	<div>
	
	<hr />
	 
	  <s:label name="guardianName" label="Guardian Name" value="Rohan Karunathilake" /> <br />
	  <s:label name="guardianRelationship" label="Relationship" value="Grand Mother" /> <br />
	  <s:label name="parentsAvailability"  label="Parents Availability" value="Both"/> <br />
	  <s:label name="guardinanStatus"  label="Parents Status" value="Abroad"/> <br />
	  <s:label name="guardianPhone" label="Guardian Name" value="0713456782" /> <br />
	  <s:label name="guardianPhone" label="Guardian NIC" value="NO" /> <br />
	  <s:label name="comment" label="Comment" value="Both parents are abroad, child has been growing with his grand parents" /> <br />
	  <s:url var="editGuardianUrl" action="student-guardian-edit" namespace="/student" includeParams="none"  />
	  
	  <table style="padding-left:0px" cellpadding="0" cellspacing="0">
	  	<tr>
	  		<td>
	  			<table cellpadding="0" cellspacing="0">
	  				<sj:a href="%{#editGuardianUrl}" targets="studentSearchResultDiv">
	  					<input type="button" value="Edit Guardian Info" /></sj:a>
	  			</table>
	  		</td>
	  	</tr>
	  </table>

</div>