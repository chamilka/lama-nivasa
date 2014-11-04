<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td6" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="settings.category.add.title"/></td>
	   </tr>
	  </table>
	</div>
	<hr />
	<div>
		<s:actionerror /> 
		<s:form id="formAddCategoryList" action="save" namespace="/genericList" method="post" >
		  <s:hidden name="genericList.id" />
		  <s:hidden name="operationMode"/> 
		  <s:select list="genericCategories" listKey="id" listValue="category" name="genericList.genericCategory.id" label="%{getText('settings.category.label.category')}"/>
		  <s:textfield name="genericList.listKey" label="%{getText('settings.category.label.list.key')}" cssStyle="width:250px" required="true" />
		  <s:textfield name="genericList.listValue" label="%{getText('settings.category.label.list.value')}" cssStyle="width:250px" required="true" />
		  <sj:spinner 
	    	name="genericList.sortOrder" 
	    	id="sortOrder" 
	    	min="0" 
	    	max="50" 
	    	step="1" 
	    	label="%{getText('settings.category.label.sort')}"
	    	cssStyle="width:60px"
	    	required="true"
	    	mouseWheel="true"
	    	tooltip="Range [0, 50]"/>
		 
		  <sj:submit value="%{getText('settings.category.save')}" targets="categoryDiv" cssStyle="margin-left:240px"/>
		</s:form>
	</div>