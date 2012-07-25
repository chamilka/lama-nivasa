<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td1" style="width:5px">&nbsp;</td><td>Lama Nivasa</td>
	   </tr>
	  </table>
	</div>

	
	<hr />
	<div>
	 
	 <table id="commonTable" class="blueTbl" width="100%">
	  
	 	<tr>
	 		<th>Name</th><td  colspan="5"><s:property value="lamaNivasa.name"/></td>
	 	</tr>
	 	<tr>
	 		<th>Category</th><td><s:property value="lamaNivasa.category"/></td>
	 		<th>Probation Unit</th><td><s:property value="lamaNivasa.probationUnit.name"/></td>
	 		<th>Divisional Secretariat</th><td><s:property value="lamaNivasa.divisionalSecretariat.name"/></td>
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
	 		<th>Number of children</th><td><s:property value="lamaNivasa.numberOfChildren"/></td>
	 		<th>Min Age</th><td><s:property value="lamaNivasa.minAge"/></td>
	 		<th>Max Age</th><td><s:property value="lamaNivasa.maxAge"/></td>
	 	</tr>
	 	
	 	<tr>
	 		<th>Is Registered</th><td><s:property value="lamaNivasa.registrationStatus"/></td>
	 		<th>Registration Number</th><td><s:property value="lamaNivasa.registrationNumber"/></td>
	 		<th>Registered Date</th><td><s:date  name="lamaNivasa.registrationDate.time" format="yyyy/MM/dd"/></td>
	 	</tr>
	 	
	 	<tr>
	 		<th>Funding Method</th><td><s:property value="lamaNivasa.fundingMethod"/></td>
	 		<th>Department Funding</th><td><s:property value="lamaNivasa.departmentFunding"/></td>
	 		<th>Number of Officers</th><td><s:property value="lamaNivasa.numberOfOfficers"/></td>
	 	</tr>
	 
	 
	 </table>
	 
	 </div>
