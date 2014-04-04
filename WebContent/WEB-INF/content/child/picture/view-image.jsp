<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

	<div>
	  <table>
	   <tr>
	   		<td class="td3" style="width:10px">&nbsp;</td><td>Student Information</td>
	   		
	   		<td>
	   		 <s:url var="printableStudentUrl" action="student-edit" namespace="/student" includeParams="none"  />
	   		 <sj:a href="%{#printableStudentUrl}" targets="guardianInfoViewDiv">
	  					<input type="button" value="Printable Report" style="height: 22px" /></sj:a>
	   		</td>
	   </tr>
	  </table>
	</div>

  
    PICTURE
