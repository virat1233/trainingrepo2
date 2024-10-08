<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* styles.css */
/* styles.css */

body {
    background-color: #98a9ff;
    color: #ffffff;
    display: block;
    justify-content: right;
    align-items: left;
    height: 1000vh;
    margin: 0;
}

a {
    color: #3498db;
    text-decoration: none;
    margin-bottom: 20px;
    display: flex;
}

a:hover {
    text-decoration: none;
}


form input[type="text"],
form input[type="number"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #444;
    border-radius: 4px;
    background-color: #3c3c3c;
    color: #f2f2f2;
}

form button {
    width: 100%;
    padding: 10px;
    background-color: #3498db;
    border: none;
    border-radius: 4px;
    color: white;
    font-size: 16px;
    cursor: pointer;
    margin-top: 15px;
}

form button:hover {
    background-color: #2980b9;
}

form input:focus {
    border-color: #3498db;
    outline: none;
}

label {
    align-self: flex-start;
    margin-bottom: 5px;
    font-weight: bold;
}




</style>
</head>
<body>
<a href="Home.jsp">Back to the Home page</a>
<form action="CrudEmployeeServlet">
<input type="hidden" name="action" value="update"/>
Enter Id: <input type="text" name="id" /><br>
Enter new name: <input type="text" name="name" /><br>
Enter new department: <input type="text" name="department"><br>
Enter new salary: <input type="number" name="salary"><br>
<button type="submit">Confirm</button>
</form>
</body>
</html>