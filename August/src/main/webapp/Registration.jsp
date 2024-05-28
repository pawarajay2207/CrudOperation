<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
	<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        form {
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            width: 400px;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            font-size: 16px;
        }

        input {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            transition: background-color 0.3s ease-in-out;
        }

        button:hover {
            background-color: #45a049;
        }
    
        .error-message {
            color: #ff3333;
            margin-top: -8px;
            margin-bottom: 16px;
            text-align: center;
            font-size: 14px;
        }
    </style>
</head>
<body>

    <form action="addstudent" method="post" onsubmit="return validateForm()">
        <h1>Student Details</h1>

        <label for="roll_no">Roll Number</label>
        <input type="text" id="roll_no" name="roll_no" required>

        <label for="name">Name</label>
        <input type="text" id="name" name="name" required>

        <label for="address">Address</label>
        <input type="text" id="address" name="address" required>

        <label for="age">Age</label>
        <input type="text" id="age" name="age" required>

        <!-- Display error message -->
        <div id="error-message" class="error-message"></div>

        <button type="submit">Register</button>
    </form>

    <script>
        function validateForm() {
            // Simple validation example
            var rollNo = document.getElementById('roll_no').value;
            var name = document.getElementById('name').value;
            var address = document.getElementById('address').value;
            var age = document.getElementById('age').value;

            if (rollNo === '' || name === '' || address === '' || age === '') {
                // Display error message
                document.getElementById('error-message').innerText = 'Please fill in all fields.';
                return false; // Prevent form submission
            }

            return true; // Allow form submission
        }
    </script>
</body>
</html>
