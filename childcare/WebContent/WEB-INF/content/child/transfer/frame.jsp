<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>


<div style="border: 2px dotted #ddd">

	<s:hidden name="child.id" />
	<s:url var="childTransferListUrl" action="list" namespace="/childTransfer" includeParams="none">
		<s:param name="childId" value="%{childId}"></s:param>
	</s:url>

	<s:url var="childTransferAddUrl" action="add" namespace="/childTransfer" includeParams="none">
		<s:param name="childId" value="%{childId}"></s:param>
	</s:url>

	<div style="text-align: center">
			<sj:a href="%{#childTransferAddUrl}" targets="childTransferResultDiv">
				<s:text name="page.transfer.frame.new.transfer" />
			</sj:a>
	</div>

	<div id="childTransferResultDiv">
		<sj:div href="%{#childTransferListUrl}">
		</sj:div>
	</div>
</div>