<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>

  <s:if test="!user">
	<s:form action="search" namespace="/child" method="post">

	 <table id="commonTable" class="darkBlueTbl" cellpadding="0" cellspacing="0" style="width: 100%" >
	   <tr>
	   	<th colspan="6">Search</th>
	   </tr>

	   <tr>
	   	<td style="width: 300px">
	   	 <table>

		   <sj:autocompleter
		  		id="child.lamaNivasa.id"
	     		name="child.lamaNivasa.id"
	     		list="%{lamaNivasaList}"
	     		listKey="id" listValue="name"
	     		label="Chidren's Home"
	     		cssStyle="width:450px"
	     		forceValidOption="true"
	     	/>
     	 </table>
     	 </td>
     	 <td style="width: 200px">
	   	  <table>
	   		<s:textfield name="child.fullName" label="Name" />
	 	  </table>
     	 </td>
     	 <td style="width: 100px">
	   	  <table>
	   		<s:textfield name="child.code" label="Code" cssStyle="width:50px" />
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

			<s:url var="childSummaryUrl" action="summary"
				namespace="/child" includeParams="none"></s:url>
			
			<s:url var="childDetailUrl" action="detail"
				namespace="/child" includeParams="none"></s:url>

			<s:if test="!ministry">
					<sj:a href="%{#childAddUrl}" targets="childResultDiv">Add</sj:a>  |
			</s:if>
				
     		
			<sj:a href="%{#childListUrl}" targets="childResultDiv">All</sj:a>
			<s:if test="!user">
				 |
				<sj:a href="%{#childSummaryUrl}" targets="childResultDiv">Brief</sj:a>
				
				<s:if test="ministry">
					| <sj:a href="%{#childDetailUrl}" targets="childResultDiv">Detail</sj:a>
				</s:if>
			</s:if>
		</td>
	  </table>
	</s:form>
</s:if>
<s:else>
	<s:form action="search" namespace="/child" method="post">

	 <table id="commonTable" class="darkBlueTbl" cellpadding="0" cellspacing="0" style="width: 100%" >
	   <tr>
	   	<th colspan="4">Search</th>
	   </tr>

	   <tr>
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
			<sj:a href="%{#childListUrl}" targets="childResultDiv">All</sj:a> |

		</td>
	  </table>
	</s:form>
</s:else>
</div>