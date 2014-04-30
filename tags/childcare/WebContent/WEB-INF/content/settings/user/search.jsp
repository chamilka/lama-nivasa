<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>	
	<s:form action="search" namespace="/user" method="post">
	 
	 <table id="commonTable" class="greenTbl" cellpadding="0" cellspacing="0" style="width: 100%" >
	   <tr>
	   	<th colspan="6">Search</th>
	   </tr>
	   
	   <tr>
	   	 <td style="width: 200px">
	   	 <table>
		   <s:textfield name="systemUser.name" label="Name" />
     	 </table>
     	 </td>
     	 <td style="width: 100px;">
	   	  <table>
	   		<s:select name="systemUser.userRole" id="searchUserRole" label="Role" list="#{'':'','ADMIN':'Admin', 'USER': 'User', 'OFFICER': 'Officer'}" /> <%-- onChange="javascript:userSearch()" --%>
	 	  </table>
     	 </td>
     	 <%-- td id="unitTd" style="width: 100px; display: none">
	   	  <table>
	   	  	<sj:autocompleter 
	   	  	    id="referenceId"
	     		name="systemUser.referenceId"
	     		list="%{probationUnitList}"
	     		listKey="id" listValue="name"
	     		label="Unit Name"
	     		cssStyle="width:150px"
	     	/>
	 	  </table>
     	 </td> --%>
     	 
     	 <%-- 
      	 <td id="lamaNivasaTd" style="width: 100px; display: none" >
	   	  <table>
	   	  	<sj:autocompleter 
	     		name="user.referenceId"
	     		list="%{lamaNivasaList}"
	     		listKey="id" listValue="name"
	     		label="Chidren's Home"
	     		cssStyle="width:150px"
	     	/>
	 	  </table>
     	 </td> 
     	 --%>
     	 <td style="width: 100px">
	   	  <table>
	   		<s:textfield name="systemUser.mobile" label="Mobile" />
	 	  </table>
     	 </td>
     	 <td style="width: 100px; text-align: left" >
	   	  	<table>
	  			<sj:submit value="SEARCH" targets="userList"/>
	  		</table>
     	 </td>
     	 <td style="text-align: right; padding-right: 10px;white-space: nowrap;">
	   	 	
			<s:url var="userListUrl" action="list" 
			namespace="/user" includeParams="none"></s:url>
	
			<s:url var="userAddAdminUrl" action="add" namespace="/user" includeParams="none" >
				<s:param name="addType">ADMIN</s:param>
			</s:url>
			<s:url var="userAddOfficerUrl" action="add" namespace="/user" includeParams="none">
				<s:param name="addType">OFFICER</s:param>
			</s:url>
			<s:url var="userAddUserUrl" action="add" namespace="/user" includeParams="none">
				<s:param name="addType">USER</s:param>
			</s:url>
     	
     		<sj:a href="%{userListUrl}" targets="userList">View All</sj:a> | 
			<sj:a href="%{#userAddAdminUrl}" targets="userList">Add-Admin</sj:a> |
			<sj:a href="%{#userAddOfficerUrl}" targets="userList">Add-Officer</sj:a> |
			<sj:a href="%{#userAddUserUrl}" targets="userList">Add-User</sj:a>
		</td>
	  </table>
	</s:form>

</div>