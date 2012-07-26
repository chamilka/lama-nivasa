<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<div>
	<table>
		<tr>
			<td class="td6" style="width: 5px">&nbsp;</td>
			<td>Users</td>
		</tr>
	</table>
</div>
<hr />

<div>
	<table style="margin-top: 10px" width="100%" id="commonTable" class="greenTbl" cellpadding="2px">
		<tr>
			<th></th>
			<th>USer Type</th>
			<th>USer Name</th>
			<th>Sex Type</th>
			<th>Telephone Number</th>
			<th>Mobile Type</th>
			<th>Address</th>
			<th>&nbsp;</th>
		</tr>
		<s:iterator value="list" status="rowIndex">
			<tr>
				<td><s:property value="%{#rowIndex.index + 1}" />
				<td><s:url var="userViewUrl" action="view" namespace="/user"
						includeParams="none">
						<s:param name="id" value="id"></s:param>
					</s:url> <sj:a href="%{#chViewUrl}" targets="childResultDiv">
						<s:property value="fullName" />
					</sj:a></td>
				<td><s:property value="username" /></td>
				<td><s:property value="sex" /></td>
				<td><s:property value="telephone" /></td>
				<td><s:property value="mobile" /></td>
				<td><s:property value="address" /></td>
				<td><s:url var="childEditUrl" action="edit" namespace="/child"
						includeParams="none">
						<s:param name="id" value="id"></s:param>
					</s:url> <sj:a href="%{childEditUrl}" targets="childResultDiv">Edit</sj:a>
					| <s:url var="childDeleteUrl" action="delete" namespace="/child"
						escapeAmp="false" includeParams="none">
						<s:param name="id" value="id"></s:param>
					</s:url> <sj:a href="%{childDeleteUrl}" targets="lamaNivasaResultDiv">Delete</sj:a>
				</td>
			</tr>
		</s:iterator>
	</table>
</div>

