<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Update Student Information</title>

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #e0e0e0;
	/* Change to your desired background color */
	margin: 20px;
}

form {
	max-width: 400px;
	margin: 0 auto;
	background-color: #ffffff;
	/* Change to your desired form background color */
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
	display: block;
	margin-bottom: 8px;
}

input {
	width: 100%;
	padding: 10px;
	margin-bottom: 16px;
	border: 1px solid #999; /* Change to your desired input border color */
	border-radius: 4px;
	box-sizing: border-box;
}

button {
	background-color: #3498db;
	/* Change to your desired button background color */
	color: white;
	padding: 12px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	background-color: #2980b9;
	/* Change to your desired button hover color */
}
</style>

</head>

<body>

	<form action="/update/${std1.roll_no}" method="post">
		<label for="name">Name</label> <input type="text" id="name"
			name="name" value="${std1.name }"> <label for="address">Address</label>
		<input type="text" id="address" name="address"
			value="${std1.address }"> <label for="age">Age</label> <input
			type="text" id="age" name="age" value="${std1.age }">

		<button type="submit">Update</button>
	</form>
</body>

</html>
