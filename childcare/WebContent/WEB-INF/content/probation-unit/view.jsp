<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<s:include value="common/record-delete.jsp"></s:include>
	<div>
	  <table>
	   <tr>
	   		<td class="td2" style="width:5px">&nbsp;</td><td class="sub-title">Probation Unit</td>
	   </tr>
	  </table>
	</div>

	
	<hr />
	<div>
	  <table id="commonTable" class="orangeTbl" width="100%">
		  <tr>
	 		<th style="width:150px">Name</th>
	 		<td  colspan="3">
		 		 <s:property value="probationUnit.name"/>
		 	</td>
		 	<th>Officers</th>
	 		<td><s:property value="probationUnit.numberOfOfficers"/></td>
		  </tr>
		  <tr>
	 		<th>Telephone</th>
	 		<td><s:property value="probationUnit.telephone"/></td>
		  
		    <th>Fax</th>
	 		<td><s:property value="probationUnit.fax"/></td>
	 		
		    <th style="width:100px">Email</th>
	 		<td><s:property value="probationUnit.email"/></td>
		  </tr>
		  <tr>
	 		<th>Address</th>
	 		<td colspan="5"><s:property value="probationUnit.address"/></td>
		  </tr>
		   <tr>
	 		<th>Comment</th>
	 		<td colspan="5"><s:property value="probationUnit.comment"/></td>
		  </tr>
		  <tr>
		 	<td colspan="6" style="padding-left: 170px"><table cellpadding="0" cellspacing="0">
		 		<s:url var="probationUnitEditUrl" action="edit" namespace="/probationUnit" includeParams="none">
			 		<s:param name="id" value="%{probationUnit.id}"></s:param>
			 	</s:url>
			 	<sj:a href="%{probationUnitEditUrl}" targets="probationUnitResultDiv"><input type="button" value="Edit" /></sj:a>
		 		|
		 		<s:url var="probationUnitDeleteUrl" action="delete" namespace="/probationUnit" escapeAmp="false" includeParams="none">
			 		<s:param name="id" value="%{probationUnit.id}"><s:property value="id"/></s:param>
			 	</s:url>
			 	<sj:a href="%{probationUnitDeleteUrl}" targets="probationUnitResultDiv" onClickTopics="/confirmDelete">
			 		<input type="button" value="Delete" /></sj:a>
			 </td>
		    </tr>
		    
	  </table>
	</div>  
	 
