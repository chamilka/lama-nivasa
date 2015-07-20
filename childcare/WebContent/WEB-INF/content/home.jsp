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

	<link href='http://fonts.googleapis.com/css?family=Indie+Flower:400' rel='stylesheet' type='text/css' />
	<link href="<s:url value="/css/layout.css" includeParams="none"/>" rel="stylesheet" type="text/css" />
	<link href="<s:url value="/css/table_style.css" includeParams="none"/>" rel="stylesheet" type="text/css" />
	
	<script type="text/javascript" src="<s:url value="/javaScript/user.js" includeParams="none"/>"> </script>
	
	
	
	<sj:head jqueryui="true" jquerytheme="redmond" defaultIndicator="defaultIndicator"/>
	<script type="text/javascript">
	//var count = 0;
	(function($) {
		$.subscribe("/confirmDelete",function(event,data) {
	        if ( confirm('<s:text name="home.delete.msg"/>') ) {
	            return true;
	         }
	         else {
	            return exit;
	         }
	    },null);
	})(jQuery);
	
	(function($) {
		$.subscribe("/confirmRestore",function(event,data) {
	        if ( confirm('<s:text name="home.restore.msg"/>') ) {
	            return true;
	         }
	         else {
	            return exit;
	         }
	    },null);
	})(jQuery);
	
	(function($) {
		$.subscribe("/confirmConfirmation",function(event,data) {
	        if ( confirm('<s:text name="home.confirm.msg"/>') ) {
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
  	<div style="padding:30px 0 0 800px">
  	    <s:url var="signOutUrl" namespace="/user" action="signout" includeParams="none" />
  	    <s:a href="%{#signOutUrl}" id="signOut" title="%{#session.SESSION_USER.post}" cssStyle="text-decoration:none"><s:text name="header.signOut"/> [<s:property value="%{#session.SESSION_USER.name}"/>]</s:a>
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
         	<s:if test = "user">
         		<td class="td1"><sj:a id="homeLink" href="%{#lamaNivasaFrameUrl}" targets="content" cssClass="menu-link"><s:text name="header.childrensHome"/></sj:a> </td>
         		<td class="td3"><sj:a id="childLink" href="%{#childFrameUrl}" targets="content" cssClass="menu-link"><s:text name="header.child"/></sj:a></td>
				<td class="td4"><sj:a id="monthlyInfoLink" href="%{#monthlyViewUrl}" targets="content" cssClass="menu-link"><s:text name="header.monthlyData"/></sj:a></td>
            	<td class="td5"><sj:a id="donationLink" href="%{#accountViewUrl}" targets="content" cssClass="menu-link"><s:text name="header.myAccount"/></sj:a></td>
            	<td class="td2">&nbsp;</td>
            	<td class="td6">&nbsp;</td>
         	</s:if>
         	<s:elseif test="ministry">
         		<td class="td1"><sj:a id="homeLink" href="%{#lamaNivasaFrameUrl}" targets="content" cssClass="menu-link"><s:text name="header.childrensHome"/></sj:a> </td>
         		<td class="td2"><sj:a id="eventLink" href="%{#probationUnitFrameUrl}" targets="content" cssClass="menu-link"><s:text name="header.units"/></sj:a></td>
         		<td class="td3"><sj:a id="childLink" href="%{#childFrameUrl}" targets="content" cssClass="menu-link"><s:text name="header.child"/></sj:a></td>
            	<td class="td5"><sj:a id="donationLink" href="%{#accountViewUrl}" targets="content" cssClass="menu-link"><s:text name="header.myAccount"/></sj:a></td>
            	<td class="td4">&nbsp;</td>
            	<td class="td6">&nbsp;</td>
         	</s:elseif>
         	<s:elseif test="admin">
         		
         		<td class="td2"><sj:a id="eventLink" href="%{#probationUnitFrameUrl}" targets="content" cssClass="menu-link"><s:text name="header.units"/></sj:a></td>
            	<td class="td5"><sj:a id="donationLink" href="%{#accountViewUrl}" targets="content" cssClass="menu-link"><s:text name="header.myAccount"/></sj:a></td>
         		<td class="td6"><sj:a id="districtLink" href="%{#settignsFrameUrl}" targets="content" cssClass="menu-link"><s:text name="header.settings"/></sj:a></td>
         		<td class="td1">&nbsp;</td>
         		<td class="td3">&nbsp;</td>
				<td class="td4">&nbsp;</td>
         	</s:elseif>
         	<s:else>
         		<td class="td1"><sj:a id="homeLink" href="%{#lamaNivasaFrameUrl}" targets="content" cssClass="menu-link"><s:text name="header.childrensHome"/></sj:a> </td>
         		<td class="td2"><sj:a id="eventLink" href="%{#probationUnitFrameUrl}" targets="content" cssClass="menu-link"><s:text name="header.units"/></sj:a></td>
         		<td class="td3"><sj:a id="childLink" href="%{#childFrameUrl}" targets="content" cssClass="menu-link"><s:text name="header.child"/></sj:a></td>
				<td class="td4"><sj:a id="monthlyInfoLink" href="%{#monthlyViewUrl}" targets="content" cssClass="menu-link"><s:text name="header.monthlyData"/></sj:a></td>
            	<td class="td5"><sj:a id="donationLink" href="%{#accountViewUrl}" targets="content" cssClass="menu-link"><s:text name="header.myAccount"/></sj:a></td>
         		<td class="td6">&nbsp;</td>
         	</s:else>
          </tr>
     </table>
  </div>

  <div id="content" class="content">
	  <sj:div href="%{#lamaNivasaFrameUrl}">
	    
	  </sj:div>
  </div>
  <div class="footer comicsans">
	<div style="padding-left: 75px; margin-top: -30px;">Copyright <%= new java.text.SimpleDateFormat("yyyy").format(new java.util.Date()) %>. All Right Reserved. </div>
	<div style="text-align: right; margin-top: -14px; margin-right: 70px;">Developed &amp; Designed By <a href="http://www.doerit.com">DoerIT</a> </div>
 </div>
  <!-- end .container --></div>
</body>
</html>
