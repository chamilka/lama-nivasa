<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<div>
	<table>
		<tr>
			<td class="td6" style="width: 5px">&nbsp;</td>
			<td class="sub-title"><s:text name="settings.user.view.title"/> <s:property value="systemUser.name" /></td>
		</tr>
	</table>
</div>
<hr />

<div>

	<table id="commonTable" class="greenTbl" width="100%">
		<tr>
			<th colspan="7"><s:text name="settings.user.view.detail"/></th>
		</tr>

		<tr>
			<th width="130px"><s:text name="settings.user.view.login.name"/></th>
			<td><s:property value="systemUser.username" />
			</td>
			<th width="150px"><s:text name="settings.user.view.name"/></th>
			<td colspan="3"><s:property value="systemUser.name" /></td>
		</tr>
		
		<tr>
			<th><s:text name="settings.user.view.role"/></th>
			<td ><s:property value="systemUser.userRole" /></td>
			<th width="150px"><s:text name="settings.user.view.post"/></th>
			<td colspan="3"><s:property value="systemUser.post" /></td>
		</tr>

		<tr>
			<th><s:text name="settings.user.view.gender"/></th>
			<td colspan="5"><s:property value="systemUser.sex" /></td>
		</tr>

		<tr>
			<th><s:text name="settings.user.view.telephone"/></th>
			<td colspan="5"><s:property value="systemUser.telephone" />
			</td>
		</tr>

		<tr>
			<th><s:text name="settings.user.view.mobile"/></th>
			<td colspan="5"><s:property value="systemUser.mobile" />
			</td>
		</tr>

		<tr>
			<th><s:text name="settings.user.view.temp.address"/></th>
			<td colspan="5"><s:property
					value="systemUser.addressTemporary" /></td>
		</tr>

		<tr>
			<th><s:text name="settings.user.view.address"/></th>
			<td colspan="5"><s:property value="systemUser.address" />
			</td>
		</tr>

		<tr>
			
			<td colspan="6" style="padding-left:150px">
				<s:url var="userEditUrl" action="edit" namespace="/user" includeParams="none" escapeAmp="&amp;">
					<s:param name="id" value="%{systemUser.id}"></s:param>
					<s:param name="addType" value="%{systemUser.userRole}"></s:param>
				</s:url> <sj:a href="%{userEditUrl}" targets="userList"
					cssClass="greenTbl"><input type="button" value="<s:text name="settings.user.view.edit"/>"/></sj:a> | 
					
					<s:url var="userDeleteUrl"
					action="delete" namespace="/user" escapeAmp="false"
					includeParams="none">
					<s:param name="id" value="%{systemUser.id}"></s:param>
				</s:url> <sj:a href="%{userDeleteUrl}" targets="userList"
					cssClass="greenTbl" onClickTopics="/confirmDelete"><input type="button" value="<s:text name="settings.user.view.delete"/>"/> </sj:a></td>

		</tr>
	</table>

</div>


<div id="childDetailViewDiv" style="margin: 20px 0 0 0px"></div>
