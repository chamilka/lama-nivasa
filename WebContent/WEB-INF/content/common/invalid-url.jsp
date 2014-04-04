<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<s:url var="homeUrl" action="signout" namespace="/user" includeParams="none" />
<div class="error_msg"><s:actionerror /></div>
<div style="padding: 20px 0 20px 20px; color: orange; font-size: 1.3em">
	The URL access is invalid. <br />
	Click <s:a href="%{#homeUrl}" cssClass="sublink">
	 <s:text name="global.return.home"/></s:a>
</div>