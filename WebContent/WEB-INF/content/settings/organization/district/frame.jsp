<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td6" style="width:5px">&nbsp;</td><td class="sub-title">District</td>
	   </tr>
	  </table>
	</div>

	<hr/>
	<s:url var="districtListUrl" action="list" 
		namespace="/district" includeParams="none">
	</s:url>
		
	<div id="districtListDiv" style="margin: 20px 0 0 50px">
		<sj:div href="%{#districtListUrl}" cssStyle="margin: 10px 0 0 50px">
		    
		</sj:div>
	</div>
	  
	  
