<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>


	<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="page.summary-frame.title"/></td>
	   </tr>
	  </table>
	</div>
	<hr />
	
	<s:url var="childSummaryUrl" action="summary" namespace="/child" includeParams="none"></s:url>
	<s:url var="summarySearchUrl" action="summary-search-form" namespace="/child" includeParams="none"></s:url>
	
	<sj:div href="%{#summarySearchUrl}">

	</sj:div>


	<div id="childSummaryDiv" style="margin-top: 10px;min-height: 250px">
		<sj:div href="%{#childSummaryUrl}">

		</sj:div>
	</div>
