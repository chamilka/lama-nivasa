<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td1" style="width:5px">&nbsp;</td><td>Lama Nivasa</td>
	   </tr>
	  </table>
	</div>

	<s:url var="lamaNivasaSearchUrl" action="search-form" 
		namespace="/lamaNivasa" includeParams="none"></s:url>
		
	<s:url var="lamaNivasaListUrl" action="list" 
		namespace="/lamaNivasa" includeParams="none"></s:url>
  
	<sj:div href="%{#lamaNivasaSearchUrl}">
	    
	</sj:div>
	
	
	<div id="lamaNivasaResultDiv">
		<sj:div href="%{#lamaNivasaListUrl}">
		    
		</sj:div>
	</div>	  
