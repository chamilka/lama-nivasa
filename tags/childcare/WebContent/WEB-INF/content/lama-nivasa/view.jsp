<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td1" style="width:5px">&nbsp;</td><td class="sub-title">Chidren's Home</td>
	   </tr>
	  </table>
	</div>


	<hr />
	<div>

	 <table id="commonTable" class="blueTbl" width="100%">

	 	<tr>
	 		<th style="width:130px">Name</th><td  colspan="3"><s:property value="lamaNivasa.name"/></td>
	 		<th>Date Established</th><td><s:date name="lamaNivasa.dateOfEstablishment" format="yyyy/MM/dd"/></td>
	 	</tr>
	 	<tr>
	 		<th>Category</th><td><s:property value="lamaNivasa.category"/></td>
	 		<th>Divisional Secretariat</th><td colspan="3"><s:property value="lamaNivasa.divisionalSecretariat.name"/></td>
	 	</tr>
	 	<tr>
	 		<th>Probation Unit</th><td colspan="2"><s:property value="lamaNivasa.probationUnit.name"/></td>
	 		<th>Probation Officer</th><td colspan="2"><s:property value="lamaNivasa.probationOfficer"/></td>
	 	</tr>
	 	<tr>
	 		<th>Address</th><td  colspan="5"><s:property value="lamaNivasa.address"/></td>
	 	</tr>
	 	<tr>
	 		<th>Telephone</th><td><s:property value="lamaNivasa.telephone"/></td>
	 		<th>Fax</th><td><s:property value="lamaNivasa.fax"/></td>
	 		<th>Email</th><td><s:property value="lamaNivasa.email"/></td>
	 	</tr>
	 	<tr>
	 		<th>Max. No of children</th><td><s:property value="lamaNivasa.numberOfChildren"/></td>
	 		<th>Min Age</th><td><s:property value="lamaNivasa.minAge"/></td>
	 		<th>Max Age</th><td><s:property value="lamaNivasa.maxAge"/></td>
	 	</tr>

	 	<tr>
	 		<th>Registration</th><td><s:property value="lamaNivasa.registrationStatus"/></td>
	 		<th>Registration Number</th><td><s:property value="lamaNivasa.registrationNumber"/></td>
	 		<th>Registered Date</th><td><s:date  name="lamaNivasa.registrationDate.time" format="yyyy/MM/dd"/></td>
	 	</tr>

	 	<tr>
	 		<th>Funding Method</th><td><s:property value="lamaNivasa.fundingMethod"/></td>
	 		<th>Department Funding</th><td><s:property value="lamaNivasa.departmentFunding"/></td>
	 		<th>No. of Staffs</th><td><s:property value="lamaNivasa.numberOfOfficers"/></td>
	 	</tr>

	 	 <tr>
		 	<td colspan="6" style="padding-left:150px"><table cellpadding="0" cellspacing="0">
		 		<s:url var="lamaNivasaEditUrl" action="edit" namespace="/lamaNivasa" includeParams="none">
			 		<s:param name="id" value="lamaNivasa.id"></s:param>
			 	</s:url>
			 	<sj:a href="%{lamaNivasaEditUrl}" targets="lamaNivasaResultDiv"><input type="button" value="Edit" /></sj:a>
				<s:if test="admin"> |
				 	<s:url var="lamaNivasaDeleteUrl" action="delete" namespace="/lamaNivasa" escapeAmp="false" includeParams="none">
				 		<s:param name="id" value="lamaNivasa.id"></s:param>
				 	</s:url>
				 	<sj:a href="%{lamaNivasaDeleteUrl}" targets="lamaNivasaResultDiv" onClickTopics="/confirmDelete"><input type="button" value="Delete" /></sj:a>
			 	</s:if>
			 </td>
		</tr>


	 </table>

	 </div>
