<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>	
	<s:form action="search" namespace="/report" method="post">
	 
	 <table id="commonTable" class="redTbl" cellpadding="0" cellspacing="0" style="width: 100%" >
	   <tr>
	   	<th colspan="6">Search</th>
	   </tr>
	   <tr>
     	 
     	 <s:if test="!isUser()">
     	 <td style="width: 300px">
	   	  <table>
	   		<s:select label="Lama Nivasa" name="lamaNivasaId"  list="lamaNivasaList" listKey="id" listValue="name"/>
	 	  </table>
     	 </td>
    	 </s:if>
    	 
    	 
     	 <td style="width: 100px">
	   	  <table>
	   		<s:select label="Year" name="year"  list="yearList" listKey="listKey" listValue="listValue"/>
	 	  </table>
     	 </td>
     	 
     	 <td style="width: 100px">
	   	  <table>
	   		<s:select label="Month" name="month"  list="monthList" listKey="listKey" listValue="listValue"/>
	 	  </table>
     	 </td>
     	 
     	 <td style="width: 100px; text-align: left" >
	   	  	<table>
	  			<sj:submit value="SEARCH" targets="userList"/>
	  		</table>
     	 </td>
     	 
     	 <td>
	   	  	
     	 </td>
     	
		</tr>
		
	  </table>
	</s:form>

</div>
