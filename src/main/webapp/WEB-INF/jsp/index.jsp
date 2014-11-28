<%--  Created by IntelliJ IDEA.
  User: hieu.vutrong
  Date: 11/3/2014
  Time: 5:06 PM
  To change this template use File | Settings | File Templates.--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Struts 2 Maven Hello world!!!</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <link href="/js/select2/select2.css" rel="stylesheet"/>
    <script src="/js/select2/select2.js"></script>

    <script>
        $(document).ready(function () {
            $("#area51").select2();
        });
    </script>
    <%--<s:head/>--%>
</head>
<body>
<s:property value="%{#parameters.request_locale}"/>
<s:if test="%{#parameters.request_locale[0] == 'vn'}">
    <script src="/js/select2/select2_locale_vi.js"></script>
</s:if>
<h1 style="color: red"><s:text name="label.welcome"/></h1>
<s:if test="hasActionErrors()">
    <div id="fieldErrors">
        <s:actionerror/>
    </div>
</s:if>

<s:form action="strutsAction" namespace="/" method="post" name="strutsForm">
    <s:textfield name="firstName" size="30" maxlength="50" key="label.firstName"/>
    <s:textfield name="lastName" size="30" maxlength="50" key="label.lastName"/>
    <%--<s:select key="label.location" list="locations" name="location"/>--%>
    <s:submit value="Submit" name="Submit" align="right"/>
</s:form>

<%--<select id="area51">
    <option>Hanoi</option>
    <option>Saigon</option>
</select>--%>

<s:url id="localeEN" namespace="/" action="locale">
    <s:param name="request_locale">en</s:param>
</s:url>
<s:url id="localeVN" namespace="/" action="locale">
    <s:param name="request_locale">vn</s:param>
</s:url>

<s:a href="%{localeEN}">English</s:a>
<s:a href="%{localeVN}">Vietnamese</s:a>

<select id="area51">

</select>
</body>
</html>


