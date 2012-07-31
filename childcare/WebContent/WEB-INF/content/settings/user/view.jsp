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
			<th width="150px">User Name</th>
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
			
			<td><s:url var="userEditUrl" action="edit" namespace="/user"
					includeParams="none">
					<s:param name="id" value="%{user.id}"></s:param>
				</s:url> <sj:a href="%{userEditUrl}" targets="userDiv"
					cssClass="greenTbl">Edit</sj:a> | 
					
					<s:url var="userDeleteUrl"
					action="delete" namespace="/user" escapeAmp="false"
					includeParams="none">
					<s:param name="id" value="%{user.id}"></s:param>
				</s:url> <sj:a href="%{userDeleteUrl}" targets="userDiv"
					cssClass="greenTbl">Delete</sj:a></td>

		</tr>
	</table>

</div>


<div id="childDetailViewDiv" style="margin: 20px 0 0 0px"></div>