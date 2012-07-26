<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>


<div>
	  	
			<%-- <s:iterator value="list" status="districtRowIndex">
			<ul>
			
				<s:url var="dsURL" action="divitional-secretariat-list" namespace="/district">
				<s:param name="id" value="id"></s:param>
					</s:url>
						<sj:a href="%{#dsURL}" targets="districtLIstDiv">
					<s:property value="name"/>
					
						</sj:a>--%>
			<s:property value="name"/>
				<s:iterator value="devisionalSecretariats" status="divisionalSecretariatRowIndex">
					<li><s:property value="name"/> </li>
				</s:iterator>
			
			</ul>
			
			
			<%-- <s:iterator value="dsList">
				<ul>
					<s:property value="name"/>
				</ul>
			</s:iterator> --%>
			
			
			
		
	</div>

<%-- <div>
	<s:iterator value="dsList"  status="divisionalSecretariatRowIndex">
		<s:property value="#divisionalSecretariatRowIndex.index + 1" /> <s:property value="name" /> <br />
	</s:iterator>

</div>--%>