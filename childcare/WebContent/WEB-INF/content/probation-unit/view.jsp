<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td2" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="page.probationunit.view.subtitle"/></td>
	   </tr>
	  </table>
	</div>


	<hr />
	<div>  
	  <table id="commonTable" class="orangeTbl" width="100%">
		  <tr>
	 		<th style="width:150px"><s:text name="page.probationunit.view.name"/></th>
	 		<td  colspan="3">
		 		 <s:property value="probationUnit.name"/>
		 	</td>
		 	<th><s:text name="page.probationunit.view.officers"/></th>
	 		<td><s:property value="probationUnit.numberOfOfficers"/></td>
		  </tr>
		  <tr>
	 		<th><s:text name="page.probationunit.view.telephone"/></th>
	 		<td><s:property value="probationUnit.telephone"/></td>

		    <th><s:text name="page.probationunit.view.fax"/></th>
	 		<td><s:property value="probationUnit.fax"/></td>

		    <th style="width:100px"><s:text name="page.probationunit.view.email"/></th>
	 		<td><s:property value="probationUnit.email"/></td>
		  </tr>
		  <tr>
	 		<th><s:text name="page.probationunit.view.address"/></th>
	 		<td colspan="5"><s:property value="probationUnit.address"/></td>
		  </tr>
		  
		  <tr>
	 		<th><s:text name="page.probationunit.view.district"/></th>
	 		<td colspan="5"><s:property value="probationUnit.district.name"/></td>
		  </tr>
		  
		   <tr>
	 		<th><s:text name="page.probationunit.view.comment"/></th>
	 		<td colspan="5"><s:property value="probationUnit.comment"/></td>
		  </tr>
		  <tr>
		 	<td colspan="6" style="padding-left: 170px"><table cellpadding="0" cellspacing="0">
		 		<s:url var="probationUnitEditUrl" action="edit" namespace="/probationUnit" includeParams="none">
			 		<s:param name="id" value="%{probationUnit.id}"></s:param>
			 	</s:url>
			 	<sj:a href="%{probationUnitEditUrl}" targets="probationUnitResultDiv"><input type="button" value="<s:text name="page.probationunit.view.editbutton"/>" /></sj:a>
		 		|
		 		<s:url var="probationUnitDeleteUrl" action="delete" namespace="/probationUnit" escapeAmp="false" includeParams="none">
			 		<s:param name="id" value="%{probationUnit.id}"><s:property value="id"/></s:param>
			 	</s:url>
			 	<sj:a href="%{probationUnitDeleteUrl}" targets="probationUnitResultDiv" onClickTopics="/confirmDelete">
			 		<input type="button" value="<s:text name="page.probationunit.view.deletebutton"/>" /></sj:a>
			 </td>
		    </tr>

	  </table>
		</table>
	</div>
	
	
	<div style="margin-top: 20px">
	  <table>
	   <tr>
	   		<td class="td2" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="page.probationunit.view.personnel"/></td>
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
		
						<th><s:text name="page.probationunit.view.name"/></th>
						<th><s:text name="page.probationunit.view.post"/></th>
						<th><s:text name="page.probationunit.view.sextype"/></th>
						<th><s:text name="page.probationunit.view.telephone"/></th>
						<th><s:text name="page.probationunit.view.mobile"/></th>
						<th><s:text name="page.probationunit.view.email"/></th>
		
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
		  	<s:text name="page.probationunit.view.record"/>
		</s:else>
	</div>

	<div style="margin-top: 20px">
	  <table>
	   <tr>
	   		<td class="td2" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="page.probationunit.view.policestations"/></td>
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
		
						<th><s:text name="page.probationunit.view.name"/></th>
						<th><s:text name="page.probationunit.view.telephone"/></th>
						<th><s:text name="page.probationunit.view.email"/></th>
						<th><s:text name="page.probationunit.view.fax"/></th>
						<th><s:text name="page.probationunit.view.address"/></th>
						<th><s:text name="page.probationunit.view.comment"/></th>
		
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
	
