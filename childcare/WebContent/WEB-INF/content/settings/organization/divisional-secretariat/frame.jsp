
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>   


<div>

	<s:property value="name"/>
		<s:iterator value="devisionalSecretariats" status="divisionalSecretariatRowIndex">
		<li><s:property value="name"/> </li>
	</s:iterator>
</div>