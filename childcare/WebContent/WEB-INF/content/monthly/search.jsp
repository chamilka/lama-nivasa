<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div>	
	<s:form action="search" namespace="/report" method="post">
	 
	 <table id="commonTable" class="greenTbl" cellpadding="0" cellspacing="0" style="width: 100%" >
	   <tr>
	   	<th colspan="6">Search</th>
	   </tr>
	   <tr>
	   	 <td style="width: 200px">
	   	 <table>
		  <%--  <s:textfield name="lamaNivasa.name" label="Lama Nivasa Name" /> --%>
		   <s:textfield label="Lama Nivasa Index Number" name="lamaNivsaIndex"/>
     	 </table>
     	 </td>
     	 
     	 <td style="width: 100px">
	   	  <table>
	   		<s:textfield label="Lama Nivasa Name" name="lamaNivasaName" cssStyle="width:200px"/>
	 	  </table>
     	 </td>
    	
     	 <td style="width: 100px">
	   	  <table>
	   		<s:select name="year"  label="Year" list="#{'2010':'2010', '2011':'2011', '2012':'2012'}" required="true"/>
	 	  </table>
     	 </td>
     	 
     	 <td style="width: 400px">
	   	  <table>
	   		<s:select name="monthlyData.month" label="Month" list="# {'':'','January':'JANUARY','February':'FEBRUARY','March':'MARCH','April':'APRIL','May':'MAY','June':'JUNE','July':'JULY','August':'AUGUST','September':'SEPTEMBER','	October':'OCTOBER','November':'NOVEMBER','December':'DECEMBER'}"/>
	 	  </table>
     	 </td>
     	 
     	 <td style="width: 100px; text-align: left" >
	   	  	<table>
	  			<sj:submit value="SEARCH" targets="userList"/>
	  		</table>
     	 </td>
     	
     	 <td style="text-align: right; padding-right: 10px;white-space: nowrap;">
	   	 	
			
	
			<s:url var="addReport" action="search" 
			namespace="/report" includeParams="none"></s:url>
     	
     		
			<sj:a href="%{#addReport}" targets="userList">AddReport</sj:a>
		</td>
		</tr>
		
	  </table>
	</s:form>

</div>

