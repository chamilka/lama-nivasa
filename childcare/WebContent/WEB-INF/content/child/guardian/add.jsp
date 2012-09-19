<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td1" style="width:5px">&nbsp;</td><td class="sub-title">Guardian Information</td>
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
	  <s:select name="childGuardian.guardianStatus"  label="Parents Status" list="#{'DISABLE':'Disable', 'ABROAD':'Abroad','INCARCERATE':'Incarcerate', 'UNEMPLOYED':'Un employed'}" required="true"/>
	  <s:textfield name="childGuardian.telephone" label="Telephone" cssStyle="width:150px"></s:textfield>
	  <s:textarea name="childGuardian.address" label="Address" cssStyle="width:350px;height:80px"></s:textarea>
	  <s:textarea name="childGuardian.pathToHome" label="Path To Home" cssStyle="width:350px;height:80px"></s:textarea>

	  <tr>
	   <td>
	     <table>
	  		<sj:submit value="SUBMIT" targets="childGuardianResultDiv" cssStyle="margin-left:50px"/>
	  	 </table>
	   </td>
	   <td>
	  	 <table>
		  <s:if test="operationMode.name != ADD">
				<s:url var="childGuardianViewUrl" action="view" namespace="/childGuardian" includeParams="none" >
		  					<s:param name="id" value="%{childGuardian.id}"></s:param>
		  			</s:url>
				 	<sj:a href="%{#childGuardianViewUrl}" targets="childGuardianResultDiv"><input type="button" value="Cancel" /></sj:a>
		   </s:if>
	    </table>
	   </td>
	</s:form>

</div>