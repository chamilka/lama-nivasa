<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>
  <table>
   <tr>
   		<td class="td4" style="width:10px">&nbsp;</td><td><s:text name="page.xreport-search.title"/></td>
   </tr>
  </table>
</div>
	
<hr />
	
<div>
	
	<s:form>
		<s:textfield label="Lama Nivasa Index Number" name="lamaNivsaIndex" cssStyle="width:150px"/>
		<s:textfield label="Lama Nivasa Name" name="lamaNivasaName" cssStyle="width:200px"/>
		<s:select name="year"  label="Year" list="#{'2010':'2010', '2011':'2011', '2012':'2012'}" required="true"/>
		<s:select name="Month"  label="Month" list="#{'Jan':'Jan', 'Feb':'Feb', 'Mar':'Mar'}" required="true"/>
		<sj:submit value="%{getText('page.xreport-search.button.search ')}"/>
	</s:form>
 
</div>