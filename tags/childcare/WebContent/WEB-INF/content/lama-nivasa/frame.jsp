<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<s:if test="!user">
		<div>
		  <table>
		   <tr>
		   		<td class="td1" style="width:5px">&nbsp;</td><td class="sub-title">Chidren's Home</td>
		   </tr>
		  </table>
		</div>

		<s:url var="lamaNivasaSearchUrl" action="search-form" 
			namespace="/lamaNivasa" includeParams="none"></s:url>
		<sj:div href="%{#lamaNivasaSearchUrl}">
		    
		</sj:div>
	</s:if>
	
	<s:url var="lamaNivasaListUrl" action="list" 
		namespace="/lamaNivasa" includeParams="none"></s:url>
  
	
	<div id="lamaNivasaResultDiv" style="margin-top: 10px; min-height: 250px">
		<sj:div href="%{#lamaNivasaListUrl}">
		    
		</sj:div>
	</div>	  
