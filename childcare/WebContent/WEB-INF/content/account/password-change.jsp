<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>
	  <table>
	   <tr>
	   		<td class="td5" style="width:5px">&nbsp;</td><td>Change Password</td>
	   </tr>
	  </table>
</div>


<div style="margin-top: 20px">
		
   <s:actionerror />
   <s:form action="password-change-save" namespace="/user" method="post"  >
	 <s:password name="oldUserPassword"  label="Old Password" required="true"></s:password>
	 <s:password name="newUserPassword"  label="New Password" required="true"></s:password>
	 <s:password name="newUserPasswordConfirm"  label="New Password Again" required="true"></s:password>
	 <tr>
	 	<td>
	 	</td>
	 	<td><table cellpadding="0" cellspacing="0"><sj:submit /></table>
	 	</td>
	 </tr>
	 
   </s:form>
</div>