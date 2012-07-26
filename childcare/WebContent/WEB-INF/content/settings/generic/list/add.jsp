<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td6" style="width:10px">&nbsp;</td><td>Add New Category</td>
	   </tr>
	  </table>
	</div>
	<hr />
	<div>
		<s:actionerror /> 
		<s:form id="formAddCategoryList" action="save" namespace="/genericList" method="post" >
		  <s:hidden name="genericList.id" />
		  <s:hidden name="operationMode"/> 
		  <s:select list="genericCategories" listKey="id" listValue="category" name="genericList.genericCategory.id" label="Category"/>
		  <s:textfield name="genericList.listKey" label="List Key" cssStyle="width:250px" required="true" />
		  <s:textfield name="genericList.listValue" label="List Value" cssStyle="width:250px" required="true" />
		  <sj:spinner 
	    	name="genericList.sortOrder" 
	    	id="sortOrder" 
	    	min="0" 
	    	max="50" 
	    	step="1" 
	    	label="Sort Order"
	    	cssStyle="width:60px"
	    	required="true"
	    	mouseWheel="true"
	    	tooltip="Range [0, 50]"/>
		 
		  <sj:submit value="Save" targets="categoryDiv" cssStyle="margin-left:240px"/>
		</s:form>
	</div>