<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td6" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="settings.frame.title"/></td>
	   </tr>
	  </table>
	</div>

	<hr />
	
	<s:url var="userFrameUrl" action="frame" 
		namespace="/user" includeParams="none"></s:url>
	
	<s:url var="districtListUrl" action="frame" 
		namespace="/district" includeParams="none"></s:url>
		
	<s:url var="configurationUrl" action="frame" 
		namespace="/genericCategory" includeParams="none"></s:url>
		
	<s:url var="policeStationUrl" action="frame" 
		namespace="/police" includeParams="none"></s:url>
	
	<div>
		<sj:a href="%{userFrameUrl}" targets="settingsDiv"><input type="button" value="<s:text name = "settings.frame.value.user"/>" /></sj:a>
		<sj:a href="%{#districtListUrl}" targets="settingsDiv"><input type="button" value="<s:text name = "settings.frame.value.org"/>" /></sj:a>
		<sj:a href="%{#configurationUrl}" targets="settingsDiv"><input type="button" value="<s:text name = "settings.frame.value.config"/>" /></sj:a>
		<sj:a href="%{#policeStationUrl}" targets="settingsDiv"><input type="button" value="<s:text name = "settings.frame.value.police"/>" /></sj:a>
	</div>
		
	<div id="settingsDiv" style="margin: 20px 0 0 0">
		<sj:div href="%{#userFrameUrl}" cssStyle="margin: 10px 0 0 0">
		    
		</sj:div>
	</div>
