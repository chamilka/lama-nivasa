<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td1" style="width:5px">&nbsp;</td><td class="sub-title">Records</td>
	   </tr>
	  </table>
	</div>
	<hr />

	<div>
	  <s:if test="list.size > 0">
	  <table style="margin-top: 10px" width="100%" id="commonTable" class="blueTbl">
	  	<tr>
	  		<th></th><th>Edit</th><th>Date</th><th>Comment</th>
	  	</tr>
			<s:iterator value="list" status="rowIndex">
				<tr>
				 <td style="width:40px"><s:property value="#rowIndex.index + 1" /> </td>
				 <td style="width:80px">
				 	<s:url var="childRecordViewUrl" action="view" namespace="/childRecord" includeParams="none" >
		  					<s:param name="id" value="%{id}"></s:param>
		  			</s:url>
				 	<sj:a href="%{#childRecordViewUrl}" targets="childRecordResultDiv">View</sj:a>
				 	|
				 	<s:url var="childRecordEditUrl" action="edit" namespace="/childRecord" includeParams="none" >
		  					<s:param name="id" value="%{id}"></s:param>
		  			</s:url>
				 	<sj:a href="%{#childRecordEditUrl}" targets="childRecordResultDiv">Edit</sj:a>
				 </td>
				 <td style="width:120px"><s:date name="recordDate" format="yyyy/MM/dd" /> </td>
				 <td><s:property value="comment" escape="false"/> </td>
			</s:iterator>
		</table>
	  </s:if>
	  <s:else>
	  	No records yet. Click "Add Record"
	  </s:else>
	</div>

