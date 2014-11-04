<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<s:if test="pager.list.size != 0">
	<div>
		<table>
			<tr>
				<td><div class="td1" style="width: 7px; height: 20px">&nbsp;</div></td>
				<td class="sub-title" style="white-space: nowrap;"><s:text
						name="lamaNivasa.frame.childrensHome" /></td>
				<td align="right" style="width: 100%"><s:include
						value="../common/pager.jsp"></s:include></td>
			</tr>
		</table>
	</div>
	<hr />

	<div>
		<table style="margin-top: 10px" width="100%" id="commonTable"
			class="blueTbl">
			<tr>
				<th></th>
				<th><s:text name="lamaNivasa.list.name" /></th>
				<th><s:text name="lamaNivasa.list.totalChildren" /></th>
				<th><s:text name="lamaNivasa.list.maxAllowedChildren" /></th>
				<th><s:text name="lamaNivasa.list.probationUnit" /></th>
				<th><s:text name="lamaNivasa.list.telephone" /></th>
				<th><s:text name="lamaNivasa.list.officers" /></th>
			</tr>
			<s:iterator value="pager.list" status="rowIndex">

				<tr>
					<s:if test="status == @pdn.sci.cs.action.BaseAction@ACTIVE_STATE">
						<td>
					</s:if>
					<s:else>
						<td style="background-color: orange" title="Inactive">
					</s:else>
					<s:property value="#rowIndex.index + pager.start + 1" />
					</td>
					<td><s:url var="lamaNivasaViewUrl" action="view"
							namespace="/lamaNivasa" includeParams="none">
							<s:param name="id" value="id"></s:param>
						</s:url> <sj:a href="%{#lamaNivasaViewUrl}" targets="lamaNivasaResultDiv">
							<s:property value="name" />
						</sj:a></td>

					<td><s:property value="childs.size" /> <s:if
							test="childs.size > numberOfChildren">
							<img
								src="<s:url value='/images/crowd.png' includeParams='none'/>"
								style="border: none" align="right" title="overcrowding" />
						</s:if> <s:if test="childs.size == 0">
							<img
								src="<s:url value='/images/empty.png' includeParams='none'/>"
								style="border: none;" align="right" title="please add children" />
						</s:if></td>

					<td><s:property value="numberOfChildren" /></td>
					<%--  <td><s:property value="divisionalSecretariat.name"/></td> --%>
					<td><s:property value="probationUnit.name" /></td>
					<td><s:property value="telephone" /></td>
					<td><s:property value="numberOfOfficers" /></td>

					<%--
			 <td>
			 	<s:url var="lamaNivasaEditUrl" action="edit" namespace="/lamaNivasa" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{lamaNivasaEditUrl}" targets="lamaNivasaResultDiv">Edit</sj:a>
				 |
			 	<s:url var="lamaNivasaDeleteUrl" action="delete" namespace="/lamaNivasa" escapeAmp="false" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{lamaNivasaDeleteUrl}" targets="lamaNivasaResultDiv" onClickTopics="/confirmDelete">Delete</sj:a>
			 </td>
			 --%>
				</tr>
			</s:iterator>
		</table>
	</div>
	<script type="text/javascript">
		$("tr").not(':first').hover(function() {
			$(this).css("color", "#0000CC");
		}, function() {
			$(this).css("color", "");
		});
	</script>
</s:if>
<s:else>
	No records
</s:else>