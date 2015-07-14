<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>

  <s:if test="!user">
	<s:form action="search" namespace="/child" method="post">

	 <table id="commonTable" class="darkBlueTbl" cellpadding="0" cellspacing="0" style="width: 100%" >
	   <tr>
	   	<th colspan="6"><s:text name="Child.form.search"/></th>
	   </tr>

	   <tr>
	   	<td style="width: 250px">
	   	 <table>

		   <sj:autocompleter
		  		id="child.lamaNivasa.id"
	     		name="child.lamaNivasa.id"
	     		list="%{lamaNivasaList}"
	     		listKey="id" listValue="name"
	     		label="%{getText('page.search.title')}"
	     		cssStyle="width:400px"
	     		forceValidOption="true"
	     	/>
     	 </table>
     	 </td>
     	 <td style="width: 200px">
	   	  <table>
	   		<s:textfield name="child.fullName" label="%{getText('page.search.name')}" />
	 	  </table>
     	 </td>
     	 <td style="width: 100px">
	   	  <table>
	   		<s:textfield name="child.code" label="%{getText('page.search.code')}" cssStyle="width:50px" />
	 	  </table>
     	 </td>
     	 <td style="width: 75px; text-align: left" >
	   	  	<table>
	  			<sj:submit value="%{getText('page.search.button')}" targets="childResultDiv"/>
	  		</table>
     	 </td>
     	 <td style="text-align: right; padding-right: 10px">

			<s:url var="childAddUrl" action="add"
				namespace="/child" includeParams="none"></s:url>

			<s:url var="childListUrl" action="list"
				namespace="/child" includeParams="none"></s:url>
				
			<s:url var="childDeletedListUrl" action="deletedlist"
				namespace="/child" includeParams="none"></s:url>
			
			<s:url var="childUnconfirmedListUrl" action="unconfirmedlist"
				namespace="/child" includeParams="none"></s:url>

			<s:url var="childSummaryUrl" action="summary-frame"
				namespace="/child" includeParams="none"></s:url>
			
			<s:url var="childDetailUrl" action="detail-search-form"
				namespace="/report" includeParams="none"></s:url>			
				
     		
			<sj:a href="%{#childListUrl}" targets="childResultDiv"><s:text name="page.search.view.active"/></sj:a>  |
			<sj:a href="%{#childDeletedListUrl}" targets="childResultDiv"><s:text name="page.search.view.inactive"/></sj:a>
			<s:if test="probationOfficer || user">
					<sj:a href="%{#childAddUrl}" targets="childResultDiv"><s:text name="page.search.add"/></sj:a>
			</s:if>
			<s:if test="!user">
				 |
				<sj:a href="%{#childSummaryUrl}" targets="childResultDiv"><s:text name="page.search.brief"/></sj:a>
				
				<s:if test="ministry || provincialCommissioner">
					| <sj:a href="%{#childDetailUrl}" targets="childResultDiv"><s:text name="page.search.detail"/></sj:a>
				</s:if>
				<s:if test="probationOfficer">
					| <sj:a href="%{#childUnconfirmedListUrl}" targets="childResultDiv"><s:text name="page.search.unconfirmed"/></sj:a>
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
	   	<th colspan="4"><s:text name="page.search.button"/></th>
	   </tr>

	   <tr>
	 	 <td style="width: 250px">
	   	  <table>
	   		<s:textfield name="child.fullName" label="%{getText('page.search.name')}" />
	 	  </table>
     	 </td>
     	 <td style="width: 100px; text-align: left" >
	   	  	<table>
	  			<sj:submit value="%{getText('page.search.button')}" targets="childResultDiv"/>
	  		</table>
     	 </td>
     	 <td style="text-align: right; padding-right: 10px">

			<s:url var="childAddUrl" action="add"
				namespace="/child" includeParams="none"></s:url>

			<s:url var="childListUrl" action="list"
				namespace="/child" includeParams="none"></s:url>

     		<sj:a href="%{#childAddUrl}" targets="childResultDiv"><s:text name="page.search.add"/></sj:a>  |
			<sj:a href="%{#childListUrl}" targets="childResultDiv"><s:text name="page.search.all"/></sj:a> |

		</td>
	  </table>
	</s:form>
</s:else>
</div>