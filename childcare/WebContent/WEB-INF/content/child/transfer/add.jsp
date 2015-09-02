<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<%@ taglib prefix="sjr" uri="/struts-jquery-richtext-tags"%>

	<div>
	  <table>
	   <tr>
	   		<td class="td1" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="page.transfer.frame.new.transfer"/></td>
	   </tr>
	  </table>
	</div>
	<div>

	<hr />

	<s:form action="save" namespace="/childTransfer" method="post" id="childTransferForm" cssStyle="margin: 20px 0 0 50px" >

    <s:actionerror/>
    <s:hidden name="childTransfer.id" />
	<s:hidden name="childTransfer.child.id" value="%{childId}"/>
	<s:hidden name="operationMode"/>
	
	  <s:textfield name="childTransfer.fromLamaNivasaId.name" key="%{child.lamaNivasa.Name}" label="%{getText('page.transfer.add.fromLamaNivasaId')}" value="%{child.lamaNivasa.Name}" disabled="true" cssStyle="width:350px" required="true" />
	  <sj:autocompleter
			  		id="childTransfer.toLamaNivasaId.id"
		     		name="childTransfer.toLamaNivasaId.id"
		     		label="%{getText('page.transfer.add.toLamaNivasaId')}"
		     		list="%{lamaNivasaList}"
		     		listKey="id" listValue="name"
		     		required="true"
		     		cssStyle="width:350px"
     	/>
  			
		<s:textarea name="childTransfer.reason" label="%{getText('page.transfer.add.reason')}" cssStyle="width:350px;height:80px"></s:textarea>
	 
	  <tr>
	  <td>&nbsp;
	  </td>
	   <td >
	     <table>
	  		<sj:submit value="%{getText('page.transfer.request.submit')}" targets="childTransferResultDiv" />
	  	 </table>
	   </td>
	   <td>
	    <%--
	  	 <table>
		  <s:if test="operationMode.name != ADD">
				<s:url var="childGuardianViewUrl" action="view" namespace="/childGuardian" includeParams="none" >
		  					<s:param name="id" value="%{childGuardian.id}"></s:param>
		  			</s:url>
				 	<sj:a href="%{#childGuardianViewUrl}" targets="childGuardianResultDiv"><input type="button" value="Cancel" /></sj:a>
		   </s:if>
	    </table> --%>
	   </td>
	</s:form>

</div>