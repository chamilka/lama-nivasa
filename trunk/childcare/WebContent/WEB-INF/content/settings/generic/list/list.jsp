<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
	<div>
	  <table>
	   <tr>
	   		<td class="td6" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="settings.category.list.title"/></td>
	   </tr>
	  </table>
	</div>
	<hr />
	<s:text name="settings.category.list.category"/> <span class="sub-title"><s:property value="genericLists[0].genericCategory.category"/></span>
	<div>
	  <table style="margin-top: 10px" width="100%" id="commonTable" class="greenTbl">
	  	<tr>
	  		<th><s:text name="settings.category.label.list.key"/></th><th><s:text name="settings.category.label.list.value"/></th><th><s:text name="settings.category.label.sort"/></th><th>&nbsp;</th>
	  	</tr>
		<s:iterator value="genericLists" status="rowIndex">
			<tr>
			 <td>
			 	<s:url var="categoryListViewUrl" action="view" namespace="/genericList" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{categoryListViewUrl}" targets="categoryListDiv"><s:property value="listKey"/></sj:a>
			 </td>
			 <td><s:property value="listValue"/></td>
			 <td><s:property value="sortOrder"/></td>
			
			 <td>
			 	<s:url var="categoryListEditUrl" action="edit" namespace="/genericList" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{categoryListEditUrl}" targets="categoryListDiv"><s:text name="settings.category.list.edit"/></sj:a>
				 | 
			 	<s:url var="categoryListDeleteUrl" action="delete" namespace="/genericList" escapeAmp="false" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 		<s:param name="generericCategoryId" value="genericCategory.id"></s:param>
			 	</s:url>
			 	<sj:a href="%{categoryListDeleteUrl}" targets="categoryDiv" onClickTopics="/confirmDelete"><s:text name="settings.category.list.delete"/></sj:a>
			 </td>
		</s:iterator>
	</table>
	</div>
	
	<s:url var="categoryListAddUrl" action="add" 
		namespace="/genericList" includeParams="none">
		<s:param name="generericCategoryId" value="generericCategoryId"></s:param>
		</s:url>
		
	<div id="categoryListDiv" style="margin: 20px 0 0 50px">
		<sj:div href="%{#categoryListAddUrl}">
		    
		</sj:div>
	</div>	
