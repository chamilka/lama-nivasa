<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<div>
	
    <div class="sub-title">Add User</div><br />
    
	<table id="commonTable" class="greenTbl" width="100%">
		
		<tr>
			<th>Login Name</th>
			<td colspan="5"><table><s:textfield name="user.username" /></table>
			</td>
		</tr>
		
		<tr>
			<th>Name</th>
			<td colspan="5"><table><s:textfield name="user.name" /></table>
			</td>
		</tr>

		<tr>
			<th>User Role</th>
			<td colspan="5"><table><s:textfield name="user.userRole" /></table></td>
		</tr>

		<tr>
			<th>Gender</th>
			<td colspan="5"><table><s:textfield name="user.sex" /></table></td>
		</tr>

		<tr>
			<th>Telephone Number</th>
			<td colspan="5"><table><s:textfield name="user.telephone" /></table>
			</td>
		</tr>

		<tr>
			<th>Mobile Number</th>
			<td colspan="5"><table><s:textfield name="user.mobile" /></table>
			</td>
		</tr>

		<tr>
			<th valign="top">Tempory Address</th>
			<td colspan="5"><table><s:textarea name="user.addressTemporary" cssStyle="width:400px;height:60px"/></table></td>
		</tr>

		<tr>
			<th valign="top">Address</th>
			<td colspan="5"><table><s:textarea name="user.address" cssStyle="width:400px;height:60px" /></table>
			</td>
		</tr>

	</table>

</div>


<div id="childDetailViewDiv" style="margin: 20px 0 0 0px"></div>
