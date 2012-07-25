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
	  <table  style="margin-top: 10px" width="100%" id="commonTable" class="blueTbl">
	  	<tr>
	  		<th>Name</th><th>Telephone</th><th>Email</th><th>Fax</th><th>&nbsp;</th>
	  	</tr>
		<s:iterator value="list" status="rowIndex">
			<tr>
			 <td>
			 	<s:url var="lamaNivasaViewUrl" action="view" namespace="/lamaNivasa" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{#lamaNivasaViewUrl}" targets="lamaNivasaResultDiv"><s:property value="name"/></sj:a>
			 </td>
			 <td><s:property value="telephone"/></td>
			 <td><s:property value="email"/></td>
			  <td><s:property value="fax"/></td>
			 <td>
			 	<s:url var="lamaNivasaEditUrl" action="edit" namespace="/lamaNivasa" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{lamaNivasaEditUrl}" targets="lamaNivasaResultDiv">Edit</sj:a>
				 | 
			 	<s:url var="lamaNivasaDeleteUrl" action="delete" namespace="/lamaNivasa" escapeAmp="false" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{lamaNivasaDeleteUrl}" targets="lamaNivasaResultDiv">Delete</sj:a>
			 </td>
			</tr>
		</s:iterator>
	</table>
	</div>
	
