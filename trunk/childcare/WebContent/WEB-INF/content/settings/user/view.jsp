<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<div>

	<table id="commonTable" class="greenTbl" width="100%">
		<tr>
			<th colspan="7">User Detail</th>
		</tr>

		<tr>
			<th>User Name</th>
			<td colspan="5"><s:property value="user.username" />
			</td>
		</tr>

		<tr>
			<th>User Role</th>
			<td colspan="5"><s:property value="user.userRole" /></td>
		</tr>

		<tr>
			<th>Gender</th>
			<td colspan="5"><s:property value="user.sex" /></td>
		</tr>

		<tr>
			<th>Telephone Number</th>
			<td colspan="5"><s:property value="user.telephone" />
			</td>
		</tr>

		<tr>
			<th>Mobile Number</th>
			<td colspan="5"><s:property value="user.username" />
			</td>
		</tr>

		<tr>
			<th>Tempory Address</th>
			<td colspan="5"><s:property
					value="user.addressTemporary" /></td>
		</tr>

		<tr>
			<th>Address</th>
			<td colspan="5"><s:property value="user.address" />
			</td>
		</tr>





		<tr>
			<td><s:url var="childPictureFrameUrl" action="frame"
					namespace="/childPicture" includeParams="none">
					<s:param name="childId" value="%{child.id}"></s:param>
				</s:url> <sj:a href="%{#childPictureFrameUrl}" targets="childDetailViewDiv"
					cssClass="blue-link">Pictures</sj:a> | <s:url
					var="childGuardianFrameUrl" action="frame"
					namespace="/childGuardian" includeParams="none">
					<s:param name="childId" value="%{child.id}"></s:param>
				</s:url> <sj:a href="%{#childGuardianFrameUrl}" targets="childDetailViewDiv"
					cssClass="blue-link">Guardians</sj:a></td>
			<td colspan="4">&nbsp;</td>
			<td><s:url var="childEditUrl" action="edit" namespace="/child"
					includeParams="none">
					<s:param name="id" value="%{child.id}"></s:param>
				</s:url> <sj:a href="%{childEditUrl}" targets="childResultDiv"
					cssClass="blue-link">Edit</sj:a> | <s:url var="childDeleteUrl"
					action="delete" namespace="/child" escapeAmp="false"
					includeParams="none">
					<s:param name="id" value="%{child.id}"></s:param>
				</s:url> <sj:a href="%{childDeleteUrl}" targets="lamaNivasaResultDiv"
					cssClass="blue-link">Delete</sj:a></td>

		</tr>
	</table>

</div>


<div id="childDetailViewDiv" style="margin: 20px 0 0 0px"></div>
