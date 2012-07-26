<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table id="commonTable" class="greenTbl" width="100%">
	   <tr>
	   		<s:url var="categoryAddUrl" action="add" 
				namespace="/genericCategory" includeParams="none"></s:url>
				
			<s:url var="configurationRefreshUrl" action="frame" 
				namespace="/genericCategory" includeParams="none"></s:url>
				
	   		<td class="td3" style="width:10px">&nbsp;</td><td class="sub-title">Category List</td>
	   			<td><sj:a href="%{#categoryAddUrl}" targets="categoryDiv"><input type="button" value="Add New" style="height: 22px"/></sj:a></td>
	   			<td><sj:a href="%{#configurationRefreshUrl}" targets="content"><input type="button" value="Refresh" style="height: 22px"/></sj:a></td>
	   </tr>
	  </table>
	</div>
	<hr />
	<div>
	
	  <table style="margin-top: 10px" width="100%" id="commonTable" class="greenTbl" cellpadding="2px" cellspacing="2px">
	  	<tr>
	  		<th>Category Name</th><th>Sort Order</th><th>&nbsp;</th>
	  	</tr>
		<s:iterator value="genericCategoryList" status="rowIndex">
			<tr>
			 <td>
			 	<s:url var="categoryViewUrl" action="view" namespace="/genericCategory" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{categoryViewUrl}" targets="categoryDiv"><s:property value="category"/></sj:a>
			 </td>
			 <td><s:property value="sortOrder"/></td>
			 <td>
			 	<s:url var="categoryListViewUrl" action="list" namespace="/genericList" includeParams="none">
			 		<s:param name="generericCategoryId" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{categoryListViewUrl}" targets="categoryDiv">List</sj:a>
				 | 
			 	<s:url var="categoryEditUrl" action="edit" namespace="/genericCategory" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{categoryEditUrl}" targets="categoryDiv">Edit</sj:a>
				 |
			 	<s:url var="categoryDeleteUrl" action="delete" namespace="/genericCategory" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{categoryDeleteUrl}" targets="categoryListDive">Delete</sj:a>
			 </td>
		</s:iterator>
	</table>
	</div>
	
	
		
	<div id="categoryDiv" style="margin: 20px 0 0 0">
		<sj:div href="%{#categoryAddUrl}">
		    
		</sj:div>
	</div>	
