<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<div>

	<div>
		<table style="width: 100%">
			<tr>
				<td class="td3" style="width: 5px">&nbsp;</td>
				<td class="sub-title"><s:text name="page.summary.title"/></td>
				<%-- <td>&nbsp;</td>
	   			<td style="align:right; width:100px"> <a href="#"><img src='<s:url value="/images/ms-excel.png" />' style="width:48px;height:48px" title="Download MS-Excel" /></a></td> --%>
			</tr>
		</table>
	</div>


	<div style="margin: 20px 0 0 20px; border: 1px dotted;">
		<table>
			<tr>
				<td><b><s:text name="page.summary.total.count"/> (<s:property
							value="childSummary.count.male + childSummary.count.female" /> )
				</b></td>
			</tr>
			<tr>
				<td style="padding-left: 25px">
					<table>
						<s:label name="childSummary.count.male" label="%{getText('page.summary.male')}" />
					</table>
				</td>
				<td>
					<table>
						<s:label name="childSummary.count.female" label="%{getText('page.summary.female')}" />
					</table>
				</td>
			</tr>
		</table>
	</div>


	<div align="center">
		<s:if test="ageView">
			<div style="margin: 20px 0 0 10px; float: left;">
				<table class="blueTbl">
					<tr>
						<th colspan="2"><s:text name="page.summary.age"/></th>
					</tr>
					<tr>
						<td colspan="2"><b><s:text name="page.summary.age.one"/> (<s:property
									value="childSummary.ageLessThanTwo.male + childSummary.ageLessThanTwo.female" />
								)
						</b></td>
					</tr>
					<tr>
						<td style="padding-left: 25px">
							<table>
								<s:label name="childSummary.ageLessThanTwo.male" label="%{getText('page.summary.male')}" />
							</table>
						</td>
						<td>
							<table>
								<s:label name="childSummary.ageLessThanTwo.female"
									label="%{getText('page.summary.female')}" />
							</table>
						</td>
					</tr>

					<tr>
						<td colspan="2"><b><s:text name="page.summary.age.two"/> (<s:property
									value="childSummary.ageLessThanFive.male + childSummary.ageLessThanFive.female" />
								)
						</b></td>
					</tr>
					<tr>
						<td style="padding-left: 25px">
							<table>
								<s:label name="childSummary.ageLessThanFive.male" label="%{getText('page.summary.male')}" />
							</table>
						</td>
						<td>
							<table>
								<s:label name="childSummary.ageLessThanFive.female"
									label="%{getText('page.summary.female')}" />
							</table>
						</td>
					</tr>
					<tr>
						<td colspan="2"><b><s:text name="page.summary.age.three"/> (<s:property
									value="childSummary.ageLessThanTen.male + childSummary.ageLessThanTen.female" />
								)
						</b></td>
					</tr>
					<tr>
						<td style="padding-left: 25px">
							<table>
								<s:label name="childSummary.ageLessThanTen.male" label="%{getText('page.summary.male')}" />
							</table>
						</td>
						<td>
							<table>
								<s:label name="childSummary.ageLessThanTen.female"
									label="%{getText('page.summary.female')}" />
							</table>
						</td>
					</tr>
					<tr>
						<td colspan="2"><b><s:text name="page.summary.age.four"/> (<s:property
									value="childSummary.ageLessThanEighteen.male + childSummary.ageLessThanEighteen.female" />
								)
						</b></td>
					</tr>
					<tr>
						<td style="padding-left: 25px">
							<table>
								<s:label name="childSummary.ageLessThanEighteen.male"
									label="%{getText('page.summary.male')}" />
							</table>
						</td>
						<td>
							<table>
								<s:label name="childSummary.ageLessThanEighteen.female"
									label="%{getText('page.summary.female')}" />
							</table>
						</td>
					</tr>
				</table>

			</div>
		</s:if>

		<div style="margin: 20px 0 0 10px; float: left;">
			<table class="blueTbl">
				<tr>
					<th class="td3" colspan="2"><s:text name="page.summary.religion"/></th>
				</tr>
				<tr>
					<td colspan="2"><b><s:text name="page.summary.buddhist"/> (<s:property
								value="childSummary.buddhist.male + childSummary.buddhist.female" />
							)
					</b></td>
				</tr>
				<tr>
					<td style="padding-left: 25px">
						<table>
							<s:label name="childSummary.buddhist.male" label="%{getText('page.summary.male')}" />
						</table>
					</td>
					<td>
						<table>
							<s:label name="childSummary.buddhist.female" label="%{getText('page.summary.female')}" />
						</table>
					</td>
				</tr>

				<tr>
					<td colspan="2"><b><s:text name="page.summary.catholic"/> (<s:property
								value="childSummary.romanCatholic.male + childSummary.romanCatholic.female" />
							)
					</b></td>
				</tr>
				<tr>
					<td style="padding-left: 25px">
						<table>
							<s:label name="childSummary.romanCatholic.male" label="%{getText('page.summary.male')}" />
						</table>
					</td>
					<td>
						<table>
							<s:label name="childSummary.romanCatholic.female" label="%{getText('page.summary.female')}" />
						</table>
					</td>
				</tr>
				 
				<tr>
					<td colspan="2"><b><s:text name="page.summary.christian"/> (<s:property
								value="childSummary.christianity.male + childSummary.christianity.female" />
							)
					</b></td>
				</tr>
				<tr>
					<td style="padding-left: 25px">
						<table>
							<s:label name="childSummary.christianity.male" label="%{getText('page.summary.male')}" />
						</table>
					</td>
					<td>
						<table>
							<s:label name="childSummary.christianity.female" label="%{getText('page.summary.female')}" />
						</table>
					</td>
				</tr> 

				<tr>
					<td colspan="2"><b><s:text name="page.summary.hindu"/> (<s:property
								value="childSummary.hinduism.male + childSummary.hinduism.female" />
							)
					</b></td>
				</tr>
				<tr>
					<td style="padding-left: 25px">
						<table>
							<s:label name="childSummary.hinduism.male" label="%{getText('page.summary.male')}" />
						</table>
					</td>
					<td>
						<table>
							<s:label name="childSummary.hinduism.female" label="%{getText('page.summary.female')}" />
						</table>
					</td>
				</tr>

				<tr>
					<td colspan="2"><b><s:text name="page.summary.islam"/> (<s:property
								value="childSummary.islam.male + childSummary.islam.female" />
							)
					</b></td>
				</tr>
				<tr>
					<td style="padding-left: 25px">
						<table>
							<s:label name="childSummary.islam.male" label="%{getText('page.summary.male')}" />
						</table>
					</td>
					<td>
						<table>
							<s:label name="childSummary.islam.female" label="%{getText('page.summary.female')}" />
						</table>
					</td>
				</tr>

				<tr>
					<td colspan="2"><b><s:text name="page.summary.other.religions"/> (<s:property
								value="childSummary.religionOther.male + childSummary.religionOther.female" />
							)
					</b></td>
				</tr>
				<tr>
					<td style="padding-left: 25px">
						<table>
							<s:label name="childSummary.religionOther.male" label="%{getText('page.summary.male')}" />
						</table>
					</td>
					<td>
						<table>
							<s:label name="childSummary.religionOther.female" label="%{getText('page.summary.female')}" />
						</table>
					</td>
				</tr>
			</table>
		</div>

		<div style="margin: 20px 0 0 10px; float: left;">
			<table class="blueTbl">
				<tr>
					<th colspan="2"><s:text name="page.summary.race"/></th>
				</tr>
				<tr>
					<td colspan="2"><b><s:text name="page.summary.sinhala"/> (<s:property
								value="childSummary.sinhala.male + childSummary.sinhala.female" />
							)
					</b></td>
				</tr>
				<tr>
					<td style="padding-left: 25px">
						<table>
							<s:label name="childSummary.sinhala.male" label="%{getText('page.summary.male')}" />
						</table>
					</td>
					<td>
						<table>
							<s:label name="childSummary.sinhala.female" label="%{getText('page.summary.female')}" />
						</table>
					</td>
				</tr>

				<tr>
					<td colspan="2"><b><s:text name="page.summary.tamil.sri"/> (<s:property
								value="childSummary.srilankanTamil.male + childSummary.srilankanTamil.female" />
							)
					</b></td>
				</tr>
				<tr>
					<td style="padding-left: 25px">
						<table>
							<s:label name="childSummary.srilankanTamil.male" label="%{getText('page.summary.male')}" />
						</table>
					</td>
					<td>
						<table>
							<s:label name="childSummary.srilankanTamil.female" label="%{getText('page.summary.female')}" />
						</table>
					</td>
				</tr>

				<tr>
					<td colspan="2"><b><s:text name="page.summary.tamil.indian"/> (<s:property
								value="childSummary.indianTamil.male + childSummary.indianTamil.female" />
							)
					</b></td>
				</tr>
				<tr>
					<td style="padding-left: 25px">
						<table>
							<s:label name="childSummary.indianTamil.male" label="%{getText('page.summary.male')}" />
						</table>
					</td>
					<td>
						<table>
							<s:label name="childSummary.indianTamil.female" label="%{getText('page.summary.female')}" />
						</table>
					</td>
				</tr>

				<tr>
					<td colspan="2"><b><s:text name="page.summary.muslim"/> (<s:property
								value="childSummary.muslim.male + childSummary.muslim.female" />
							)
					</b></td>
				</tr>
				<tr>
					<td style="padding-left: 25px">
						<table>
							<s:label name="childSummary.muslim.male" label="%{getText('page.summary.male')}" />
						</table>
					</td>
					<td>
						<table>
							<s:label name="childSummary.muslim.female" label="%{getText('page.summary.female')}" />
						</table>
					</td>
				</tr>

				<tr>
					<td colspan="2"><b><s:text name="page.summary.other.races"/> (<s:property
								value="childSummary.raceOther.male + childSummary.raceOther.female" />
							)
					</b></td>
				</tr>
				<tr>
					<td style="padding-left: 25px">
						<table>
							<s:label name="childSummary.raceOther.male" label="%{getText('page.summary.male')}" />
						</table>
					</td>
					<td>
						<table>
							<s:label name="childSummary.raceOther.female" label="%{getText('page.summary.female')}" />
						</table>
					</td>
				</tr>
			</table>
		</div>

		<div style="margin: 20px 0 0 10px; float: left;">
			<table class="blueTbl">
				<tr>
					<th colspan="2"><s:text name="page.summary.parents"/></th>
				</tr>
				<tr>
					<td colspan="2"><b><s:text name="page.summary.both.parents"/> (<s:property
								value="childSummary.parentBoth.male + childSummary.parentBoth.female" />
							)
					</b></td>
				</tr>
				<tr>
					<td style="padding-left: 25px">
						<table>
							<s:label name="childSummary.parentBoth.male" label="%{getText('page.summary.male')}" />
						</table>
					</td>
					<td>
						<table>
							<s:label name="childSummary.parentBoth.female" label="%{getText('page.summary.female')}" />
						</table>
					</td>
				</tr>

				<tr>
					<td colspan="2"><b><s:text name="page.summary.mother"/> (<s:property
								value="childSummary.parentMotherOnly.male + childSummary.parentMotherOnly.female" />
							)
					</b></td>
				</tr>
				<tr>
					<td style="padding-left: 25px">
						<table>
							<s:label name="childSummary.parentMotherOnly.male" label="%{getText('page.summary.male')}" />
						</table>
					</td>
					<td>
						<table>
							<s:label name="childSummary.parentMotherOnly.female"
								label="%{getText('page.summary.female')}" />
						</table>
					</td>
				</tr>

				<tr>
					<td colspan="2"><b><s:text name="page.summary.father"/> (<s:property
								value="childSummary.parentFatherOnly.male + childSummary.parentFatherOnly.female" />
							)
					</b></td>
				</tr>
				<tr>
					<td style="padding-left: 25px">
						<table>
							<s:label name="childSummary.parentFatherOnly.male" label="%{getText('page.summary.male')}" />
						</table>
					</td>
					<td>
						<table>
							<s:label name="childSummary.parentFatherOnly.female"
								label="%{getText('page.summary.female')}" />
						</table>
					</td>
				</tr>

				<tr>
					<td colspan="2"><b><s:text name="page.summary.no.parents"/> (<s:property
								value="childSummary.parentNone.male + childSummary.parentNone.female" />
							)
					</b></td>
				</tr>
				<tr>
					<td style="padding-left: 25px">
						<table>
							<s:label name="childSummary.parentNone.male" label="%{getText('page.summary.male')}" />
						</table>
					</td>
					<td>
						<table>
							<s:label name="childSummary.parentNone.female" label="%{getText('page.summary.female')}" />
						</table>
					</td>
				</tr>
			</table>
		</div>


		<div style="margin: 20px 0 0 10px; float: left;">
			<table class="blueTbl">
				<tr>
					<th colspan="2"><s:text name="page.summary.intakes"/></th>
				</tr>
				<tr>
					<td colspan="2"><b><s:text name="page.summary.courts"/> (<s:property
								value="childSummary.intakeCourt.male + childSummary.intakeCourt.female" />
							)
					</b></td>
				</tr>
				<tr>
					<td style="padding-left: 25px">
						<table>
							<s:label name="childSummary.intakeCourt.male" label="%{getText('page.summary.male')}"/>
						</table>
					</td>
					<td>
						<table>
							<s:label name="childSummary.intakeCourt.female" label="%{getText('page.summary.female')}" />
						</table>
					</td>
				</tr>

				<tr>
					<td colspan="2"><b><s:text name="page.summary.dept"/> (<s:property
								value="childSummary.intakeDepartment.male + childSummary.intakeDepartment.female" />
							)
					</b></td>
				</tr>
				<tr>
					<td style="padding-left: 25px">
						<table>
							<s:label name="childSummary.intakeDepartment.male" label="%{getText('page.summary.male')}" />
						</table>
					</td>
					<td>
						<table>
							<s:label name="childSummary.intakeDepartment.female"
								label="%{getText('page.summary.female')}" />
						</table>
					</td>
				</tr>

				<tr>
					<td colspan="2"><b><s:text name="page.summary.direct"/> (<s:property
								value="childSummary.intakeDirect.male + childSummary.intakeDirect.female" />
							)
					</b></td>
				</tr>
				<tr>
					<td style="padding-left: 25px">
						<table>
							<s:label name="childSummary.intakeDirect.male" label="%{getText('page.summary.male')}" />
						</table>
					</td>
					<td>
						<table>
							<s:label name="childSummary.intakeDirect.female" label="%{getText('page.summary.female')}" />
						</table>
					</td>
				</tr>

				<tr>
					<td colspan="2"><b><s:text name="page.summary.parent"/> (<s:property
								value="childSummary.intakeParent.male + childSummary.intakeParent.female" />
							)
					</b></td>
				</tr>
				<tr>
					<td style="padding-left: 25px">
						<table>
							<s:label name="childSummary.intakeParent.male" label="%{getText('page.summary.male')}" />
						</table>
					</td>
					<td>
						<table>
							<s:label name="childSummary.intakeParent.female" label="%{getText('page.summary.female')}" />
						</table>
					</td>
				</tr>
			</table>
		</div>

		<div style="clear: both" />
	</div>
</div>


