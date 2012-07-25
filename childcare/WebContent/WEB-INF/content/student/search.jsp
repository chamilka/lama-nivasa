<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>	
	<s:form action="primary-view" namespace="/student" method="post">
	 
	  <s:textfield name="code" label="Code" cssStyle="width:150px" required="true"></s:textfield>
	  <s:textfield name="name" label="Name" cssStyle="width:250px" required="true"></s:textfield>
	  <!--  
	  <s:select name="schooling"  label="Schooling" list="#{'':'','Yes':'Yes', 'No':'No',  'Pre School':'Pre School', 'Disable':'Disable', 'Vocational Training':'Vocational Training'}"/>
	  <s:select name="race"  label="Race" list="#{'':'','Sinhala':'Sinhala', 'Tamil':'Tamil', 'Moor':'Moor'}"/>
	  <s:select name="religion"  label="Religion" list="#{'':'','Buddist':'Buddist', 'Christianity':'Christinity'}"/>
	  -->
	  <sj:submit value="SEARCH" targets="studentSearchResultDiv" cssStyle="margin-left:300px"/>
	</s:form>

</div>