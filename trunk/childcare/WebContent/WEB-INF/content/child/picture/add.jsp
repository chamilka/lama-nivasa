<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:5px">&nbsp;</td><td>Add Child</td>
	   </tr>
	  </table>
</div>

<hr />
<div>
  <s:form action="save" method="post" namespace="/childPicture" id="childPictureForm" enctype="multipart/form-data">
    <s:actionerror/>
	<s:hidden name="childPicture.id" />
	<s:hidden name="childPicture.child.id" value="%{childId}"/>
	<s:hidden name="operationMode"/>
	
	<s:textfield name="childPicture.comment" label="Comment" cssStyle="width:300px"/>  
    <s:file name="fileUpload" label="Select a Picture File to upload" size="40" />
    
    <tr>
        <td class="tdLabel">&nbsp;</td>
        <td> 
     		<table>
				<sj:submit targets="childPictureResultDiv"/>
			</table>
    	</td>
    </tr>

  </s:form>
</div>

