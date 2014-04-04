<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td6" style="width:5px">&nbsp;</td><td class="sub-title">View List Record</td>
	   </tr>
	  </table>
	</div>
	
	<div>
		<s:label name="genericList.genericCategory.category" label="Category Name"  /> <br />
		<s:label name="genericList.listKey" label="List Key"  /> <br />
		<s:label name="genericList.listValue" label="List Value"  /> <br />
		<s:label name="genericList.sortOrder" label="Sort Order" /> <br />
		<span class="tdlabel">Insert date : <s:date name="genericList.insertDatetime" format="yyyy/MM/dd" /> </span><br />
		<span class="tdlabel">Update date : <s:date name="genericList.updateDatetime" format="yyyy/MM/dd" /></span> <br />
	</div>

	