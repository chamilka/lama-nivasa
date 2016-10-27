<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>


<div style="border: 2px dotted #ddd">

	<s:label name="child.id" />
	<s:url var="childRecordListUrl" action="list" namespace="/childRecord"
		includeParams="none">
		<s:param name="childId" value="%{childId}"></s:param>
	</s:url>

	<s:url var="childRecordAddUrl" action="add" namespace="/childRecord"
		includeParams="none">
		<s:param name="childId" value="%{childId}"></s:param>
	</s:url>

	<div style="text-align: center">
		<sj:a href="%{#childRecordListUrl}" targets="childRecordResultDiv">
			<s:text name="page.record" />
		</sj:a>
		<s:if test="probationOfficer||user"> |
		<sj:a href="%{#childRecordAddUrl}" targets="childRecordResultDiv">
				<s:text name="page.record.add" />
			</sj:a>
		</s:if>
	</div>

	<div id="childRecordResultDiv">
		<sj:div href="%{#childRecordListUrl}">

		</sj:div>
	</div>
</div>