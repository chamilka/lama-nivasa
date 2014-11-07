<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="page.list.title"/></td>	   		
	   </tr>
	  </table>
	</div>
	<hr />


	<div>
	 <s:if test="list.size > 0">
	  <table style="margin-top: 10px" width="100%" id="commonTable" class="blueTbl">
	  	<tr>
	  		<th style="width:120px"><s:text name="page.picture.list.thumbnail"/></th><th>
<s:text name="page.picture.list.comment"/></th><th><s:text name="page.picture.list.file"/></th><th>&nbsp;</th>
	  	</tr>
		<s:iterator value="list" status="rowIndex">
			<tr>
			<td>
				<s:url var="imageShowUrl" action="image-view" namespace="/childPicture" includeParams="none">
					<s:param name="id" value="id"></s:param>
				</s:url>

				<s:url var="imageLargeViewUrl" action="image-view-page" namespace="/childPicture" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 	</s:url>
				<sj:a href="%{#imageLargeViewUrl}" targets="imageDiv">
					<img src="<s:property value="#imageShowUrl" />" style="width:120px;height:90px"/>
				</sj:a>
			</td>
			 <td>

			 	<s:property value="comment"/>
			 </td>
			 <td><s:property value="fileName"/></td>
			 <td>
			 	<s:url var="childPictureDeleteUrl" action="delete" namespace="/childPicture" escapeAmp="false" includeParams="none">
			 		<s:param name="id" value="id"></s:param>
			 		<s:param name="childId" value="childId"></s:param>
			 	</s:url>
			 	<sj:a href="%{childPictureDeleteUrl}" targets="childPictureResultDiv" onClickTopics="/confirmDelete"><s:text name="page.view.button.delete"/></sj:a>
			 </td>
			</tr>
		</s:iterator>
		</table>
	 </s:if>
	  <s:else>
	  	<s:text name="page.picture.list.msg"/>
	  </s:else>
	</div>

	<div id="imageDiv" align="center" style="margin-top: 10px;border: 1px solid #ddd">

	</div>

