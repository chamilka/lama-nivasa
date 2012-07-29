<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>
	  <table>
	   <tr>
	   		<td class="td5" style="width:5px">&nbsp;</td><td class="sub-title">My Profile</td>
	   </tr>
	  </table>
</div>


<div>
 
  <table id="commonTable" class="redTbl" width="100%">
  	<tr>
  		<th width="150px">Username</th>
  		<td><table><s:label name="user.username" /></table>	</td>
  	</tr>
  	
  	<tr>
  		<th>Mobile</th>
  		<td><table><s:label name="user.mobile" /></table></td>
  	</tr>
  	<tr>
  		<th>Email</th>
  		<td><table><s:label name="user.email" /></table></td>
  	</tr>
  	<tr>
  		<th>Telephone</th>
  		<td><table><s:label name="user.telephone" /></table></td>
  	</tr>
  	
  	<tr>
  		<th>Temporary Address</th>
  		<td><table><s:label name="user.addressTemporary" /></table></td>
  	</tr>
  	
  	<tr>
  		<th>Address</th>
  		<td><table><s:label name="user.address" /></table></td>
  	</tr>
  	
  	<tr>
  		<th>Sex</th>
  		<td><table><s:label name="user.sex" /></table></td>
  	</tr>
  	
	 <tr>
	    <td></td>
	 	<td>
	 		<s:url var="changeProfileUrl" action="change-profile" 
				namespace="/user" includeParams="none"></s:url>
	 	
	 		<table><sj:a href="%{#changeProfileUrl}" targets="accountDiv" cssStyle="margin-left:10px">Edit Profile</sj:a></table> 
	 	</td>
	 </tr>
	 
 </table>	
</div>