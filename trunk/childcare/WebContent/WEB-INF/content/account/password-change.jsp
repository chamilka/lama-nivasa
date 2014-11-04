<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>
	  <table>
	   <tr>
	   		<td class="td5" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="page.myaccount.button.change.password"/></td>
	   </tr>
	  </table>
</div>


<div style="margin-top: 20px">
		
   <s:form action="password-change-save" namespace="/user" method="post"  >
   	 <s:actionerror cssStyle="margin-left:100px"/>
   	 <s:hidden name="systemUser.id" />
	 <s:hidden name="operationMode"/>
	 <s:password name="oldUserPassword"  label="%{getText('page.myaccount.password.change.label.old.pw')}" required="true"></s:password>
	 <s:password name="newUserPassword"  label="%{getText('page.myaccount.password.change.label.new.pw')}" required="true"></s:password>
	 <s:password name="newUserPasswordConfirm"  label="%{getText('page.myaccount.password.change.label.new.again.pw')}" required="true"></s:password>
	 <tr>
	 	<td>
	 	</td>
	 	<td><table cellpadding="0" cellspacing="0"><sj:submit value= "%{getText('page.myaccount.password.submit')}" targets="accountDiv"/></table>
	 	</td>
	 </tr>
	 
   </s:form>
</div>