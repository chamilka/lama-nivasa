<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:10px">&nbsp;</td><td>Guardian Information</td>
	   </tr>
	  </table>
	</div>
	<div>
	
	<hr />
	
	<s:form action="save" namespace="/childGuardian" method="post" id="childGuardianForm" cssStyle="margin: 20px 0 0 50px" >
	
    <s:actionerror/>
    <s:hidden name="childGuardian.id" />
	<s:hidden name="childGuardian.child.id" value="%{childId}"/>
	<s:hidden name="operationMode"/>
	 
	  <s:textfield name="childGuardian.name" label="Guardian Name" cssStyle="width:350px" required="true" />
	  <s:select name="childGuardian.relationship"  label="Relationship to Child" list="#{'Mother':'Mother', 'Father':'Father', 'Brother':'Brother', 'Sister':'Sister', 'Aunt':'Aunt', 'Uncle':'Uncle'}" required="true"/>
	  <s:select name="childGuardian.guardinanStatus"  label="Parents Status" list="#{'DISABLE':'Disable', 'ABROAD':'Abroad','INCARCERATE':'Incarcerate', 'UNEMPLOYED':'Un employed'}" required="true"/>  --%>
	  <s:textfield name="childGuardian.telephone" label="Telephone" cssStyle="width:150px"></s:textfield>  
	  <s:textarea name="childGuardian.address" label="Address" cssStyle="width:350px;height:80px"></s:textarea>
	  <s:textarea name="childGuardian.pathToHome" label="Path To Home" cssStyle="width:350px;height:80px"></s:textarea>
	  <sj:submit value="SUBMIT" targets="childGuardianResultDiv" cssStyle="margin-left:420px"/>
	</s:form>

</div>