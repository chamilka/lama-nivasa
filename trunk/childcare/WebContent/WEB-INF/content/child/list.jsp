<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:5px">&nbsp;</td><td class="sub-title">Children</td>
	   </tr>
	  </table>
	</div>
	<hr />
	
	<div>
	  <table style="margin-top: 10px" width="100%" id="commonTable" class="darkBlueTbl">
	  	<tr>
	  		<th></th><th>Name</th><th>Sex Type</th><th>Date Of Birth</th><th>Grade</th><th>&nbsp;</th>
	  	</tr>
		<s:iterator value="list" status="rowIndex">
			<tr>
			 <td><s:property value="%{#rowIndex.index + 1}"/>
			 <td>
			 	<s:url var="childViewUrl" action="view" namespace="/child" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{#childViewUrl}" targets="childResultDiv"><s:property value="fullName"/></sj:a>
			 </td>
			 <td><s:property value="sexType"/></td>
			 <td><s:date name="dateOfBirth.time" format="yyyy/MM/dd"/></td>
			  <td><s:property value="grade"/></td>
			 <td>
			 	<s:url var="childEditUrl" action="edit" namespace="/child" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{childEditUrl}" targets="childResultDiv">Edit</sj:a>
				 | 
			 	<s:url var="childDeleteUrl" action="delete" namespace="/child" escapeAmp="false" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{childDeleteUrl}" targets="lamaNivasaResultDiv">Delete</sj:a>
			 </td>
			</tr>
		</s:iterator>
	</table>
	</div>
	
