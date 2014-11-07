<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td1" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="page.guardian.list.title"/></td>
	   </tr>
	  </table>
	</div>
	<hr />

	<div>
	  <s:if test="list.size > 0">
	  <table style="margin-top: 10px" width="100%" id="commonTable" class="blueTbl">
	  	<tr>
	  		<th><s:text name="page.guardian.list.name"/></th><th><s:text name="page.guardian.list.telephone"/></th><th><s:text name="page.guardian.list.status"/></th><th><s:text name="page.guardian.list.relationship"/></th><th><s:text name="page.guardian.list.address"/></th>
	  	</tr>
			<s:iterator value="list" status="rowIndex">
				<tr>
				 <td>
				 	<s:url var="childGuardianViewUrl" action="view" namespace="/childGuardian" includeParams="none" >
		  					<s:param name="id" value="%{id}"></s:param>
		  			</s:url>
				 	<sj:a href="%{#childGuardianViewUrl}" targets="childGuardianResultDiv"><s:property value="name"/></sj:a>
				 </td>
				 <td><s:property value="telephone" /> </td>
				 <td><s:property value="guardianStatus" /> </td>
				 <td><s:property value="relationship" /> </td>
				 <td><s:property value="address" /> </td>
			</s:iterator>
		</table>
	  </s:if>
	  <s:else>
	  	<s:text name="page.guardian.list.msg"/>
	  </s:else>
	</div>

