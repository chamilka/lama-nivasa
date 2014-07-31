<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<s:form action="search" namespace="/lamaNivasa" method="post">

	 <table id="commonTable" class="blueTbl" cellpadding="0" cellspacing="0" style="width: 100%" >

	   <tr>
	   	<th colspan="4">Search</th>
	   </tr>

	   <tr>
	   	<td style="width: 250px">
	   	 	<table>
	  			<s:textfield name="lamaNivasa.name" label="Name" cssStyle="width:250px" ></s:textfield>
			</table>
     	</td>
     	<td style="width: 300px">
	   	 	<table>
	  			<sj:autocompleter
			  		id="lamaNivasa.probationUnit.id"
		     		name="lamaNivasa.probationUnit.id"
		     		list="%{probationUnitList}"
		     		listKey="id" listValue="name"
		     		label="Prob. Unit."
		     	/>
			</table>
     	</td>

     	<td style="width: 100px; text-align: left" >
	   	  <table>
	  		<sj:submit value="SEARCH" targets="lamaNivasaResultDiv"/>
	  	  </table>
     	 </td>
     	 <td style="text-align: right; padding-right: 10px">

			<s:url var="lamaNivasaAddUrl" action="add"
				namespace="/lamaNivasa" includeParams="none"></s:url>

			<s:url var="lamaNivasaListUrl" action="list"
				namespace="/lamaNivasa" includeParams="none"></s:url>
				
     		<sj:a href="%{#lamaNivasaAddUrl}" targets="lamaNivasaResultDiv">Add</sj:a>  |
			<sj:a href="%{#lamaNivasaListUrl}" targets="lamaNivasaResultDiv">All</sj:a>
		</td>
     	</tr>
	  </table>
	</s:form>
