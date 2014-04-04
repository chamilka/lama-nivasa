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
    <s:actionerror/>
  	<tr>
  		<th width="150px">Login Name</th>
  		<td><table><s:label name="systemUser.username" /></table>	</td>
  	</tr>

  	<tr>
  		<th>Name</th>
  		<td><table><s:label name="systemUser.name" /></table>	</td>
  	</tr>

  	<tr>
  		<th>Post</th>
  		<td><table><s:label name="systemUser.post" /></table>	</td>
  	</tr>

  	<tr>
  		<th>System Role</th>
  		<td><table><s:label name="systemUser.userRole" /></table>	</td>
  	</tr>

  	<tr>
  		<th>Mobile</th>
  		<td><table><s:label name="systemUser.mobile" /></table></td>
  	</tr>
  	<tr>
  		<th>Email</th>
  		<td><table><s:label name="systemUser.email" /></table></td>
  	</tr>
  	<tr>
  		<th>Telephone</th>
  		<td><table><s:label name="systemUser.telephone" /></table></td>
  	</tr>

  	<tr>
  		<th>Temporary Address</th>
  		<td><table><s:label name="systemUser.addressTemporary" /></table></td>
  	</tr>

  	<tr>
  		<th>Address</th>
  		<td><table><s:label name="systemUser.address" /></table></td>
  	</tr>

  	<tr>
  		<th>Sex</th>
  		<td><table><s:label name="systemUser.sex" /></table></td>
  	</tr>

	 <tr>
	    <td></td>
	 	<td>
	 		<s:url var="changeProfileUrl" action="change-profile"
				namespace="/user" includeParams="none"></s:url>

	 		<table><sj:a href="%{#changeProfileUrl}" targets="accountDiv" cssStyle="margin-left:10px"><input type="button" value="Edit" /></sj:a></table>
	 	</td>
	 </tr>

 </table>
</div>