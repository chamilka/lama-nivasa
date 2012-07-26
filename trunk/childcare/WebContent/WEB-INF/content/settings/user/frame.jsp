<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td6" style="width:5px">&nbsp;</td><td class="sub-title">User</td>
	   </tr>
	  </table>
	</div>

	<hr />
	
	<s:url var="userListUrl" action="list" 
		namespace="/user" includeParams="none"></s:url>
	
	<s:url var="userAddUrl" action="add" 
		namespace="/user" includeParams="none"></s:url>
		
	<div align="right" style="margin-right: 5px">
		<sj:a href="%{userListUrl}" targets="userDiv">All</sj:a> | 
		<sj:a href="%{#userAddUrl}" targets="userDiv">Add</sj:a>
	</div>
	
		
	<div id="userDiv" style="margin: 20px 0 0 0">
		<sj:div href="%{#userListUrl}" cssStyle="margin: 10px 0 0 0">
		    
		</sj:div>
	</div>
	  
	  
