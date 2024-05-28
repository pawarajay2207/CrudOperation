<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Student Information</title>

<style>
:root {
	--main-bg-color: #f4f4f4;
	--table-header-bg: #4CAF50;
	--link-color: #1E90FF;
	--link-hover-color: #004080;
}

body {
	font-family: Arial, sans-serif;
	background-color: var(--main-bg-color);
	margin: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

th, td {
	padding: 12px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: var(--table-header-bg);
	color: white;
}

tr:hover {
	background-color: #f5f5f5;
}

a {
	text-decoration: none;
	color: var(--link-color);
	transition: color 0.3s ease-in-out;
}

a:hover {
	color: var(--link-hover-color);
}
</style>

</head>

<body>
	<table border="2">

		<tr>
			<th>Student Roll Number</th>
			<th>Student Name</th>
			<th>Student Address</th>
			<th>Student Age</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach var="std" items="${e_data}">

			<tr>
				<td>${std.roll_no}</td>
				<td>${std.name}</td>
				<td>${std.address}</td>
				<td>${std.age}</td>
				<td><a href="<c:url value='/edit/${std.roll_no }'/>">Update</a></td>
				<td><a href="<c:url value='/${std.roll_no }'/>">Delete</a></td>
			</tr>

		</c:forEach>

	</table>
</body>

</html>
