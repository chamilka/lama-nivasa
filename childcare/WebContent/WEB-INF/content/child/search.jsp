<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>	
	<s:form action="search" namespace="/child" method="post">
	 
	 <table id="commonTable" class="darkBlueTbl" cellpadding="0" cellspacing="0" style="width: 100%" >
	   <tr>
	   	<th colspan="4">Search</th>
	   </tr>
	   
	   <tr>
	   	<td style="width: 350px">
	   	 <table>
		   <sj:autocompleter 
		  		id="child.lamaNivasa.id"
	     		name="child.lamaNivasa.id"
	     		list="%{lamaNivasaList}"
	     		listKey="id" listValue="name"
	     		label="Lama Nivasa"
	     		cssStyle="width:450px"
	     	/>
     	 </table>
     	 </td>
     	 <td style="width: 250px">
	   	  <table>
	   		<s:textfield name="child.fullName" label="Name" />
	 	  </table>
     	 </td>
     	 <td style="width: 100px; text-align: left" >
	   	  	<table>
	  			<sj:submit value="SEARCH" targets="childResultDiv"/>
	  		</table>
     	 </td>
     	 <td style="text-align: right; padding-right: 10px">
	   	 	
			<s:url var="childAddUrl" action="add" 
				namespace="/child" includeParams="none"></s:url>
				
			<s:url var="childListUrl" action="list" 
				namespace="/child" includeParams="none"></s:url>
     	
     		<sj:a href="%{#childAddUrl}" targets="childResultDiv">Add</sj:a>  | 
			<sj:a href="%{#childListUrl}" targets="childResultDiv">All</sj:a>
		</td>
	  </table>
	</s:form>

</div>