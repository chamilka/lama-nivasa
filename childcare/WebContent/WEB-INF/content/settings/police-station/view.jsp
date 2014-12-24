<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<div>
	<table>
		<tr>
			<td class="td6" style="width: 5px">&nbsp;</td>
			<td class="sub-title"><s:text name="settings.police-station.view.title"/> <s:property value="policeStation.name" /></td>
		</tr>
	</table>
</div>
<hr />

<div>

	<table id="commonTable" class="greenTbl" width="100%">
		<tr>
			<th colspan="7"><s:text name="settings.police-station.view.detail"/></th>
		</tr>

		<tr>
			<th width="130px"><s:text name="settings.police-station.view.email"/></th>
			<td><s:property value="policeStation.email" />
			</td>
			<th width="150px"><s:text name="settings.police-station.view.telephone"/></th>
			<td colspan="3"><s:property value="policeStation.telephone" /></td>
		</tr>
		
		<tr>
			<th><s:text name="settings.police-station.view.fax"/></th>
			<td colspan="5"><s:property value="policeStation.fax" /></td>
		</tr>

		<tr>
			<th><s:text name="settings.police-station.view.address"/></th>
			<td colspan="5"><s:property value="policeStation.address" /></td>
		</tr>
		<tr>
			<th><s:text name="settings.police-station.view.district"/></th>
			<td colspan="5"><s:property value="policeStation.district_id" /></td>
		</tr>

		<tr>
			<th><s:text name="settings.police-station.view.comment"/></th>
			<td colspan="5"><s:property value="policeStation.comment" />
			</td>
		</tr>

		<tr>
			
			<td colspan="6" style="padding-left:150px">
				<s:url var="policeEditUrl" action="edit" namespace="/police" includeParams="none" escapeAmp="&amp;">
					<s:param name="id" value="%{policeStation.id}"></s:param>
				</s:url> 
				
				<sj:a href="%{policeEditUrl}" targets="policeList"
					cssClass="greenTbl"><input type="button" value="<s:text name="settings.police-station.view.edit"/>" /></sj:a> | 
					
				<s:url var="policeDeleteUrl"
					action="delete" namespace="/police" escapeAmp="false" includeParams="none">
					<s:param name="id" value="%{policeStation.id}"></s:param>
				</s:url> 
				
				<sj:a href="%{policeDeleteUrl}" targets="policeList"
					cssClass="greenTbl" onClickTopics="/confirmDelete"><input type="button" value="<s:text name="settings.police-station.view.delete"/>" /></sj:a></td>

		</tr>
	</table>

</div>


<div id="childDetailViewDiv" style="margin: 20px 0 0 0px"></div>
