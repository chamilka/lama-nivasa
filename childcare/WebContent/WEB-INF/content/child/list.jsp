<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>


<s:if test="pager.list.size != 0">
	<div>
		<table>
			<tr>
				<td><div class="td3" style="width: 7px; height: 20px">&nbsp;</div></td>
				<td class="sub-title"><s:text name="page.list.title"/></td>
				<td align="right" style="width: 100%"><s:include
						value="../common/pager.jsp"></s:include></td>
			</tr>
		</table>
	</div>
	<div>
		<table style="margin-top: 10px" width="100%" id="commonTable"
			class="darkBlueTbl">
			<tr>
				<th></th>
				<th><s:text name="page.search.name"/></th>
				<th><s:text name="page.list.gender"/></th>
				<th><s:text name="page.list.dob"/></th>
				<th><s:text name="page.list.district"/></th>
				<th><s:text name="page.search.title"/></th>
			</tr>
			<s:iterator value="pager.list" status="rowIndex">
				<tr>
					<tr>
						 <s:if test="status == @pdn.sci.cs.action.BaseAction@ACTIVE_STATE">
						 	<td>
						 </s:if>
						 <s:elseif test="status == @pdn.sci.cs.action.BaseAction@UNCONFIRMED_STATE">
						 	<td style="background-color: red" title="Unconfirmed">
						 </s:elseif>
						 <s:else>
						 	<td style="background-color: orange" title="Inactive">
						 </s:else>
						 	<s:property value="#rowIndex.index + pager.start + 1"/>
						 </td>
			 
					<td><s:url var="childViewUrl" action="view" namespace="/child"
							includeParams="none">
							<s:param name="id" value="id"></s:param>
						</s:url> <sj:a href="%{#childViewUrl}" targets="childResultDiv"
							title="Code: %{code}">
							<s:property value="fullName" />
						</sj:a></td>
					<td><s:property value="sexType" /></td>
					<td><s:date name="dateOfBirth.time" format="yyyy/MM/dd" /></td>
					<td><s:property
							value="lamaNivasa.divisionalSecretariat.district.name" /></td>
					<td style="text-wrap:normal;"><s:property value="lamaNivasa.name" /></td>
					<%--
			 <td>
			 	<s:url var="childEditUrl" action="edit" namespace="/child" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{childEditUrl}" targets="childResultDiv">Edit</sj:a>
				 |
			 	<s:url var="childDeleteUrl" action="delete" namespace="/child" escapeAmp="false" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{#childDeleteUrl}" targets="childResultDiv" onClickTopics="/confirmDelete">Delete</sj:a>
			 </td>
			 --%>
				</tr>
			</s:iterator>
		</table>
	</div>
</s:if>
<s:else>
	<div class="error"><s:text name="page.list.error.msg"/></div>
</s:else>

<script type="text/javascript">
	$("tr").not(':first').hover(function() {
		$(this).css("color", "#000088");
	}, function() {
		$(this).css("color", "");
	});
</script>
