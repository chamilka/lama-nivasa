<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<div>
	<table>
		<tr>
			<td class="td1" style="width: 5px">&nbsp;</td>
			<td class="sub-title"><s:text name="lamaNivasa.add.childrenMome"/></td>
		</tr>
	</table>
</div>

<div style="margin: 10px 0 0 0px">

	<hr />

	<s:form id="lamaNivasaAddForm" action="save" method="post"
		namespace="/lamaNivasa">

		<s:url id="districtDefaultJsonUrl" action="district-default-json"
			namespace="/lamaNivasa" />
		<s:url id="dsSelectJsonUrl" action="ds-select-json"
			namespace="/lamaNivasa" />
		<s:url id="districtSelectJsonUrl" action="district-select-json"
			namespace="/lamaNivasa" />

		<s:actionerror />
		<s:hidden name="lamaNivasa.id" />
		<s:hidden name="operationMode" />

		<table id="contentTable" class="blueTbl" width="100%">

			<tr>
				<th><s:text name="lamaNivasa.add.name"/><span class="required">*</span></th>
				<td colspan="5"><table>
						<s:textfield name="lamaNivasa.name" cssStyle="width:450px"
							required="true" maxlength="250"/>
					</table></td>
			</tr>
			<tr>
				<th><s:text name="lamaNivasa.add.DOEstablish"/></th>
				<td colspan="5"><table>
						<sj:datepicker id="dateOfEstablished"
							name="lamaNivasa.dateOfEstablishment" changeMonth="true"
							changeYear="true" yearRange="1972:"
							value="%{lamaNivasa.dateOfEstablishment.time}" />

					</table></td>
			</tr>
			<tr>
				<th><s:text name="lamaNivasa.add.category"/><span class="required">*</span></th>
				<td><table>
						<s:select name="lamaNivasa.category" list="lamaNivasaTypeList"
							listKey="listKey" listValue="listValue" />
					</table></td>
				<th><s:text name="lamaNivasa.add.religion"></s:text></th>
				<td colspan="3"><table>
						<s:select name="lamaNivasa.religion" list="religionList"
							listKey="listKey" listValue="listValue" />
					</table></td>
			</tr>

			<s:if test="!user">
				<tr>
					<th><s:text name="lamaNivasa.add.district"/>
					</th>
					<td colspan="5">
						<table>
							<sj:select href="%{districtDefaultJsonUrl}" id="district"
								onChangeTopics="reloadsecondlist" name="districtId"
								list="districtList" listKey="id" listValue="name"
								emptyOption="false" headerKey="-1"
								headerValue="Please Select a District"
								value="%{lamaNivasa.gramaSevakaDivision.divisionalSecretariat.district.name}" />
						</table>
					</td>
				</tr>
				<tr>
					<th><s:text name="lamaNivasa.add.dSecretariat"/></th>
					<td colspan="5">
						<table>
							<sj:select href="%{districtSelectJsonUrl}" id="dsId"
								onChangeTopics="reloadThirdlist" formIds="lamaNivasaAddForm"
								reloadTopics="reloadsecondlist" name="divisionalSecretariatId"
								list="divisionalSecretariatList" listKey="id" listValue="name"
								emptyOption="false" headerKey="-1"
								headerValue="Please Select a DS division"
								title="%{lamaNivasa.gramaSevakaDivision.divisionalSecretariat.name}" 
								cssStyle="width: 250px" />
						</table>
					</td>
				</tr>

				<tr>
					<th><s:text name="lamaNivasa.add.gNDivision"/><span class="required">*</span></th>
					<td colspan="5">
						<table>
							<sj:select required="true" href="%{dsSelectJsonUrl}" id="gsId"
								reloadTopics="reloadThirdlist"
								name="lamaNivasa.gramaSevakaDivision.id"
								list="gramaSevakaDivisionList" listKey="id" listValue="name"
								emptyOption="false" headerKey="-1"
								headerValue="Please Select a GS division"
								title="%{lamaNivasa.gramaSevakaDivision.name}" 
								cssStyle="width: 250px" />
						</table>
					</td>
				</tr>

				<tr>
					<th><s:text name="lamaNivasa.add.unit"/><span class="required">*</span></th>
					<td colspan="2">
						<table>
							<sj:select href="%{districtSelectJsonUrl}"
								id="lamaNivasa.probationUnit.id" reloadTopics="reloadsecondlist"
								name="lamaNivasa.probationUnit.id" list="probationUnitList"
								listKey="id" listValue="name" emptyOption="false" headerKey="-1"
								headerValue="Please Select Probation Unit" 
								cssStyle="width: 250px"/>
						</table>
					</td>

					<th><s:text name="lamaNivasa.add.pOfficer"/></th>
					<td colspan="2">
						<table>
							<sj:select required="true" href="%{districtSelectJsonUrl}"
								id="lamaNivasa.probationOfficer" reloadTopics="reloadsecondlist"
								name="lamaNivasa.probationOfficer"
								list="probationUnitOfficerList" listKey="name" listValue="name"
								emptyOption="false" headerKey="-1"
								headerValue="Please Select Main Officer" 
								cssStyle="width: 250px"/>
						</table>
					</td>
				</tr>
			</s:if>
			<s:else>
				<s:hidden name="lamaNivasa.probationOfficer" />
				<s:hidden name="lamaNivasa.probationUnit.id" />
				<s:hidden name="lamaNivasa.gramaSevakaDivision.id" />
				<tr>
					<th>District</th>
					<td><s:property
							value="lamaNivasa.gramaSevakaDivision.divisionalSecretariat.district.name" /></td>

					<th><s:text name="lamaNivasa.add.dSecretariat"/></th>
					<td><s:property
							value="lamaNivasa.gramaSevakaDivision.divisionalSecretariat.name" /></td>

					<th><s:text name="lamaNivasa.add.gNDivision"/></th>
					<td><s:property value="lamaNivasa.gramaSevakaDivision.name" /></td>
				</tr>

			</s:else>
			<tr>
				<th><s:text name="lamaNivasa.add.address"/><span class="required">*</span></th>
				<td colspan="5"><table>
						<s:textfield name="lamaNivasa.address" cssStyle="width:500px"
							required="true" maxlength="250" />
					</table></td>
			</tr>
			<tr>
				<th><s:text name="lamaNivasa.add.telephone"/><span class="required">*</span></th>
				<td><table>
						<s:textfield name="lamaNivasa.telephone" cssStyle="width:150px"
							required="true" maxlength="15" />
					</table></td>
				<th><s:text name="lamaNivasa.add.fax"/></th>
				<td><table>
						<s:textfield name="lamaNivasa.fax" cssStyle="width:150px" maxlength="15"/>
					</table></td>
				<th><s:text name="lamaNivasa.add.email"/></th>
				<td><table>
						<s:textfield name="lamaNivasa.email" cssStyle="width:200px" maxlength="60"/>
					</table></td>
			</tr>
			<tr>
				<th><s:text name="lamaNivasa.add.maxchildren"/></th>
				<td><table>
						<sj:spinner name="lamaNivasa.numberOfChildren"
							id="numberOfChildrenSpinner" min="0" step="1" max="999"
							cssStyle="width:60px" required="true" mouseWheel="true"
							tooltip="Head count" />
					</table></td>
				<th><s:text name="lamaNivasa.add.minAge"/></th>
				<td><table>
						<sj:spinner name="lamaNivasa.minAge" id="minAgeSpinner" min="0"
							max="30" step="1" cssStyle="width:60px" required="true"
							mouseWheel="true" tooltip="Minimum Age in Years" />
					</table></td>
				<th><s:text name="lamaNivasa.add.maxAge"/></th>
				<td><table>
						<sj:spinner name="lamaNivasa.maxAge" id="maxAgeSpinner" Min="5"
							Max="30" step="1" cssStyle="width:60px" required="true"
							mouseWheel="true" tooltip="Maximum Age in Years" />
					</table></td>
			</tr>

			<tr>
				<th><s:text name="lamaNivasa.add.registration"/></th>
				<td><table>
						<s:select name="lamaNivasa.registrationStatus"
							list="registrationStatusList" listKey="listKey"
							listValue="listValue" 
							cssStyle="width:150px"/>
					</table></td>
				<th><s:text name="lamaNivasa.add.regNumber"/></th>
				<td><table>
						<s:textfield name="lamaNivasa.registrationNumber"
							cssStyle="width:120px"></s:textfield>
					</table></td>
				<th><s:text name="lamaNivasa.add.regDate"/></th>
				<td><table>
						<sj:datepicker id="registrationDate"
							name="lamaNivasa.registrationDate" changeMonth="true"
							changeYear="true" yearRange="1972:"
							value="%{lamaNivasa.registrationDate.time}" />
					</table></td>
			</tr>

			<tr>
				<th><s:text name="lamaNivasa.add.funding"/></th>
				<td><table>
						<s:select name="lamaNivasa.fundingMethod"
							list="maintenanceDonationList" listKey="listKey"
							listValue="listValue" 
							cssStyle="width:150px"/>
					</table></td>
				<th><s:text name="lamaNivasa.add.DFunding"/></th>
				<td colspan="3"><table>
						<s:select name="lamaNivasa.departmentFunding" list="yesNoList"
							listKey="listKey" listValue="listValue" />
					</table></td>
			</tr>
			<tr>

				<th><s:text name="lamaNivasa.add.noStaff"/></th>
				<td colspan="5"><table>
						<sj:spinner name="lamaNivasa.numberOfOfficers"
							id="numberOfOfficersSpinner" min="0" max="20" step="1"
							cssStyle="width:60px" required="true" mouseWheel="true"
							tooltip="Head count" />
					</table></td>
			</tr>
			<tr>
				<th></th>
				<td colspan="5"><table>
						<sj:submit key="lamaNivasa.add.submit.btn" targets="lamaNivasaResultDiv" />
					</table></td>

			</tr>

		</table>
	</s:form>

</div>
<script type="text/javascript" >
	$( document ).ready(function() {
		var did = '<s:property value="lamaNivasa.gramaSevakaDivision.divisionalSecretariat.district.id" />';
		var dsid = '<s:property value="lamaNivasa.gramaSevakaDivision.divisionalSecretariat.id" />';
		var didadd ='<s:property value="districtId" />';
		var dsidadd = '<s:property value="divisionalSecretariatId" />';
		
		if(did!=""){$("#district").val(did).change();}
		if(didadd!=""){$("#district").val(didadd).change();}		
		
		setTimeout(function(){
			if(did!=""){$("#dsId").val(dsid).change();}
			if(dsidadd!=""){$("#dsId").val(dsidadd).change();}		  
		}, 200);
	});
</script>  

