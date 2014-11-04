<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td6" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="settings.category.view.title"/></td>
	   </tr>
	  </table>
	</div>
	
	<div>
		<s:label name="genericCategory.category" label="%{getText('settings.category.view.name')}"  /> <br />
		<s:label name="genericCategory.sortOrder" label="%{getText('settings.category.view.order')}" /> <br />
		<s:label name="genericCategory.updateDateTime.time" label="%{getText('settings.category.view.order')}" /> <br />
		<span class="tdlabel"><s:text name="settings.category.view.insert.date"/> <s:date name="genericCategory.insertDateTime.time" format="yyyy/MM/dd" /> </span><br /> 
		<span class="tdlabel"><s:text name="settings.category.view.update"/><s:date name="genericCategory.updateDateTime.time" format="yyyy/MM/dd" /></span>
	</div>

	