<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<div>
	<s:iterator value="list" status="districtRowIndex">

		<s:url var="dsURL" action="divitional-secretariat-list" namespace="/divisional-secretariat">
			<s:param name="districtId" value="id"></s:param>
		</s:url>
		<s:property value="%{#districtRowIndex.index + 1}" />
		<sj:a href="%{#dsURL}" targets="districtListDiv">
			 <s:property value="name" /> <br />

		</sj:a>

	</s:iterator>
</div>
