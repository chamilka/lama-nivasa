<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<div>
	<table>
		<tr>
			<td class="td1" style="width: 5px">&nbsp;</td>
			<td class="sub-title"><s:text name="header.childrensHome"></s:text></td>
		</tr>
	</table>
</div>


<hr />
<div>

	<table id="commonTable" class="blueTbl" width="100%">

		<tr>
			<th style="width: 130px"><s:text name="lamaNivasa.add.name"/></th>
			<td colspan="3"><s:property value="lamaNivasa.name" /></td>
			<th><s:text name="lamaNivasa.add.DOEstablish"/></th>
			<td><s:date name="lamaNivasa.dateOfEstablishment"
					format="yyyy/MM/dd" /></td>
		</tr>
		<tr>
			<th><s:text name="lamaNivasa.add.category"/></th>
			<td colspan="3"><s:property value="lamaNivasa.category" /></td>
			
			<th><s:text name="lamaNivasa.add.totalChildren"/></th>
			<td><s:property value="lamaNivasa.childs.size" /></td>
		</tr>
		<tr>
			<th><s:text name="lamaNivasa.add.district"/></th>
			<td><s:property value="lamaNivasa.gramaSevakaDivision.divisionalSecretariat.district.name" /></td>
			
			<th><s:text name="lamaNivasa.add.dSecretariat"/></th>
			<td><s:property value="lamaNivasa.gramaSevakaDivision.divisionalSecretariat.name" /></td>
			
			<th><s:text name="lamaNivasa.add.gramaNiladari"/></th>
			<td><s:property value="lamaNivasa.gramaSevakaDivision.name" /></td>
		</tr>
		<tr>
			<th><s:text name="lamaNivasa.add.unit"/></th>
			<td colspan="3"><s:property
					value="lamaNivasa.probationUnit.name" /></td>
			<th><s:text name="lamaNivasa.add.pOfficer"/></th>
			<td colspan="2">
				<s:if test="lamaNivasa.probationOfficer == -1">
					<s:text name="lamaNivasa.add.PONotSelected"/>
				</s:if>
				<s:else>
					<s:property value="lamaNivasa.probationOfficer" />
				</s:else>				
			</td>
		</tr>
		<tr>
			<th><s:text name="lamaNivasa.add.address"/></th>
			<td colspan="3"><s:property value="lamaNivasa.address" /></td>
			<th><s:text name="lamaNivasa.add.religion"/></th>
			<td><s:property value="lamaNivasa.religion" /></td>
		</tr>
		<tr>
			<th><s:text name="lamaNivasa.add.telephone"/></th>
			<td><s:property value="lamaNivasa.telephone" /></td>
			<th><s:text name="lamaNivasa.add.fax"/></th>
			<td><s:property value="lamaNivasa.fax" /></td>
			<th><s:text name="lamaNivasa.add.email"/></th>
			<td><s:property value="lamaNivasa.email" /></td>
		</tr>
		<tr>
			<th><s:text name="lamaNivasa.add.maxchildren"/></th>
			<td><s:property value="lamaNivasa.numberOfChildren" /></td>
			<th><s:text name="lamaNivasa.add.minAge"/></th>
			<td><s:property value="lamaNivasa.minAge" /></td>
			<th><s:text name="lamaNivasa.add.maxAge"/></th>
			<td><s:property value="lamaNivasa.maxAge" /></td>
		</tr>

		<tr>
			<th><s:text name="lamaNivasa.add.registration"/></th>
			<td><s:property value="lamaNivasa.registrationStatus" /></td>
			<th><s:text name="lamaNivasa.add.regNumber"/></th>
			<td><s:property value="lamaNivasa.registrationNumber" /></td>
			<th><s:text name="lamaNivasa.add.regDate"/></th>
			<td><s:date name="lamaNivasa.registrationDate.time"
					format="yyyy/MM/dd" /></td>
		</tr>

		<tr>
			<th><s:text name="lamaNivasa.add.funding"/></th>
			<td><s:property value="lamaNivasa.fundingMethod" /></td>
			<th><s:text name="lamaNivasa.add.DFunding"/></th>
			<td><s:property value="lamaNivasa.departmentFunding" /></td>
			<th><s:text name="lamaNivasa.add.noStaff"/></th>
			<td><s:property value="lamaNivasa.numberOfOfficers" /></td>
		</tr>

		<tr>
			<td colspan="6" style="padding-left: 150px">
				<table cellpadding="0" cellspacing="0">
					<s:url var="lamaNivasaEditUrl" action="edit"
						namespace="/lamaNivasa" includeParams="none">
						<s:param name="id" value="lamaNivasa.id"></s:param>
					</s:url>
					<sj:a href="%{lamaNivasaEditUrl}" targets="lamaNivasaResultDiv">
					 <input type="button" value="<s:text name='lamaNivasa.add.edit'/>"/>
						
					</sj:a>
					<s:if test="admin"> |
 						<s:if test="lamaNivasa.status == @pdn.sci.cs.action.BaseAction@ACTIVE_STATE">
						 	<s:url var="lamaNivasaDeleteUrl" action="delete"
								namespace="/lamaNivasa" escapeAmp="false" includeParams="none">
								<s:param name="id" value="lamaNivasa.id"></s:param>
							</s:url>
							<sj:a href="%{lamaNivasaDeleteUrl}" targets="lamaNivasaResultDiv"
								onClickTopics="/confirmDelete">
								<input type="button" value="<s:text name='lamaNivasa.add.delete'/>" />
							</sj:a>
						</s:if>
						<s:else>
							<s:url var="lamaNivasaRestoreUrl" action="restore"
								namespace="/lamaNivasa" escapeAmp="false" includeParams="none">
								<s:param name="id" value="lamaNivasa.id"></s:param>
							</s:url>
							<sj:a href="%{lamaNivasaRestoreUrl}" targets="lamaNivasaResultDiv"
								onClickTopics="/confirmRestore">
								<input type="button" value="Restore" />
							</sj:a>
						</s:else>
					</s:if>
				</table>
			</td>
		</tr>


	</table>

</div>

<s:if test="lamaNivasa.childs.size != 0">
<div style="margin: 10px 0">
	<table>
		<tr>
			<td class="td1" style="width: 5px">&nbsp;</td>
			<td class="sub-title"><s:text name="lamaNivasa.view.list"/></td>
		</tr>
	</table>
</div>

<div id="childResultDiv" style="margin-top: 10px; min-height: 250px">
	<table style="margin-top: 10px" width="100%" id="commonTable"
		class="blueTbl">
		<tr>
			<th style="width: 20px"></th>
			<th><s:text name="lamaNivasa.add.name"/></th>
			<th style="width: 70px"><s:text name="lamaNivasa.add.sexType"/></th>
			<th><s:text name="lamaNivasa.add.dob"/></th>
			<th style="width: 50px"><s:text name="lamaNivasa.add.intakeMethod"/></th>
			<th><s:text name="lamaNivasa.add.race"/></th>
		</tr>

		<s:iterator value="lamaNivasa.childs" status="rowIndex">
			<tr>
				<td><s:property value="%{#rowIndex.index + 1}" />
				<td><s:property value="fullName" /></td>
				<td><s:property value="sexType" /></td>
				<td><s:date name="dateOfBirth.time" format="yyyy/MM/dd" /></td>
				<td><s:property value="intakeMethod" /></td>
				<td><s:property value="race" /></td>
			</tr>
		</s:iterator>
	</table>
</div>
</s:if>
