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

	
	<hr />
	<div style="margin-left: 50px">
	  <s:label name="name" label="Child Name" value="Mahesh Karunathilake"></s:label> <br />
	  <s:label name="code" label="Code" value="DMB0005" /><br />
	  <s:label name="gender"  label="Gender" value="Male" /> <br />
	  <s:label name="dateOfBirth"  label="Date Of Birth" value="2003/10/17" /> <br />
	  <s:label name="dateOfCommencement"  label="Date Of Commencement" value="2005/1/12" /> <br />
	  <s:label name="school"  label="School" value="Dambarawa Maha Vidyalaya" /> <br />
	  
	  <s:label name="district"  label="District" value="Kandy"/><br />
	  <s:label name="divisionalSecretariat" label="Divisional Secretariat" value="Kundasale" /><br />
	  <s:label name="gnDevision"  label="GN Devision" value="Dambarawa"/><br />
	 
	  
	  <s:url var="editStudentUrl" action="student-edit" namespace="/student" includeParams="none"  />
	  <s:url var="viewGuardianUrl" action="student-guardian-view" namespace="/student" includeParams="none"  />
	  <s:url var="viewPicturesUrl" action="student-pictures-view" namespace="/student" includeParams="none"  />
	  <s:url var="monitorStudentUrl" action="frame" namespace="/monitor" includeParams="none"  />
	  
	  <table style="margin:20px 0 0 50px">
	  	<tr>
	  		<td>
	  			<table>
	  				<sj:a href="%{#viewGuardianUrl}" targets="guardianInfoViewDiv">
	  					<input type="button" value="View Guardian Info" /></sj:a>
	  			</table>
	  		</td>
	  		
	  		<td>
	  			<table>
	  				<sj:a href="%{#viewPicturesUrl}" targets="guardianInfoViewDiv">
	  					<input type="button" value="View Pictures" /></sj:a>
	  			</table>
	  		</td>
	  		
	  		<td>
	  			<table>
	  				<sj:a href="%{#editStudentUrl}" targets="guardianInfoViewDiv">
	  					<input type="button" value="Edit Info" /></sj:a>
	  			</table>
	  		</td>
	  		
	  		<td>
	  			<table>
	  				<sj:a href="%{#monitorStudentUrl}" targets="guardianInfoViewDiv">
	  					<input type="button" value="Monitoring Records" /></sj:a>
	  			</table>
	  		</td>
	  	</tr>
	  </table>
   </div>
   
   <div id="guardianInfoViewDiv" style="margin: 20px 0 0 100px">
   
   </div>
