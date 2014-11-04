<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<s:if test="list.size > 0">
<div>
	<table>
		<tr>
			<td><div class="td6" style="width:7px;height:20px">&nbsp;</div></td>
			<td class="sub-title"><s:text name="police-station.list"/></td>
			
		</tr>
	</table>
</div>
<hr />

<div>

	<table style="margin-top: 10px" width="100%" id="commonTable"
		class="greenTbl" cellpadding="2px">
		<tr>
			<th></th>

			<th><s:text name="settings.police-station.list.name"/></th>
			<th><s:text name="settings.police-station.list.email"/></th>
			<th><s:text name="settings.police-station.list.telephone"/></th>
			<th><s:text name="settings.police-station.list.fax"/></th>
			<th><s:text name="settings.police-station.list.address"/></th>
			<th><s:text name="settings.police-station.list.comment"/></th>

		</tr>
		<s:iterator value="list" status="rowIndex">
			<tr>
				<td><s:property value="%{#rowIndex.index + 1}" />
				<td><s:url var="policeViewUrl" action="view" namespace="/police" includeParams="none">
						<s:param name="id" value="id"></s:param>
					</s:url> <sj:a href="%{#policeViewUrl}" targets="policeList">
						<s:property value="name" />
					</sj:a></td>
				<td><s:property value="email" /></td>
				<td><s:property value="telephone" /></td>
				<td><s:property value="fax" /></td>
				<td><s:property value="address" /></td>
				<td><s:property value="comment" /></td>
				
			</tr>
		</s:iterator>
	</table>
	</div>
 </s:if>
  <s:else>
  	No user found for your criteria, search again with a different criteria
  </s:else>


<div id="referenceDiv">

</div>

