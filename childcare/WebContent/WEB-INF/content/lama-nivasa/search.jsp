<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<s:form action="search" namespace="/lamaNivasa" method="post">

	 <table id="commonTable" class="blueTbl" cellpadding="0" cellspacing="0" style="width: 100%" >

	   <tr>
	   	<th colspan="4"><s:text name="lamaNivasa.form.search"/></th>
	   </tr>

	   <tr>
	   	<td style="width: 225px">
	   	 	<table>
	  			<s:textfield name="lamaNivasa.name" key="lamaNivasa.form.search.Name" cssStyle="width:225px" ></s:textfield>
			</table>
     	</td>
     	<td style="width: 250px">
	   	 	<table>
	  			<sj:autocompleter
			  		id="lamaNivasa.probationUnit.id"
		     		name="lamaNivasa.probationUnit.id"
		     		list="%{probationUnitList}"
		     		listKey="id" listValue="name"
		     		key="lamaNivasa.form.search.probUnit" 
		     	
		     	/>
			</table>
     	</td>

     	<td style="width: 75px; text-align: left" >
	   	  <table>
	  		<sj:submit key="lamaNivasa.form.search.btn" targets="lamaNivasaResultDiv"/>
	  	  </table>
     	 </td>
     	 <td style="text-align: right; padding-right: 10px">

			<s:url var="lamaNivasaAddUrl" action="add"
				namespace="/lamaNivasa" includeParams="none"></s:url>

			<s:url var="lamaNivasaListUrl" action="list"
				namespace="/lamaNivasa" includeParams="none"></s:url>
				
			<s:url var="lamaNivasaListDeleteUrl" action="deletedlist"
				namespace="/lamaNivasa" includeParams="none"></s:url>
			<s:if test="probationOfficer">
	     		<sj:a href="%{#lamaNivasaAddUrl}" targets="lamaNivasaResultDiv"><s:text name="lamaNivasa.form.add"/></sj:a>  |
     		</s:if>
			<sj:a href="%{#lamaNivasaListUrl}" targets="lamaNivasaResultDiv"><s:text name="lamaNivasa.form.activeHomes"/></sj:a> |
			<sj:a href="%{#lamaNivasaListDeleteUrl}" targets="lamaNivasaResultDiv"><s:text name="lamaNivasa.form.inActiveHomes"/></sj:a>
		</td>
     	</tr>
	  </table>
	</s:form>
