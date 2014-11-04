<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<div>
	<table>
		<tr>
			<td class="td5" style="width: 5px">&nbsp;</td>
			<td class="sub-title"><s:text name="page.myaccount.profile-view.title"/></td>
		</tr>
	</table>
</div>


<div>

	<table id="commonTable" class="redTbl" width="100%">
		<s:actionerror />
		<tr>
			<th width="150px"><s:text name="page.myaccount.profile-view.login.name"/></th>
			<td><table>
					<s:label name="systemUser.username" />
				</table></td>
		</tr>

		<tr>
			<th><s:text name="page.myaccount.profile-view.name"/></th>
			<td><table>
					<s:label name="systemUser.name" />
				</table></td>
		</tr>

		<tr>
			<th><s:text name="page.myaccount.profile-view.post"/></th>
			<td><table>
					<s:label id="postValue" name="systemUser.post" />
				</table></td>
		</tr>

		<tr id="provice_tr">
			<th><s:text name="page.myaccount.profile-view.province"/></th>
			<td><table>
					<s:label name="province" />
				</table></td>
		</tr>

		<tr>
			<th><s:text name="page.myaccount.profile-view.role"/></th>
			<td><table>
					<s:label name="systemUser.userRole" />
				</table></td>
		</tr>

		<tr>
			<th><s:text name="page.myaccount.profile-view.mobile"/></th>
			<td><table>
					<s:label name="systemUser.mobile" />
				</table></td>
		</tr>
		<tr>
			<th><s:text name="page.myaccount.profile-view.email"/></th>
			<td><table>
					<s:label name="systemUser.email" />
				</table></td>
		</tr>
		<tr>
			<th><s:text name="page.myaccount.profile-view.telephone"/></th>
			<td><table>
					<s:label name="systemUser.telephone" />
				</table></td>
		</tr>

		<tr>
			<th><s:text name="page.myaccount.profile-view.temp.address"/></th>
			<td><table>
					<s:label name="systemUser.addressTemporary" />
				</table></td>
		</tr>

		<tr>
			<th><s:text name="page.myaccount.profile-view.address"/></th>
			<td><table>
					<s:label name="systemUser.address" />
				</table></td>
		</tr>

		<tr>
			<th><s:text name="page.myaccount.profile-view.sex"/></th>
			<td><table>
					<s:label name="systemUser.sex" />
				</table></td>
		</tr>

		<tr>
			<td></td>
			<td><s:url var="changeProfileUrl" action="change-profile"
					namespace="/user" includeParams="none"></s:url>

				<table>
					<sj:a href="%{#changeProfileUrl}" targets="accountDiv"
						cssStyle="margin-left:10px">
						<input type="button" value="<s:text name="page.myaccount.profile-view.button.edit"/>" />
					</sj:a>
				</table></td>
		</tr>

	</table>
</div>

<script>
	$(document).ready(function() {
		
		if($("#postValue").html() != "Provincial Officer" ){
			$("#provice_tr").hide();
		}
		
	});
		
		

	$("#postSelect").change(function() {
		if ($(this).val() == "Provincial Officer") {
			$("#otherOfficer").hide();
			$("#provincialOfficer").show();
		} else {
			$("#otherOfficer").show();
			$("#provincialOfficer").hide();
		}
	});
</script>
