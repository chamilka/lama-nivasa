<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td6" style="width:10px">&nbsp;</td><td>View Category</td>
	   </tr>
	  </table>
	</div>
	
	<div>
		<s:label name="genericCategory.category" label="Name"  /> <br />
		<s:label name="genericCategory.sortOrder" label="Sort Order" /> <br />
		<s:label name="genericCategory.updateDateTime.time" label="Sort Order" /> <br />
		<span class="tdlabel">Insert date : <s:date name="genericCategory.insertDateTime.time" format="yyyy/MM/dd" /> </span><br /> 
		<span class="tdlabel">Update date : <s:date name="genericCategory.updateDateTime.time" format="yyyy/MM/dd" /></span>
	</div>

	