<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>


<div>
	<table>
		<tr>
			<td class="td1" style="width: 5px">&nbsp;</td>
			<td class="sub-title">Add Chidren's Home</td>
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
				<th>Name<span class="required">*</span></th>
				<td colspan="5"><table>
						<s:textfield name="lamaNivasa.name" cssStyle="width:450px"
							required="true" maxlength="250"/>
					</table></td>
			</tr>
			<tr>
				<th>Date of Establishment</th>
				<td colspan="5"><table>
						<sj:datepicker id="dateOfEstablished"
							name="lamaNivasa.dateOfEstablishment" changeMonth="true"
							changeYear="true" yearRange="1972:"
							value="%{lamaNivasa.dateOfEstablishment.time}" />

					</table></td>
			</tr>
			<tr>
				<th>Category<span class="required">*</span></th>
				<td><table>
						<s:select name="lamaNivasa.category" list="lamaNivasaTypeList"
							listKey="listKey" listValue="listValue" />
					</table></td>
				<th>Religion</th>
				<td colspan="3"><table>
						<s:select name="lamaNivasa.religion" list="religionList"
							listKey="listKey" listValue="listValue" />
					</table></td>
			</tr>

			<s:if test="!user">
				<tr>
					<th>District: <s:property
							value="lamaNivasa.gramaSevakaDivision.divisionalSecretariat.district.name" />
					</th>
					<td colspan="5">
						<table>
							<sj:select href="%{districtDefaultJsonUrl}" id="district"
								onChangeTopics="reloadsecondlist" name="districtId"
								list="districtList" listKey="id" listValue="name"
								emptyOption="false" headerKey="-1"
								headerValue="Please Select a District"
								title="%{lamaNivasa.gramaSevakaDivision.divisionalSecretariat.district.name}" />
						</table>
					</td>
				</tr>
				<tr>
					<th>Div. Secretariat</th>
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
					<th>Grama Niladari Division :<span class="required">*</span></th>
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
					<th>Unit:<span class="required">*</span></th>
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

					<th>Probation Officer</th>
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

					<th>Div. Secretariat</th>
					<td><s:property
							value="lamaNivasa.gramaSevakaDivision.divisionalSecretariat.name" /></td>

					<th>Grama Niladari Division</th>
					<td><s:property value="lamaNivasa.gramaSevakaDivision.name" /></td>
				</tr>

			</s:else>
			<tr>
				<th>Address<span class="required">*</span></th>
				<td colspan="5"><table>
						<s:textfield name="lamaNivasa.address" cssStyle="width:500px"
							required="true" maxlength="250" />
					</table></td>
			</tr>
			<tr>
				<th>Telephone<span class="required">*</span></th>
				<td><table>
						<s:textfield name="lamaNivasa.telephone" cssStyle="width:150px"
							required="true" maxlength="15" />
					</table></td>
				<th>Fax</th>
				<td><table>
						<s:textfield name="lamaNivasa.fax" cssStyle="width:150px" maxlength="15"/>
					</table></td>
				<th>Email</th>
				<td><table>
						<s:textfield name="lamaNivasa.email" cssStyle="width:200px" maxlength="60"/>
					</table></td>
			</tr>
			<tr>
				<th>Max. No. of children</th>
				<td><table>
						<sj:spinner name="lamaNivasa.numberOfChildren"
							id="numberOfChildrenSpinner" min="0" step="1" max="999"
							cssStyle="width:60px" required="true" mouseWheel="true"
							tooltip="Head count" />
					</table></td>
				<th>Min Age</th>
				<td><table>
						<sj:spinner name="lamaNivasa.minAge" id="minAgeSpinner" min="0"
							max="30" step="1" cssStyle="width:60px" required="true"
							mouseWheel="true" tooltip="Minimum Age in Years" />
					</table></td>
				<th>Max Age</th>
				<td><table>
						<sj:spinner name="lamaNivasa.maxAge" id="maxAgeSpinner" Min="5"
							Max="30" step="1" cssStyle="width:60px" required="true"
							mouseWheel="true" tooltip="Maximum Age in Years" />
					</table></td>
			</tr>

			<tr>
				<th>Registration</th>
				<td><table>
						<s:select name="lamaNivasa.registrationStatus"
							list="registrationStatusList" listKey="listKey"
							listValue="listValue" 
							cssStyle="width:150px"/>
					</table></td>
				<th>Reg. Number</th>
				<td><table>
						<s:textfield name="lamaNivasa.registrationNumber"
							cssStyle="width:120px"></s:textfield>
					</table></td>
				<th>Reg. Date</th>
				<td><table>
						<sj:datepicker id="registrationDate"
							name="lamaNivasa.registrationDate" changeMonth="true"
							changeYear="true" yearRange="1972:"
							value="%{lamaNivasa.registrationDate.time}" />
					</table></td>
			</tr>

			<tr>
				<th>Funding</th>
				<td><table>
						<s:select name="lamaNivasa.fundingMethod"
							list="maintenanceDonationList" listKey="listKey"
							listValue="listValue" 
							cssStyle="width:150px"/>
					</table></td>
				<th>Dept Funding</th>
				<td colspan="3"><table>
						<s:select name="lamaNivasa.departmentFunding" list="yesNoList"
							listKey="listKey" listValue="listValue" />
					</table></td>
			</tr>
			<tr>

				<th>No. of Staffs</th>
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
						<sj:submit value="Submit" targets="lamaNivasaResultDiv" />
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