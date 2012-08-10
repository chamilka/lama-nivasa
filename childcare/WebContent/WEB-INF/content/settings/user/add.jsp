<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<div>
	
    <div class="sub-title">Add User</div><br />
    
    <s:form action="save" namespace="/user" method="post">
		<table id="commonTable" class="greenTbl" width="100%">
		
			<tr>
				<th>Login Name</th>
				<td colspan="5"><table><s:textfield name="user.username" /></table>
				</td>
			</tr>
			
			<tr>
				<th>Name</th>
				<td colspan="5"><table><s:textfield name="user.name" cssStyle="width:350px"/></table></td>
			</tr>
	
			<tr>
				<th>User Role</th>
				<td colspan="1"><table><s:select id="addUserRole" name="user.userRole" list="#{'USER': 'User', 'OFFICER': 'Officer','ADMIN':'Admin'}" onChange="javascript:addUser()"/></table></td>
				
				<!-- <th style="width: 120px" id="lamaNivasa">Lama-Nivasa Name</th> -->
				
				<td colspan="2" style="width: 200px" id="lamaNivasaSelect"><table> 
					<sj:autocompleter 
				  		id="user.referenceId"
			     		name="user.lamaNivasa.id"
			     		list="%{lamaNivasaList}"
			     		listKey="id" listValue="name"
			     		label="Lama-Nivasa Name"
			     		cssStyle="width:350px"
	     			/> </table></td>		
				
				<!-- <th style="width: 90px; display: none" id="unit">Unit Name</th> -->
				
				<td colspan="2" style="width: 200px; display: none" id="unitSelect"><table>
				<sj:autocompleter 
				  		id="user.referenceId"
			     		name="user.lamaNivasa.id"
			     		list="%{lprobationUnitList}"
			     		listKey="id" listValue="name"
			     		label="Unit Name"
			     		cssStyle="width:350px"
	     			/> </table></td>	 		
			</tr>
	
			<tr>
				<th>Gender</th>
				<td colspan="5"><table><s:select name="user.gender" list="#{'MALE': 'Male', 'FEMALE': 'Female'}"/></table></td>
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
				<th>Email</th>
				<td colspan="5"><table><s:textfield name="user.email" cssStyle="width:200px"/></table>
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
			
			<tr>
				<th valign="top">&nbsp;</th>
				<td colspan="5"><table><sj:submit targets="userList"></sj:submit> </table>
				</td>
			</tr>

		</table>
	</s:form>
</div>


<div id="childDetailViewDiv" style="margin: 20px 0 0 0px"></div>
