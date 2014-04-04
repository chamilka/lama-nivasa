<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td6" style="width:5px">&nbsp;</td><td class="sub-title">Configuration</td>
	   </tr>
	  </table>
	</div>

	<hr />
	<s:url var="categoryListUrl" action="list" 
		namespace="/genericCategory" includeParams="none"></s:url>
		
	<div id="categoryListDive" style="margin: 10px 0 0 0">
		<sj:div href="%{#categoryListUrl}" cssStyle="margin: 10px 0 0 0" listenTopics="refreshCategoryList">
		    
		</sj:div>
	</div>
	  
	  
