<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>


<div style="border: 2px dotted #ddd">

    <s:label name="child.id"/>
	<s:url var="childCareplanListUrl" action="list" namespace="/childCareplan" includeParams="none">
			<s:param name="childId" value="%{childId}"></s:param>
		</s:url>

	<s:url var="childCareplanAddUrl" action="add"	namespace="/childCareplan" includeParams="none">
			<s:param name="childId" value="%{childId}"></s:param>
		</s:url>

    <div style="text-align:center">
		<sj:a href="%{#childCareplanListUrl}" targets="childCareplanResultDiv">Care Plans</sj:a> |
		<sj:a href="%{#childCareplanAddUrl}" targets="childCareplanResultDiv">Add a Care Plan</sj:a>
	</div>

	<div id="childCareplanResultDiv">
		<sj:div href="%{#childCareplanListUrl}">

		</sj:div>
	</div>
</div>