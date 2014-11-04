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
		<s:form id="formAddCategory" action="save" namespace="/genericCategory" method="post" >
		  <s:hidden name="genericCategory.id" />
		  <s:hidden name="operationMode"/> 
		  <s:textfield name="genericCategory.category" label="%{getText('settings.category.add.new.category.name')}" cssStyle="width:250px" required="true" />
		  <sj:spinner 
	    	name="genericCategory.sortOrder" 
	    	id="sortOrder" 
	    	min="0" 
	    	max="50" 
	    	step="1" 
	    	label="%{getText('settings.category.add.new.category.order')}"
	    	cssStyle="width:60px"
	    	required="true"
	    	mouseWheel="true"
	    	tooltip="Range [0, 50]"/>
		 
		  <sj:submit value="%{getText('settings.category.add.new.category.submit')}" targets="categoryDiv" cssStyle="margin-left:100px" onSuccessTopics="refreshCategoryList"/>
		</s:form>
	</div>