<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<div>
	<table>
		<tr>
			<td><div class="td6" style="width:7px;height:20px">&nbsp;</div></td>
			<td class="sub-title">Users</td>
			<td align="right" style="width: 100%">
	   			<s:include value="../../common/pager.jsp"></s:include>
	   		</td>
		</tr>
	</table>
</div>
<hr />

<div>
  <s:if test="pager.list.size > 0">
	<table style="margin-top: 10px" width="100%" id="commonTable"
		class="greenTbl" cellpadding="2px">
		<tr>
			<th></th>

			<th>Name</th>
			<th>Post</th>
			<th>User Role</th>
			<th>Sex Type</th>
			<th>Telephone</th>
			<th>Mobile</th>

		</tr>
		<s:iterator value="pager.list" status="rowIndex">
			<tr>
				<td><s:property value="%{#rowIndex.index + 1}" />
				<td><s:url var="userViewUrl" action="view" namespace="/user"
						includeParams="none">
						<s:param name="id" value="id"></s:param>
					</s:url> <sj:a href="%{#userViewUrl}" targets="userList">
						<s:property value="name" />
					</sj:a></td>
				<td><s:property value="post" /></td>
				<td><s:property value="userRole" /></td>
			<%-- 	 <td>
			 	<s:url var="probationUnitViewUrl" action="view" namespace="/probationUnit" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{#probationUnitViewUrl}" targets="probationUnitResultDiv">
			 	<s:property value="referenceId"/></sj:a>
			 </td> --%>
				<%-- td><s:property value="referenceId" /></td> --%>
				<td><s:property value="sex" /></td>
				<td><s:property value="telephone" /></td>
				<td><s:property value="mobile" /></td>
				<%--
				<td><s:url var="userEditUrl" action="edit" namespace="/user"
						includeParams="none">
						<s:param name="id" value="id"></s:param>
					</s:url> <sj:a href="%{userEditUrl}" targets="userList">Edit</sj:a>

					|
					<s:url var="userDeleteUrl" action="delete" namespace="/user"
						escapeAmp="false" includeParams="none">
						<s:param name="id" value="id"></s:param>
					</s:url> <sj:a href="%{userDeleteUrl}" targets="userList" onClickTopics="/confirmDelete">Delete</sj:a>
				</td> --%>
			</tr>
		</s:iterator>
	</table>
  </s:if>
  <s:else>
  	No user found for your criteria, search again with a different criteria
  </s:else>
</div>

<div id="referenceDiv">

</div>

