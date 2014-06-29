<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<div>
	<s:form action="search" namespace="/police" method="post">

		<table id="commonTable" class="greenTbl" cellpadding="0"
			cellspacing="0" style="width: 100%">
			<tr>
				<th colspan="6">Search</th>
			</tr>

			<tr>
				<td style="width: 200px">
					<table>
						<s:textfield name="policeStation.name" label="Name" />
					</table>
				</td>
				<td style="width: 100px;"></td>

				<td style="width: 100px; text-align: left">
					<table>
						<sj:submit value="SEARCH" targets="policeList" />
					</table>
				</td>
				<td
					style="text-align: right; padding-right: 10px; white-space: nowrap;">

					<s:url var="policeListUrl" action="list" namespace="/police" includeParams="none"></s:url> 
					<s:url var="policeAddUrl" action="add" namespace="/police" includeParams="none"></s:url> 
					
					<sj:a href="%{policeListUrl}" targets="policeList">View All</sj:a> | 
					<sj:a href="%{#policeAddUrl}" targets="policeList">Add</sj:a>

				</td>
			</tr>
		</table>
	</s:form>

</div>