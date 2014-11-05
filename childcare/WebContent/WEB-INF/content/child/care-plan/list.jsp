<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td1" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="page.care-plan"/></td>
	   </tr>
	  </table>
	</div>
	<hr />

	<div>
	  <s:if test="list.size > 0">
	  <table style="margin-top: 10px" width="100%" id="commonTable" class="blueTbl">
	  	<tr>
	  		<th></th><th><s:text name="page.care-plan.list.edit"/></th><th><s:text name="page.care-plan.list.category"/></th><th><s:text name="page.care-plan.list.start"/></th><th><s:text name="page.care-plan.list.end"/></th><th><s:text name="page.care-plan.list.note"/></th>
	  	</tr>
			<s:iterator value="list" status="rowIndex">
				<tr>
				 <td style="width:40px"><s:property value="#rowIndex.index + 1" /> </td>
				 <td style="width:80px">
				 	<s:url var="childCareplanViewUrl" action="view" namespace="/childCareplan" includeParams="none" >
		  					<s:param name="id" value="%{id}"></s:param>
		  			</s:url>
				 	<sj:a href="%{#childCareplanViewUrl}" targets="childCareplanResultDiv"><s:text name="page.care-plan.list.view"/></sj:a>
				 	|
				 	<s:url var="childCareplanEditUrl" action="edit" namespace="/childCareplan" includeParams="none" >
		  					<s:param name="id" value="%{id}"></s:param>
		  			</s:url>
				 	<sj:a href="%{#childCareplanEditUrl}" targets="childCareplanResultDiv"><s:text name="page.care-plan.list.edit"/></sj:a>
				 </td>
				 <td><s:property value="category" /> </td>
				 <td style="width:120px"><s:date name="dateStart" format="yyyy/MM/dd" /> </td>
				 <td style="width:120px"><s:date name="dateEnd" format="yyyy/MM/dd" /> </td>
				 <td><s:property value="preNote" escape="false"/> </td>
			</s:iterator>
		</table>
	  </s:if>
	  <s:else>
	  	No care plans yet. Click "Add Record"
	  </s:else>
	</div>

