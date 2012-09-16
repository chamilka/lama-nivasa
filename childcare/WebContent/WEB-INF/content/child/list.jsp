<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>


<s:if test="pager.list.size != 0" >
	<div>
	  <table>
	   <tr>
	   		<td><div class="td3" style="width:7px;height:20px">&nbsp;</div></td><td class="sub-title">Children</td>
	   		<td align="right" style="width: 100%">
	   			<s:include value="../common/pager.jsp"></s:include>
	   		</td>
	   </tr>
	  </table>
	</div>
	<div>
	  <table style="margin-top: 10px" width="100%" id="commonTable" class="darkBlueTbl">
	  	<tr>
	  		<th style="width:20px"></th><th>Name</th>
	  		<th style="width:70px">Sex Type</th>
	  		<th>Date Of Birth</th>
	  		<th style="width:50px">Grade</th>
	  		<th>Children's Home</th>
	  	</tr>
		<s:iterator value="pager.list" status="rowIndex">
			<tr>
			 <td><s:property value="%{#rowIndex.index + 1}"/>
			 <td>
			 	<s:url var="childViewUrl" action="view" namespace="/child" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{#childViewUrl}" targets="childResultDiv" title="Code: %{code}"><s:property value="fullName"/></sj:a>
			 </td>
			 <td><s:property value="sexType"/></td>
			 <td><s:date name="dateOfBirth.time" format="yyyy/MM/dd"/></td>
			 <td><s:property value="grade"/></td>
			 <td><s:property value="lamaNivasa.name" /></td>
			 <%--
			 <td>
			 	<s:url var="childEditUrl" action="edit" namespace="/child" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{childEditUrl}" targets="childResultDiv">Edit</sj:a>
				 |
			 	<s:url var="childDeleteUrl" action="delete" namespace="/child" escapeAmp="false" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
			 	<sj:a href="%{#childDeleteUrl}" targets="childResultDiv" onClickTopics="/confirmDelete">Delete</sj:a>
			 </td>
			 --%>
			</tr>
		</s:iterator>
	</table>
	</div>
</s:if>
<s:else>
  <div class="error"> Items not found to your search input</div>
</s:else>

   <script type="text/javascript">

		$("tr").not(':first').hover(
		  function () {
		    $(this).css("color","#000088");
		  },
		  function () {
		    $(this).css("color","");
		  }
		);

	</script>
