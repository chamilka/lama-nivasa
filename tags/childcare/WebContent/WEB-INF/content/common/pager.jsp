<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<table id="commonTable">
	<tr>
	    <td>
	    	<s:property value="%{pager.start + 1}"/>
			To
			<s:if test="pager.total > (pager.start + pager.size)" >
				<s:property value="%{pager.start + pager.size}"/>
			</s:if>
			<s:else>
				<s:property value="pager.total"/>
			</s:else>
			Of
			<s:property value="pager.total"/>
	    </td>
		<td>
			<s:if test="pager.firstEnable == true">
				<s:url var="firstUrl" namespace="%{pager.namespace}" action="%{pager.actionName}" escapeAmp="false" >
				    <s:param name="targetDiv" value="%{targetDiv}" />
					<s:param name="pageStart" value="0"/>
				</s:url>

				<sj:a href="%{#firstUrl}" targets="%{pager.targetDiv}"><img src="<s:url value="/images/firstOn.png" includeParams="none"/>" /></sj:a>
			</s:if>
			<s:else>
				<img src="<s:url value="/images/firstOff.png" includeParams="none"/>" />
			</s:else>
		</td>
		<td>
			<s:if test="pager.previousEnable == true">
				<s:url var="previousUrl" namespace="%{pager.namespace}" action="%{pager.actionName}" escapeAmp="false" >
				    <s:param name="targetDiv" value="%{targetDiv}" />
					<s:param name="pageStart" value="%{pager.start - pager.size}"/>
				</s:url>

				<sj:a href="%{#previousUrl}" targets="%{pager.targetDiv}"><img src="<s:url value="/images/previousOn.png" includeParams="none"/>" /></sj:a>
			</s:if>
			<s:else>
				<img src="<s:url value="/images/previousOff.png" includeParams="none"/>" />
			</s:else>
		</td>
		<td>
		    <s:if test="pager.nextEnable == true">
				<s:url var="nextUrl" namespace="%{pager.namespace}" action="%{pager.actionName}" escapeAmp="false">
				    <s:param name="targetDiv" value="%{targetDiv}" />
					<s:param name="pageStart" value="%{pager.start + pager.size}"/>
				</s:url>

				<sj:a href="%{#nextUrl}" targets="%{pager.targetDiv}"><img src="<s:url value="/images/nextOn.png" includeParams="none"/>" /></sj:a>
			</s:if>
			<s:else>
				<img src="<s:url value="/images/nextOff.png" includeParams="none"/>" />
			</s:else>
		</td>

		<td>
		    <s:if test="pager.lastEnable == true">
				<s:url var="lastUrl" namespace="%{pager.namespace}" action="%{pager.actionName}" escapeAmp="false" >
					<s:param name="targetDiv" value="%{targetDiv}" />
					<s:param name="pageStart" value="%{pager.total - (pager.size)}"/>
				</s:url>

				<sj:a href="%{#lastUrl}" targets="%{pager.targetDiv}"><img src="<s:url value="/images/lastOn.png" includeParams="none"/>" /></sj:a>
			</s:if>
			<s:else>
				<img src="<s:url value="/images/lastOff.png" includeParams="none"/>" />
			</s:else>
		</td>
	</tr>
</table>



