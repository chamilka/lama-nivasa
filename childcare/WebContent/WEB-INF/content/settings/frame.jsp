<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td6" style="width:10px">&nbsp;</td><td>Settings</td>
	   </tr>
	  </table>
	</div>

	<hr />
	
	<s:url var="userListUrl" action="list" 
		namespace="/user" includeParams="none"></s:url>
	
	<s:url var="districtListUrl" action="frame" 
		namespace="/district" includeParams="none"></s:url>
		
	<s:url var="configurationUrl" action="frame" 
		namespace="/genericCategory" includeParams="none"></s:url>
	<div>
		<sj:a href="%{userListUrl}" targets="settingsDiv"><input type="button" value="Users" /></sj:a>
		<sj:a href="%{#districtListUrl}" targets="settingsDiv"><input type="button" value="Organization" /></sj:a>
		<sj:a href="%{#configurationUrl}" targets="settingsDiv"><input type="button" value="Configuration" /></sj:a>
	</div>
	
		
	<div id="settingsDiv" style="margin: 20px 0 0 0">
		<sj:div href="%{#userListUrl}" cssStyle="margin: 10px 0 0 0">
		    
		</sj:div>
	</div>
	  
	  
