<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<div>
	
    <div class="sub-title">Add Police Station</div><br />
    
    <s:form action="save" namespace="/police" method="post">
		<table id="commonTable" class="greenTbl" width="100%">
		<s:actionerror/>
		<s:hidden name="policeStation.id" />
		<s:hidden name="operationMode"/>
	<%-- 	<s:hidden name="addType" value="%{addType}"/> --%>
		
			<tr>
				<th style="width: 200px">Name</th>
				<td colspan="5"><table><s:textfield name="policeStation.name" cssStyle="width:350px"/></table>
				</td>
			</tr>
			
			<tr>
				<th style="width: 200px">Email</th>
				<td colspan="5"><table><s:textfield name="policeStation.email" cssStyle="width:350px" /></table>
				</td>
			</tr>
			
			<tr>
				<th>Telephone</th>
				<td colspan="5"><table><s:textfield name="policeStation.telephone" cssStyle="width:200px"/></table></td>
			</tr>
			
			<tr>
				<th>Fax</th>
				<td colspan="5"><table><s:textfield name="policeStation.fax" cssStyle="width:200px"/></table></td>
			</tr>
	
			<tr>
				<th>Address</th>
				<td colspan="5"><table><s:textfield name="policeStation.address" cssStyle="width:450px"/></table>
				</td>
			</tr>

			<tr>
				<th valign="top">Comment</th>
				<td colspan="5"><table><s:textarea name="policeStation.comment" cssStyle="width:600px;height:30px" /></table>
				</td>
			</tr>
			
			<tr>
				<th valign="top">&nbsp;</th>
				<td colspan="5"><table><sj:submit targets="policeList" /> </table>
				</td>
			</tr>

		</table>
	</s:form>
</div>


<!-- <div id="childDetailViewDiv" style="margin: 20px 0 0 0px"></div> -->
