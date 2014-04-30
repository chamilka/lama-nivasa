<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<title><s:text name="global.application.title" /></title>
	<link rel='SHORTCUT ICON' href='<s:url value="/images/favicon.ico" />' />

	<meta http-equiv="Pragma" content="no-cache" />
	<meta http-equiv="Expires" content="-1" />
	<meta name="description" content="Child Care Sri Lanka" />
	<meta name="keywords" content="Child Care" />
	<meta name="author" content="Prabhath Gunathilake" />
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />

	<link href="<s:url value="/css/layout.css" includeParams="none"/>" rel="stylesheet" type="text/css" />
	<link href="<s:url value="/css/table_style.css" includeParams="none"/>" rel="stylesheet" type="text/css" />
	
	<script type="text/javascript" src="<s:url value="/javaScript/user.js" includeParams="none"/>"> </script>
	
	<sj:head jqueryui="true" jquerytheme="redmond" defaultIndicator="defaultIndicator"/>
	<script type="text/javascript">
	//var count = 0;
	(function($) {
		$.subscribe("/confirmDelete",function(event,data) {
	        if ( confirm('<s:text name="Are you sure deleting record/s?" />') ) {
	            return true;
	         }
	         else {
	            return exit;
	         }
	    },null);
	})(jQuery);
	</script>

</head>

<body>

<div class="container">
  <div class="header">
  	<div style="padding:30px 0 0 870px">
  	    <s:url var="signOutUrl" namespace="/user" action="signout" includeParams="none" />
  	    <s:a href="%{#signOutUrl}" title="%{#session.SESSION_USER.name}" cssStyle="text-decoration:none">Sign Out [<s:property value="%{#session.SESSION_USER.userRole}"/>]</s:a>
  	</div>
  </div>
  <div class="menu_bar">
  
  <s:url var="homeViewUrl" action="home-view" namespace="/user" includeParams="none"></s:url>
  
  <s:url var="monthlyViewUrl" action="frame" namespace="/report" includeParams="none"></s:url>
  
  <s:url var="accountViewUrl" action="account-frame" namespace="/user" includeParams="none"></s:url>
  <s:url var="contactusViewUrl" action="contactus-view" namespace="/information" includeParams="none"></s:url>
  <s:url var="settignsFrameUrl" action="frame" namespace="/settings" includeParams="none"></s:url>
  <s:url var="lamaNivasaFrameUrl" action="frame" namespace="/lamaNivasa" includeParams="none"></s:url>
  <s:url var="probationUnitFrameUrl" action="frame" namespace="/probationUnit" includeParams="none"></s:url>
  <s:url var="childFrameUrl" action="frame" namespace="/child" includeParams="none"></s:url>
  <s:url var="contactusUrl" action="contact-view" namespace="/settings" includeParams="none"></s:url>
  
  
  	<table border="0" cellspacing="0" cellpadding="0" id="tblMenu">
          <tr>
            <td class="td1"><sj:a id="homeLink" href="%{#lamaNivasaFrameUrl}" targets="content" cssClass="menu-link">CHILDREN'S HOME</sj:a> </td>
            <s:if test="!user">
            	<td class="td2"><sj:a id="eventLink" href="%{#probationUnitFrameUrl}" targets="content" cssClass="menu-link">UNITS</sj:a></td>
            </s:if>
            <s:else>
            	<td class="td2"></td>
            </s:else>
			<td class="td3"><sj:a id="childLink" href="%{#childFrameUrl}" targets="content" cssClass="menu-link">CHILD</sj:a></td>
			<td class="td4"><sj:a id="monthlyInfoLink" href="%{#monthlyViewUrl}" targets="content" cssClass="menu-link">MONTHLY DATA</sj:a></td>
            <td class="td5"><sj:a id="donationLink" href="%{#accountViewUrl}" targets="content" cssClass="menu-link">MY ACCOUNT</sj:a></td>
            <s:if test="admin">
            	<td class="td6"><sj:a id="districtLink" href="%{#settignsFrameUrl}" targets="content" cssClass="menu-link">SETTIGNS</sj:a></td>
         	</s:if>
         	<s:else>
            	 <td class="td6">&nbsp;</td>
         	</s:else>
          </tr>
     </table>
  </div>
  <div id="content" class="content">
	  <sj:div href="%{#lamaNivasaFrameUrl}">
	    
	  </sj:div>
  </div>
  <div class="footer">
  </div>
  <!-- end .container --></div>
</body>
</html>