<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<s:if test="pager.list.size != 0" >
	<div>
	  <table>
	   <tr>
	   		<td><div class="td1" style="width:7px;height:20px">&nbsp;</div></td>
	   		<td class="sub-title" style="white-space: nowrap;">Chidren's Home</td>
	   		<td align="right" style="width: 100%">
	   			<s:include value="../common/pager.jsp"></s:include>
	   		</td>
	   </tr>
	  </table>
	</div>
	<hr />

	<div>
	  <table  style="margin-top: 10px" width="100%" id="commonTable" class="blueTbl">
	  	<tr>
	  		<th></th><th>Name</th><th>Total Children</th><th>Max. Allowed Children</th><th>Probation Unit</th><th>Telephone</th><th>Officers</th>
	  	</tr>
		<s:iterator value="pager.list" status="rowIndex">
			<tr>
			 <td><s:property value="#rowIndex.index + pager.start + 1"/></td>
			 <td>
			 	<s:url var="lamaNivasaViewUrl" action="view" namespace="/lamaNivasa" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{#lamaNivasaViewUrl}" targets="lamaNivasaResultDiv"><s:property value="name"/></sj:a>
			 </td>
			 
			 <s:if test="childs.size > numberOfChildren" >
			 	<td style="background-color: #FFCC99" title="Overcrowd"><s:property value="childs.size"/></td>
			 </s:if>
			 <s:else>
			 	<td><s:property value="childs.size"/></td>
			 </s:else>

			 <td><s:property value="numberOfChildren"/></td>
			<%--  <td><s:property value="divisionalSecretariat.name"/></td> --%>
			 <td><s:property value="probationUnit.name"/></td>
			 <td><s:property value="telephone"/></td>
			 <td><s:property value="numberOfOfficers"/></td>
			
			 <%--
			 <td>
			 	<s:url var="lamaNivasaEditUrl" action="edit" namespace="/lamaNivasa" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{lamaNivasaEditUrl}" targets="lamaNivasaResultDiv">Edit</sj:a>
				 |
			 	<s:url var="lamaNivasaDeleteUrl" action="delete" namespace="/lamaNivasa" escapeAmp="false" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{lamaNivasaDeleteUrl}" targets="lamaNivasaResultDiv" onClickTopics="/confirmDelete">Delete</sj:a>
			 </td>
			 --%>
			</tr>
		</s:iterator>
	</table>
	</div>
	<script type="text/javascript">

		$("tr").not(':first').hover(
		  function () {
		    $(this).css("color","#0000CC");
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