<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>


<div style="border: 2px dotted #ddd">

    <s:label name="child.id"/>
	<s:url var="childGuardianListUrl" action="list" 
		namespace="/childGuardian" includeParams="none">
			<s:param name="childId" value="%{childId}"></s:param>
		</s:url>
		
	<s:url var="childGuardianAddUrl" action="add" 
		namespace="/childGuardian" includeParams="none">
			<s:param name="childId" value="%{childId}"></s:param>
		</s:url>
  
    <div style="text-align:center">
		<sj:a href="%{#childGuardianListUrl}" targets="childGuardianResultDiv"><s:text name="page.guardian.frame.title"/></sj:a> | 
		<sj:a href="%{#childGuardianAddUrl}" targets="childGuardianResultDiv"><s:text name="page.guardian.frame.new.pic"/></sj:a>
	</div> 

	<div id="childGuardianResultDiv">
		<sj:div href="%{#childGuardianListUrl}">
	    
		</sj:div>
	</div>	  
</div>