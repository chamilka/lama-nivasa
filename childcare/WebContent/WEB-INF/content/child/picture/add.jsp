<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:5px">&nbsp;</td><td class="sub-title"><s:text name="page.picture.add.title"/></td>
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
	
	<s:textfield name="childPicture.comment" label="%{getText('page.picture.list.comment')}" cssStyle="width:300px"/>  
    <s:file name="fileUpload" label="%{getText('page.picture.list.select.file')}" size="40" />
    
    <tr>
        <td class="tdLabel">&nbsp;</td>
        <td> 
     		<table>
				<sj:submit value= "%{getText('page.add.button')}" targets="childPictureResultDiv"/>
			</table>
    	</td>
    </tr>

  </s:form>
</div>

