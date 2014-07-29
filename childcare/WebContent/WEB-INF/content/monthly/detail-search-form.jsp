<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<div>
	
	<div>
		<table style="width: 100%">
			<tr>
				<td class="td3" style="width: 5px">&nbsp;</td>
				<td class="sub-title">Detail Search</td>
				<%-- <td>&nbsp;</td>
	   			<td style="align:right; width:100px"> <a href="#"><img src='<s:url value="/images/ms-excel.png" />' style="width:48px;height:48px" title="Download MS-Excel" /></a></td> --%>
			</tr>
		</table>
	</div>


	<div style="margin: 20px 0 0 0px; border: 1px;">
		<s:form action="detail-search-result" namespace="/report"
			method="post">
			 <table id="commonTable" class="blueTbl" cellpadding="0" cellspacing="0" style="width: 100%; text-align: left;">
			   <tr>
			   	<th colspan="6">Summary Criteria</th>
			   </tr>
				<tr>
					<%-- <td>
	 	     <table>
			  	<s:select headerKey="-1" headerValue="" label="Province"
		       			  list="#{'Central':'Central', 'Western':'Western', 'Southern':'Southern'}"></s:select>
	       	 </table>
	       </td>
	 	   <td>
	 	     <table> 			  
	       		<s:select headerKey="-1" headerValue="" label="District"
	       			  list="#{'Kandy':'Kandy', 'Matale':'Matale', 'Nuwara Eliya':'Nuwara Eliya', 'Colombo':'Colombo', 'Gampaha':'Gampaha'}"></s:select>
		     </table>
	       </td> --%>
					<td style="width: 100px">
						<table>
							<s:select label="Year" name="year" list="yearList" headerKey="0" headerValue="All Years"
								listKey="listKey" listValue="listValue" />
						</table>
					</td>

					<td style="width: 100px">
						<table>
							<s:select label="Month" name="month" list="monthList" headerKey="" headerValue="All Months"
								listKey="listKey" listValue="listValue" />
						</table>
					</td>
					<td><table><sj:submit value="SEARCH" targets="monthlyDetailDiv" /></table></td>
				</tr>
			</table>
		</s:form>
	</div>

	<div id="monthlyDetailDiv"></div>

	<div style="clear: both"></div>


</div>

