<%--
  Created by IntelliJ IDEA.
  User: hieu.vutrong
  Date: 11/3/2014
  Time: 5:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <%--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>--%>
    <title>Struts 2 Maven Hello world!!!</title>
    <s:head/>
</head>

<body>
<h1 style="color: red"><s:text name="label.welcome" /></h1>
<s:if test="hasActionErrors()">
    <div id="fieldErrors">
        <s:actionerror/>
    </div>
</s:if>

<s:form action="strutsAction" namespace="/" method="post" name="strutsForm">
    <s:textfield name="firstName" size="30" maxlength="50" key="label.firstName"/>
    <s:textfield name="lastName" size="30" maxlength="50" key="label.lastName"/>
    <s:textfield name="location" size="30" maxlength="50" key="label.location"/>
    <s:submit value="Submit" name="Submit" align="right"/>
</s:form>

<s:url id="localeEN" namespace="/" action="locale" >
    <s:param name="request_locale" >en</s:param>
</s:url>
<s:url id="localeVN" namespace="/" action="locale" >
    <s:param name="request_locale" >vn</s:param>
</s:url>

<s:a href="%{localeEN}" >English</s:a>
<s:a href="%{localeVN}" >Vietnamese</s:a>
</body>
</html>