<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div style="width:800px;height:600px;overflow: auto">

 <s:url var="imageShowUrl" action="image-view" namespace="/childPicture" includeParams="none">
	<s:param name="id" value="id"></s:param>
 </s:url>
 
 <img src="<s:property value="#imageShowUrl" />" />
				
</div>