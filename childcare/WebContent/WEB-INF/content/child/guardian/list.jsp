<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:10px">&nbsp;</td><td>Children</td>
	   </tr>
	  </table>
	</div>
	<hr />
	
	<div>
	  <table style="margin-top: 10px" width="90%">
	  	<tr>
	  		<th>Name</th><th>Telephone</th><th>Relationship</th><th>Address</th><th>&nbsp;</th>
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
				 <td><s:property value="relationship" /> </td>
				 <td><s:property value="address" /> </td>
			</s:iterator>
		</table>
	</div>
	
