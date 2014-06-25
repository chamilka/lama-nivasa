<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<s:if test="list.size != 0" >
	<div>
	  <table>
	   <tr>
	   		<td class="td2" style="width:5px">&nbsp;</td><td class="sub-title">Probation Units</td>
	   </tr>
	  </table>
	</div>
	<hr />

	<div>
	  <table style="margin-top: 10px" width="100%" id="commonTable" class="orangeTbl">
	  	<tr>
	  		<th>Name</th><th style="width:50px">Officers</th><th>Email</th><th>Telephone</th><th>Fax</th><th>Police Station</th>
	  	</tr>
		<s:iterator value="list" status="rowIndex">
			<tr>
			 <td>
			 	<s:url var="probationUnitViewUrl" action="view" namespace="/probationUnit" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{#probationUnitViewUrl}" targets="probationUnitResultDiv"><s:property value="name"/></sj:a>
			 </td>
			 <td><s:property value="numberOfOfficers"/></td>
			 <td><s:property value="email"/></td>
			 <td><s:property value="telephone"/></td>
			 <td><s:property value="fax"/></td>
			 <td>
			   
			    <s:iterator value="policeStations" status="indexStatus">
			      
			       <span title="<s:property value="telephone" />, <s:property value="email" />, <s:property value="fax" /> "><s:property value="name"/>
			       <s:if test="#indexStatus.last == false">
			       		,
			       </s:if>
			       </span>
			       	
			    </s:iterator>
			 </td>
			 <%--
			 <td><s:property value="comment"/></td>
			 <td>
			 	<s:url var="probationUnitEditUrl" action="edit" namespace="/probationUnit" includeParams="none">
			 		<s:param name="id" value="%{id}"></s:param>
			 	</s:url>
			 	<sj:a href="%{probationUnitEditUrl}" targets="probationUnitResultDiv">Edit</sj:a>
				 |
			 	<s:url var="probationUnitDeleteUrl" action="delete" namespace="/probationUnit" escapeAmp="false" includeParams="none">
			 		<s:param name="id" value="%{id}"><s:property value="id"/></s:param>
			 	</s:url>
			 	<sj:a href="%{probationUnitDeleteUrl}" targets="probationUnitResultDiv" onClickTopics="/confirmDelete">Delete</sj:a>
			 </td>
			 --%>
		</s:iterator>
	</table>
	</div>

	<script type="text/javascript">

		$("tr").not(':first').hover(
		  function () {
		    $(this).css("color","#CC0000");
		  },
		  function () {
		    $(this).css("color","");
		  }
		);

	</script>
</s:if>
<s:else>
	No records
</s:else>