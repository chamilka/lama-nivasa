<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<html>
<head>

	<title><s:text name="global.application.title" /></title>
	<link rel='SHORTCUT ICON' href='<s:url value="/images/favicon.ico" />' />

	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Expires" content="-1">
	<meta name="description" content="Peradeniya Police" />
	<meta name="keywords" content="Police Sri Lanka" />
	<meta name="author" content="Prabhath Gunathilake" />
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />

	<link href="<s:url value="/css/signin.css" includeParams="none"/>" rel="stylesheet" type="text/css" />
	
	<sj:head jqueryui="true" jquerytheme="south-street" defaultIndicator="defaultIndicator"/>

</head>
<body>

<div class="container">
  <div class="login">
  	<s:form action="signIn" namespace="/user" method="post">
  	<table border="0" cellspacing="0" cellpadding="5" id="tbl_login" align="center">
      <tr>
        <td>USERNAME</td>
        <td><table><s:textfield name="username" cssStyle="width:150px"  /></table></td>
      </tr>
      <tr>
        <td>PASSWORD</td>
  <td>pas</td>
        <td><table><s:password name="password" cssStyle="width:150px" showPassword="true" /></table></td>
      </tr>
     <tr>
        <td>&nbsp;</td>
        <td><div align="right"><input type="submit" name="button" id="button" value="LOGIN" /></div></td>
      </tr>
    </table>
    </s:form>

  </div>
  
  
  <!-- end .container --></div>
</body>
</html>
