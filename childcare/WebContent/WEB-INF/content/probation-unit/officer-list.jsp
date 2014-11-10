<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<s:if test="probationOfficers.size > 0">

	<div>

		<table style="margin-top: 10px" width="100%" id="commonTable"
			class="greenTbl" cellpadding="2px">
			<tr>
				<th></th>

				<th><s:text name="page.probationunit.officer.name"/></th>
				<th><s:text name="page.probationunit.officer.post=Post"/></th>
				<th><s:text name="page.probationunit.officer.userrole=User Role"/></th>
				<th><s:text name="page.probationunit.officer.sextype=Sex Type"/></th>
				<th><s:text name="page.probationunit.officer.telephone=Telephone"/></th>
				<th><s:text name="page.probationunit.officer.mobile=Mobile"/></th>

			</tr>
			<s:iterator value="probationOfficers" status="rowIndex">
				<tr>
					<td><s:property value="%{#rowIndex.index + pager.start + 1}" />
					<td><s:url var="userViewUrl" action="view" namespace="/user"
							includeParams="none">
							<s:param name="id" value="id"></s:param>
						</s:url> <sj:a href="%{#userViewUrl}" targets="userList">
							<s:property value="name" />
						</sj:a></td>
					<td><s:property value="post" /></td>
					<td><s:property value="userRole" /></td>
					<td><s:property value="sex" /></td>
					<td><s:property value="telephone" /></td>
					<td><s:property value="mobile" /></td>
				</tr>
			</s:iterator>
		</table>
	</div>
</s:if>
<s:else>
  	<s:text name="page.probationunit.officerlist.record"/>
</s:else>


