<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>
  <table>
   <tr>
   		<td class="td3" style="width:10px">&nbsp;</td><td>Search Lama Nivasa</td>
   </tr>
  </table>
</div>
	
<hr />
	
<div>
	
	<s:form>
		<s:textfield label="Lama Nivasa Index Number" name="lamaNivsaIndex" cssStyle="width:150px"/>
		<s:textfield label="Lama Nivasa Name" name="lamaNivasaName" cssStyle="width:200px"/>
		
		<sj:submit value="Search"/>
	</s:form>

</div>