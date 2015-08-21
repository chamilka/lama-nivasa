<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>
	  <table>
	   <tr>
	   		<td class="td5" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="page.myaccount.profile-change.title"/></td>
	   </tr>
	  </table>
</div>


<div style="margin-top: 20px">
   
   <s:form action="profile-save" namespace="/user" method="post">
	 <s:hidden name="systemUser.id" />
	 <s:hidden name="systemUser.post" />
	 <s:hidden name="systemUser.userRole" />
	 <s:hidden name="systemUser.referenceId" />
	 <s:hidden name="operationMode"/>
	 <s:textfield name="systemUser.username"  label="%{getText('page.myaccount.profile-view.login.name')}" cssStyle="width:300px" ></s:textfield>
	 <s:textfield name="systemUser.name"  label="%{getText('page.myaccount.profile-view.name')}" cssStyle="width:300px" ></s:textfield>
	 <s:textfield name="systemUser.email"  label="%{getText('page.myaccount.profile-view.email')}" cssStyle="width:300px" ></s:textfield>
	 <s:textfield name="systemUser.mobile"  label="%{getText('page.myaccount.profile-view.mobile')}" cssStyle="width:200px" ></s:textfield>
	 <s:textfield name="systemUser.telephone"  label="%{getText('page.myaccount.profile-view.telephone')}" cssStyle="width:200px" ></s:textfield>
	 <s:textarea name="systemUser.addressTemporary"  label="%{getText('page.myaccount.profile-view.temp.address')}" cols="40" rows="3" ></s:textarea>
	 <s:textarea name="systemUser.address"  label="%{getText('page.myaccount.profile-view.address')}" cols="40" rows="3" ></s:textarea>
	 <s:select name="systemUser.sex"  label="%{getText('page.myaccount.profile-view.sex')}" list="#{'':'','Male':'Male', 'Female':'Female'}"></s:select>
	 
	 <tr>
	 	<td>
	 	</td>
	 	<td><table cellpadding="0" cellspacing="0"><sj:submit value="%{getText('page.myaccount.password.submit')}" targets="accountDiv" /></table>
	 	</td>
	 </tr>
	 
   </s:form>
</div>