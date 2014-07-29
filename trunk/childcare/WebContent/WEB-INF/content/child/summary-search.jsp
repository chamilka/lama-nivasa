<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>

   <s:form action="summary-search" namespace="/child" method="post">

	 <table id="commonTable" class="blueTbl" cellpadding="0" cellspacing="0" style="width: 100%; text-align: left;">
	   <tr>
	   	<th colspan="6">Summary Criteria</th>
	   </tr>
			
	   <tr>
	   	<td>
	   	  <table>
	   	  	<tr>
	   	  		<td>
	   	  		 <table>
						<s:select list="ageLimitList" label="Age (less)" name="searchAge" listKey="listKey" listValue="listValue" headerKey="-1" headerValue="All ages"/>	   
			     	 </table>
	   	  		 </td>
	   	  		 <td>
				   	 <table>
						<s:select list="districtList" label="District" listKey="id" listValue="name" name="searchDistrict" headerKey="-1" headerValue="All districts"/>	   
			     	 </table>
				</td>
				<td>
				   	 <table>
						<sj:submit targets="childSummaryDiv" value="Filter" />	   
			     	 </table>
				</td>
	   	  	</tr>
	   	  </table>
		</td>
	  </table>
	</s:form>
</div>