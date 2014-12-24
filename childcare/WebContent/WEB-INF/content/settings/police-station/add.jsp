<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<div>

	<div class="sub-title">
		<s:text name="settings.police-station.add.title" />
	</div>
	<br />

	<s:form action="save" namespace="/police" method="post">
		<table id="commonTable" class="greenTbl" width="100%">
			<s:actionerror />
			<s:hidden name="policeStation.id" />
			<s:hidden name="operationMode" />
			<%-- 	<s:hidden name="addType" value="%{addType}"/> --%>

			<tr>
				<th style="width: 200px"><s:text
						name="settings.police-station.add.name" /></th>
				<td colspan="5"><table>
						<s:textfield name="policeStation.name" cssStyle="width:350px" />
					</table></td>
			</tr>

			<tr>
				<th style="width: 200px"><s:text
						name="settings.police-station.add.email" /></th>
				<td colspan="5"><table>
						<s:textfield name="policeStation.email" cssStyle="width:350px" />
					</table></td>
			</tr>

			<tr>
				<th><s:text name="settings.police-station.add.telephone" /></th>
				<td colspan="5"><table>
						<s:textfield name="policeStation.telephone" cssStyle="width:200px" />
					</table></td>
			</tr>

			<tr>
				<th><s:text name="settings.police-station.add.fax" /></th>
				<td colspan="5"><table>
						<s:textfield name="policeStation.fax" cssStyle="width:200px" />
					</table></td>
			</tr>

			<tr>
				<th><s:text name="settings.police-station.add.address" /></th>
				<td colspan="5"><table>
						<s:textfield name="policeStation.address" cssStyle="width:450px" />
					</table></td>
			</tr>
			<tr>
				<th><s:text name="settings.police-station.add.district" /></th>
				<td colspan="5"><table >
						<s:select name="probationUnit.district.id" list="districtList"
							listKey="id" listValue="name" />
					</table></td>
			</tr>

			<tr>
				<th valign="top"><s:text
						name="settings.police-station.add.comment" /></th>
				<td colspan="5"><table>
						<s:textarea name="policeStation.comment"
							cssStyle="width:600px;height:30px" />
					</table></td>
			</tr>

			<tr>
				<th valign="top">&nbsp;</th>
				<td colspan="5"><table>
						<sj:submit value="%{getText('settings.user.add.user.submit')}"
							targets="policeList" />
					</table></td>
			</tr>

		</table>
	</s:form>
</div>


<!-- <div id="childDetailViewDiv" style="margin: 20px 0 0 0px"></div> -->
