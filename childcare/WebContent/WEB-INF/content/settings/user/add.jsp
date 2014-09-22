<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<div>

	<div class="sub-title">Add User</div>
	<br />

	<s:form action="save" namespace="/user" method="post">
		<table id="commonTable" class="greenTbl" width="100%">
			<s:actionerror />
			<s:hidden name="systemUser.id" />
			<s:hidden name="operationMode" />
			<s:hidden name="systemUser.userRole" value="%{addType}" />
			<s:hidden name="addType" value="%{addType}" />

			<tr>
				<th style="width: 200px">Login Name</th>
				<td colspan="5"><table>
						<s:textfield name="systemUser.username" />
					</table></td>
			</tr>

			<tr>
				<th style="width: 200px">Login Password</th>
				<td colspan="5"><table>
						<s:password name="systemUser.userPassword" showPassword="true" />
					</table></td>
			</tr>


			<tr>
				<th>Name</th>
				<td colspan="5"><table>
						<s:textfield name="systemUser.name" cssStyle="width:350px" />
					</table></td>
			</tr>

			<tr>
				<th>Post</th>
				<td colspan="5"><table>
						<s:select id="postSelect" name="systemUser.post"
							list="postCategoryList" listKey="listKey" listValue="listValue" />
					</table></td>
			</tr>

			<tr>
				<th>User Role</th>
				<td style="width: 100px; padding-left: 20px"><s:property
						value="addType" /> <%-- <table>
						 s:select id="addUserRole" name="systemUser.userRole" list="#{'USER': 'User', 'OFFICER': 'Officer','ADMIN':'Admin'}" onChange="javascript:addUser()"/> 
				</table> 
				--%></td>
				<s:if test="addType.equals('USER')">
					<td colspan="2" id="lamaNivasaSelect"><table>
							<sj:autocompleter id="lamaNivwasaUnit"
								name="systemUser.referenceId" list="%{lamaNivasaList}"
								listKey="id" listValue="name" label="Chidren's Home"
								cssStyle="width:600px" />
						</table></td>
				</s:if>
				<s:elseif test="addType.equals('OFFICER')">
					<td colspan="2" id="unitSelect">
						<table id="otherOfficer">
							<sj:autocompleter id="probationUnit"
								name="systemUser.referenceId" list="%{probationUnitList}"
								listKey="id" listValue="name" label="Unit Name"
								cssStyle="width:600px" />
						</table>
						<table id="provincialOfficer">
							<tr>
								<td>Province:</td>
								<td><s:select id="provincialOfficerSelect"
										name="systemUser.referenceId" list="provinceList"
										listKey="id" listValue="listValue" /></td>
							</tr>
						</table>
					</td>
				</s:elseif>
				<s:else>
					<td colspan="2">&nbsp;</td>
				</s:else>
			</tr>

			<tr>
				<th>Gender</th>
				<td colspan="5"><table>
						<s:select name="systemUser.sex"
							list="#{'MALE': 'Male', 'FEMALE': 'Female'}" />
					</table></td>
			</tr>

			<tr>
				<th>Telephone Number</th>
				<td colspan="5"><table>
						<s:textfield name="systemUser.telephone" />
					</table></td>
			</tr>

			<tr>
				<th>Mobile Number</th>
				<td colspan="5"><table>
						<s:textfield name="systemUser.mobile" />
					</table></td>
			</tr>
			<tr>
				<th>Email</th>
				<td colspan="5"><table>
						<s:textfield name="systemUser.email" cssStyle="width:200px" />
					</table></td>
			</tr>

			<tr>
				<th valign="top">Tempory Address</th>
				<td colspan="5"><table>
						<s:textarea name="systemUser.addressTemporary"
							cssStyle="width:600px;height:30px" />
					</table></td>
			</tr>

			<tr>
				<th valign="top">Address</th>
				<td colspan="5"><table>
						<s:textarea name="systemUser.address"
							cssStyle="width:600px;height:30px" />
					</table></td>
			</tr>

			<tr>
				<th valign="top">&nbsp;</th>
				<td colspan="5"><table>
						<sj:submit targets="userList" />
					</table></td>
			</tr>

		</table>
	</s:form>
</div>


<div id="childDetailViewDiv" style="margin: 20px 0 0 0px"></div>

<script>
	$(document).ready(function() {
		$("#provincialOfficer").hide();

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
