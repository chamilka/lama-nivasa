<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
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
	
	<sj:head jqueryui="true" jquerytheme="south-street" defaultIndicator="defaultIndicator"/>

</head>

<body>

<div class="container">
 <div class="login_header"><!-- end .login_header --></div>
  
  <div class="login_content">
    <div align="center" style="padding-top:220px;">
        <s:form action="signin" namespace="/user" method="post">
		  	<table border="0" cellspacing="0" cellpadding="5" id="tbl_login" align="center">
		  	  <tr>
		  	  	<td colspan="2">
		  	  		<s:actionerror />
		  	  	</td>
		  	  </tr>
		     
		      <tr>
		        <td style="height:25px;color: #000">USERNAME</td>
		        <td><table cellpadding="0" cellspacing="0">
		        	<s:textfield name="username" cssStyle="width:150px; height:25px"  /></table></td>
		      </tr>
		      <tr>
		        <td style="height:25px;color: #000">PASSWORD</td>
		        <td><table  cellpadding="0" cellspacing="0">
		        	<s:password name="password" cssStyle="width:150px; height:25px" showPassword="true" /></table></td>
		      </tr>
		     <tr>
		        <td>&nbsp;</td>
		        <td><div align="right">
		        	<table  cellpadding="0" cellspacing="0"><s:submit value="LOGIN" /></table></div></td>
		      </tr>
		    </table>
	    </s:form>
    </div>
 </div>
  
  <div class="footer comicsans">
	<div style="padding-left: 75px; margin-top: -30px;">Copyright <%= new java.text.SimpleDateFormat("yyyy").format(new java.util.Date()) %>. All Right Reserved. </div>
	<div style="text-align: right; margin-top: -14px; margin-right: 70px;">Designed & Developed By <a href="http://www.doerit.com">DoerIT</a> </div>
 </div>
</div>
</body>
</html>
