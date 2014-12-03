<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<%@page contentType="text/html; charset=UTF-8"%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>

<title>Quoc Minh | <decorator:title
	default="Sitemesh Example" /></title>
<decorator:head />


</head>

<body>

<table class="mainTable" id="page-container" cellpadding="5" cellspacing="0" border="1"
	align="center">
	<tr>
		<td>Heading here...</td>
	</tr>
	<tr>
		<td id="content-container"><decorator:body /></td>
	</tr>

</table>
</body>
</html>

