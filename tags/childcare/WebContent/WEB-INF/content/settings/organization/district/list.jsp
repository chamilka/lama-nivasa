<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>	  	
			<s:iterator value="list" status="districtRowIndex">
			<ul>
			
				<s:url var="dsURL" action="divitional-secretariat-list" namespace="/divisional-secretariat">
					<s:param name="districtId" value="id"></s:param>
				</s:url>
					<sj:a href="%{#dsURL}" targets="districtListDiv">
					<s:property value="name"/>
					
					</sj:a>
			</ul>
			</s:iterator>							
	</div>
