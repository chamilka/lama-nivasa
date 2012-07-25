<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>
	  <table>
	   <tr>
	   		<td class="td5" style="width:10px">&nbsp;</td><td>User Account Information</td>
	   </tr>
	  </table>
</div>


<div style="margin-top: 20px">
	
  Change Password <hr />	
   <s:actionerror />
   <s:form action="password-change" namespace="/user" method="post"  >
	 <s:password name="oldUserPassword"  label="Old Password" required="true"></s:password>
	 <s:password name="newUserPassword"  label="New Password" required="true"></s:password>
	 <s:password name="newUserPasswordConfirm"  label="New Password Again" required="true"></s:password>
	 <sj:submit />
   </s:form>

   <br /> <br />
   
  Change Profile <hr />	
   <s:form action="password-change" namespace="/user" method="post">
	 <s:textfield name="user.email"  label="Email" cssStyle="width:300px" value="Kamal Fernando"></s:textfield>
	 <s:textfield name="user.mobile"  label="Mobile" cssStyle="width:200px" value="07234567890"></s:textfield>
	 <s:textfield name="user.telephone"  label="Telephone" cssStyle="width:200px" value="0812345678"></s:textfield>
	 <s:textarea name="user.addressTemporary"  label="Temporary Address" cols="40" rows="3" value="23/1, Mahaiyawa, Kandy"></s:textarea>
	 <s:textarea name="user.address"  label="Address" cols="40" rows="3" value="43, Javawardhanapura, Nugegoda"></s:textarea>
	 <s:select name="user.sex"  label="Sex" list="#{'male':'Male', 'female':'Femail'}"></s:select>
	 <s:textarea name="user.remark"  label="Remark" cols="40" rows="3" value="I am the external affairs coordinator"></s:textarea>
	 <div align="right" style="align: right">
	   <table style="align:right"><sj:submit cssStyle="align:right"/></table>
	 </div>
	 
   </s:form>
</div>