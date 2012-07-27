<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>
	  <table>
	   <tr>
	   		<td class="td5" style="width:5px">&nbsp;</td><td class="sub-title">Change Profile</td>
	   </tr>
	  </table>
</div>


<div style="margin-top: 20px">
   
   <s:form action="profile-save" namespace="/user" method="post">
	 <s:hidden name="user.id" />
	 <s:hidden name="operationMode"/>
	 <s:textfield name="user.username"  label="Username" cssStyle="width:300px" ></s:textfield>
	 <s:textfield name="user.email"  label="Email" cssStyle="width:300px" ></s:textfield>
	 <s:textfield name="user.mobile"  label="Mobile" cssStyle="width:200px" ></s:textfield>
	 <s:textfield name="user.telephone"  label="Telephone" cssStyle="width:200px" ></s:textfield>
	 <s:textarea name="user.addressTemporary"  label="Temporary Address" cols="40" rows="3" ></s:textarea>
	 <s:textarea name="user.address"  label="Address" cols="40" rows="3" ></s:textarea>
	 <s:select name="user.sex"  label="Sex" list="#{'':'','Male':'Male', 'Female':'Female'}"></s:select>
	 
	 <tr>
	 	<td>
	 	</td>
	 	<td><table cellpadding="0" cellspacing="0"><sj:submit targets="accountDiv" /></table>
	 	</td>
	 </tr>
	 
   </s:form>
</div>