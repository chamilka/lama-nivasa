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
	
	<s:label name="name"  label="Name"  value="Kasun Mihinranga"/>
	
	<s:form cssStyle="margin: 20px 0 0 50px">
	 
	  <s:textarea name="guardianName" label="Guardian Name" cssStyle="width:350px;height:100" required="true"></s:textarea>
	  <s:select name="guardinanRelationship"  label="Relationship to Child" list="#{'Mother':'Mother', 'Father':'Father','BothParents':'Both Parents', 'Brother':'Brother', 'Aunt':'Aunt'}" required="true"/>
	  <s:select name="parentsAvailability"  label="Parents Availability" list="#{'BOTH':'Both', 'MOTHER_ONLY':'Monter Only','FatherOnly':'Father Only', 'None':'None'}" required="true"/>
	  <s:select name="guardinanStatus"  label="Parents Status" list="#{'DISABLE':'Disable', 'ABROAD':'Abroad','INCARCERATE':'Incarcerate', 'UNEMPLOYED':'Un employed'}" required="true"/>
	  <s:textfield name="guardianPhone" label="Guardian Phone" cssStyle="width:150px"></s:textfield>
	  <s:textfield name="guardianNIC" label="Guardian NIC" cssStyle="width:150px"></s:textfield>
	  <s:textarea name="comment" label="Commen" cssStyle="width:350px;height:100"></s:textarea>
	  <sj:submit value="SUBMIT" targets="studentSearchResultDiv" cssStyle="margin-left:300px"/>
	</s:form>

</div>