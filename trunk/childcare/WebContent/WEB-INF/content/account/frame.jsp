<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td5" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="page.myaccount.title"/></td>
	   </tr>
	  </table>
	</div>

	<hr />
	
	<s:url var="changeProfileUrl" action="view-profile" 
		namespace="/user" includeParams="none"></s:url>
	
	<s:url var="changePasswordUrl" action="change-password" 
		namespace="/user" includeParams="none"></s:url>
		
	<div>
		<sj:a href="%{changeProfileUrl}" targets="accountDiv"><input type="button" value="Profile View" /></sj:a>
		<sj:a href="%{#changePasswordUrl}" targets="accountDiv"><input type="button" value="Password Change" /></sj:a>
	</div>
	
		
	<div id="accountDiv" style="margin: 20px 0 0 0">
		<sj:div href="%{#changeProfileUrl}" cssStyle="margin: 10px 0 0 0">
		    
		</sj:div>
	</div>
	  
	  
