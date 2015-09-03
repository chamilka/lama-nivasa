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
				<th><s:text name="page.transfer.list.name"/></th>
				<th><s:text name="page.transfer.list.from"/></th>
				<th><s:text name="page.transfer.list.to"/></th>
				<th><s:text name="page.transfer.list.reason"/></th>
			</tr>
			<s:iterator value="pager.list" status="rowIndex">
				<tr>
					<tr>
						 <td>
						 	<s:property value="#rowIndex.index + pager.start + 1"/>
						 </td>
			 
					<td><s:url var="childViewUrl" action="view" namespace="/child" includeParams="none">
							<s:param name="id" value="child.id"></s:param>
						</s:url> <sj:a href="%{#childViewUrl}" targets="childResultDiv" title="Code: %{code}">
							<s:property value="child.fullName" />
						</sj:a></td>
					<td style="text-wrap:normal;"><s:property value="fromLamaNivasaId.name" /></td>
					<td style="text-wrap:normal;"><s:property value="toLamaNivasaId.name" /></td>
					<td style="text-wrap:normal;"><s:property value="reason" /></td>
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
