<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
		xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>New Form</title>
<link rel="stylesheet" type="text/css" media="all" href="../../resources/css/mystyle.css" th:href="@{/css/mystyle.css}" />
</head>
<body>
<div  align="center">
		<h1 style="font-size:40px">New Record</h1>
		<br>
		<div class="div1">
		<br>
		
			<form:form action = "${pageContext.request.contextPath}/save" modelAttribute="hospital" method="post">
			<table  cellpadding="10">
			<tr>
			<td style=text-align:left;>Hospital Name:</td>
			
		<td><form:input path="name" form:class="text-line" required="required" /></td><br/>
		</tr>
		<tr>
		<td style=text-align:left;>Hospital Location:</td>
		<td> <form:input path="location" form:class="text-line" required="required"/><br/></td>
		</tr>
		</table>
		<form:hidden path = "id"/><br>

		<tr>
			<td colspan="2" style="text-align:center"><button type="submit" class="button">Save</button></td>
		</tr>
	</form:form>
			
			
		
	</div>
	</div>

</body>
</html>