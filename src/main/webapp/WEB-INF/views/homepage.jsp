<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
		xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Hospital Manager</title>
<link rel="stylesheet" type="text/css" media="all" href="../../resources/css/mystyle.css" th:href="@{/css/mystyle.css}" />
<script type="text/javascript" th:src="@{js/jquery.min.js}" src="../../resources/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" media="all" href="../../resources/css/bootstrap.min.css" th:href="@{/css/mystyle.css}" />
<script type="text/javascript" th:src="@{js/bootstrap.min.js}" src="../../resources/js/bootstrap.min.js"></script>
<script type="text/javascript" th:src="@{js/main.js}" src="../../resources/js/main.js"></script>
</head>
<body>
	<div align="center">
	<br/>
		<h1 style="font-size:45px"><b>Hospital Records</h1></b>
		<br/>

		<button onclick="window.location.href='${pageContext.request.contextPath}/new'">Enter New Record</button>
		<br>
		<table id="table"  cellpadding="10">
			<thead>
				<tr>
					<th>ID</th>
					<th>Hospital Name</th>
					<th>Hospital Location</th>
					
					<th>Actions</th>
				</tr>
			</thead>
		<c:forEach items="${list}" var="h">
			<tr>
				<td>${h.id}</td>
				<td style=text-align:left;>${h.name}</td>
				<td style=text-align:left;>${h.location}</td>
				<td>
					<a class="editupdate" href = "${pageContext.request.contextPath}/hospital/${h.id}">Edit</a>
					|
				<a class="editupdate" id="deleteButton" href = "${pageContext.request.contextPath}/delete/${h.id}">Delete</a>	
				</td>
				
				
			</tr>
		</c:forEach>
		</table>	
	</div>
	<div class="modal" tabindex="-1" role="dialog" id="deleteModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
				
					<h5 class="modal-title">Confirm Delete</h5>
        			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span aria-hidden="true">&times;</span>
        			</button>
				</div>
					<div class="modal-body">
						<p>Are you sure you want to delete this record?</p>
					</div>
					<div class="modal-footer">
						<a href="" class="btn-btn-primary" id="delRef">Yes, Delete</a>
						<button type="button" class="btn-btn-secondory" id="closeRef" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
</body>
</html>