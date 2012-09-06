<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<s:include value="common/record-delete.jsp"></s:include>
<div>
	<table>
		<tr>
			<td class="td6" style="width: 5px">&nbsp;</td>
			<td class="sub-title">User: <s:property value="systemUser.name" /></td>
		</tr>
	</table>
</div>
<hr />

<div>

	<table id="commonTable" class="greenTbl" width="100%">
		<tr>
			<th colspan="7">User Detail</th>
		</tr>

		<tr>
			<th width="130px">Login Name</th>
			<td><s:property value="systemUser.username" />
			</td>
			<th width="150px">Name</th>
			<td colspan="3"><s:property value="systemUser.name" /></td>
		</tr>
		
		<tr>
			<th>User Role</th>
			<td ><s:property value="systemUser.userRole" /></td>
			<th width="150px">Post</th>
			<td colspan="3"><s:property value="systemUser.post" /></td>
		</tr>

		<tr>
			<th>Gender</th>
			<td colspan="5"><s:property value="systemUser.sex" /></td>
		</tr>

		<tr>
			<th>Telephone Number</th>
			<td colspan="5"><s:property value="systemUser.telephone" />
			</td>
		</tr>

		<tr>
			<th>Mobile Number</th>
			<td colspan="5"><s:property value="systemUser.username" />
			</td>
		</tr>

		<tr>
			<th>Tempory Address</th>
			<td colspan="5"><s:property
					value="systemUser.addressTemporary" /></td>
		</tr>

		<tr>
			<th>Address</th>
			<td colspan="5"><s:property value="systemUser.address" />
			</td>
		</tr>

		<tr>
			
			<td colspan="6" style="padding-left:150px"><s:url var="userEditUrl" action="edit" namespace="/user"
					includeParams="none">
					<s:param name="id" value="%{systemUser.id}"></s:param>
				</s:url> <sj:a href="%{userEditUrl}" targets="userList"
					cssClass="greenTbl"><input type="button" value="Edit" /></sj:a> | 
					
					<s:url var="userDeleteUrl"
					action="delete" namespace="/user" escapeAmp="false"
					includeParams="none">
					<s:param name="id" value="%{systemUser.id}"></s:param>
				</s:url> <sj:a href="%{userDeleteUrl}" targets="userList"
					cssClass="greenTbl" onClickTopics="/confirmDelete"><input type="button" value="Delete" /></sj:a></td>

		</tr>
	</table>

</div>


<div id="childDetailViewDiv" style="margin: 20px 0 0 0px"></div>
