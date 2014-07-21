<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<div>
	<s:if test="list.size > 0">
		<div class="sub-title">
			<s:property value="list[0].district.name" />
		</div>
	</s:if>

	<s:iterator value="list" status="divisionalSecretariatRowIndex">
		<s:property value="%{#divisionalSecretariatRowIndex.index + 1}" /> <s:property value="name" /> <br />
	</s:iterator>

</div>