<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<div>
	<table>
		<tr>
			<td class="td6" style="width: 5px">&nbsp;</td>
			<td class="sub-title">Police Station: <s:property value="policeStation.name" /></td>
		</tr>
	</table>
</div>
<hr />

<div>

	<table id="commonTable" class="greenTbl" width="100%">
		<tr>
			<th colspan="7">Detail</th>
		</tr>

		<tr>
			<th width="130px">Email</th>
			<td><s:property value="policeStation.email" />
			</td>
			<th width="150px">Telephone</th>
			<td colspan="3"><s:property value="policeStation.telephone" /></td>
		</tr>
		
		<tr>
			<th>Fax</th>
			<td colspan="5"><s:property value="policeStation.fax" /></td>
		</tr>

		<tr>
			<th>Address</th>
			<td colspan="5"><s:property value="policeStation.address" /></td>
		</tr>

		<tr>
			<th>Comment</th>
			<td colspan="5"><s:property value="policeStation.comment" />
			</td>
		</tr>

		<tr>
			
			<td colspan="6" style="padding-left:150px">
				<s:url var="policeEditUrl" action="edit" namespace="/police" includeParams="none" escapeAmp="&amp;">
					<s:param name="id" value="%{policeStation.id}"></s:param>
				</s:url> 
				
				<sj:a href="%{policeEditUrl}" targets="policeList"
					cssClass="greenTbl"><input type="button" value="Edit" /></sj:a> | 
					
				<s:url var="policeDeleteUrl"
					action="delete" namespace="/police" escapeAmp="false" includeParams="none">
					<s:param name="id" value="%{policeStation.id}"></s:param>
				</s:url> 
				
				<sj:a href="%{policeDeleteUrl}" targets="policeList"
					cssClass="greenTbl" onClickTopics="/confirmDelete"><input type="button" value="Delete" /></sj:a></td>

		</tr>
	</table>

</div>


<div id="childDetailViewDiv" style="margin: 20px 0 0 0px"></div>
