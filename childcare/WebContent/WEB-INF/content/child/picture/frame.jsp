<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div style="border: 2px dotted #ddd">

	<s:url var="childPictureListUrl" action="list" 
		namespace="/childPicture" includeParams="none">
			<s:param name="childId" value="childId"></s:param>
		</s:url>
		
	<s:url var="childPictureAddUrl" action="add" 
		namespace="/childPicture" includeParams="none">
			<s:param name="childId" value="childId"></s:param>
		</s:url>
  
    <div style="text-align:center">
		<sj:a href="%{#childPictureListUrl}" targets="childPictureResultDiv"><input type="button" value="Pictures" style="width:200px" /></sj:a>
		<sj:a href="%{#childPictureAddUrl}" targets="childPictureResultDiv"><input type="button" value="Add New Picture" style="width:200px"/> </sj:a>
	</div> 

	<div id="childPictureResultDiv">
		<sj:div href="%{#childPictureListUrl}">
	    
		</sj:div>
	</div>	  
</div>