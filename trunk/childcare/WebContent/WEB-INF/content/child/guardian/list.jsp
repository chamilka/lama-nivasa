<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:5px">&nbsp;</td><td class="sub-title">Guardian</td>
	   </tr>
	  </table>
	</div>
	<hr />

	<div>
	  <s:if test="list.size > 0">
	  <table style="margin-top: 10px" width="100%" id="commonTable" class="blueTbl">
	  	<tr>
	  		<th>Name</th><th>Telephone</th><th>Status</th><th>Relationship</th><th>Address</th>
	  	</tr>
			<s:iterator value="list" status="rowIndex">
				<tr>
				 <td>
				 	<s:url var="childGuardianEditUrl" action="edit" namespace="/childGuardian" includeParams="none" >
		  					<s:param name="id" value="%{id}"></s:param>
		  			</s:url>
				 	<sj:a href="%{#childGuardianEditUrl}" targets="childGuardianResultDiv"><s:property value="name"/></sj:a>
				 </td>
				 <td><s:property value="telephone" /> </td>
				  <td><s:property value="guardianStatus" /> </td>
				 <td><s:property value="relationship" /> </td>
				 <td><s:property value="address" /> </td>
			</s:iterator>
		</table>
	  </s:if>
	  <s:else>
	  	No guardian information yet. Click "Add Guardian"
	  </s:else>
	</div>

