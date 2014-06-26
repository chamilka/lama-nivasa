<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

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
		</table>
	</div>
	
	
	<div style="margin-top: 20px">
	  <table>
	   <tr>
	   		<td class="td2" style="width:5px">&nbsp;</td><td class="sub-title">Officers</td>
	   </tr>
	  </table>
	</div>
	
	<div>
		<s:if test="probationOfficers.size > 0">

			<div>
		
				<table style="margin-top: 10px" width="100%" id="commonTable"
					class="orangeTbl" cellpadding="2px">
					<tr>
						<th></th>
		
						<th>Name</th>
						<th>Post</th>
						<th>Sex Type</th>
						<th>Telephone</th>
						<th>Mobile</th>
						<th>Email</th>
		
					</tr>
					<s:iterator value="probationOfficers" status="rowIndex">
						<tr>
							<td><s:property value="%{#rowIndex.index + 1}" />
							<td><s:property value="name" /></td>
							<td><s:property value="post" /></td>
							<td><s:property value="sex" /></td>
							<td><s:property value="telephone" /></td>
							<td><s:property value="mobile" /></td>
							<td><s:property value="email" /></td>
						</tr>
					</s:iterator>
				</table>
			</div>
		</s:if>
		<s:else>
		  	No user found for your criteria, search again with a different criteria
		</s:else>
	</div>

	<div style="margin-top: 20px">
	  <table>
	   <tr>
	   		<td class="td2" style="width:5px">&nbsp;</td><td class="sub-title">Police Stations</td>
	   </tr>
	  </table>
	</div>
	
	<div>
		<s:if test="probationUnit.policeStations.size > 0">

			<div>
		
				<table style="margin-top: 10px" width="100%" id="commonTable"
					class="orangeTbl" cellpadding="2px">
					<tr>
						<th></th>
		
						<th>Name</th>
						<th>Telephone</th>
						<th>Email</th>
						<th>Fax</th>
						<th>Address</th>
						<th>Comment</th>
		
					</tr>
					<s:iterator value="probationUnit.policeStations" status="rowIndex">
						<tr>
							<td><s:property value="%{#rowIndex.index + 1}" />
							<td><s:property value="name" /></td>
							<td><s:property value="telephone" /></td>
							<td><s:property value="email" /></td>
							<td><s:property value="fax" /></td>
							<td><s:property value="address" /></td>
							<td><s:property value="comment" /></td>
						</tr>
					</s:iterator>
				</table>
			</div>
		</s:if>
		<s:else>
		  	No user found for your criteria, search again with a different criteria
		</s:else>
	</div>
	
