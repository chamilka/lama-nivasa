<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>	
	<s:form action="search" namespace="/report" method="post">
	 
	 <table id="commonTable" class="greenTbl" cellpadding="0" cellspacing="0" style="width: 100%" >
	   <tr>
	   	<th colspan="6">Search</th>
	   </tr>
	   
	   <tr>
	   	 <td style="width: 200px">
	   	 <table>
		   <s:textfield name="lamaNivasa.name" label="Lama Nivasa Name" />
     	 </table>
     	 </td>
     	 <td style="width: 100px">
	   	  <table>
	   		<s:select name="monthlyData.year" label="Year" list="#{'':'','ADMIN':'Admin', 'USER': 'User', 'OFFICER': 'Officer'}"/>
	 	  </table>
     	 </td>
     	 <td style="width: 100px">
	   	  <table>
	   		<s:textfield name="monthlyData.month" label="Month" />
	 	  </table>
     	 </td>
     	 
     	 <td style="width: 100px; text-align: left" >
	   	  	<table>
	  			<sj:submit value="SEARCH" targets="userList"/>
	  		</table>
     	 </td>
     	 <td style="text-align: right; padding-right: 10px;white-space: nowrap;">
	   	 	
			<s:url var="userListUrl" action="list" 
			namespace="/monthlyData" includeParams="none"></s:url>
	
			<s:url var="userAddUrl" action="add" 
			namespace="/monthlyData" includeParams="none"></s:url>
     	
     		<sj:a href="%{userListUrl}" targets="userList">All</sj:a> | 
			<sj:a href="%{#userAddUrl}" targets="userList">Add</sj:a>
		</td>
	  </table>
	</s:form>

</div>

