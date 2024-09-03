<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* styles.css */

body {
    background-color: #1c1c1c;
    color: #f2f2f2;
    font-family: Arial, sans-serif;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    text-align: center;
}

a {
    color: #3498db;
    text-decoration: none;
    margin-bottom: 20px;
    display: inline-block;
}

a:hover {
    text-decoration: underline;
}

h3 {
    margin-top: 20px;
    padding: 10px 20px;
    border-radius: 8px;
    background-color: #27ae60; /* Green background for success message */
    color: white;
}

form {
    background-color: #2c2c2c;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    max-width: 400px;
    width: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
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
}

form button:hover {
    background-color: #2980b9;
}

form input:focus {
    border-color: #3498db;
    outline: none;
}

</style>
</head>
<body>
<a href="Home.jsp">Back to the Home page</a>

<%
   Integer EmpId = (Integer) request.getAttribute("employeeId");
   if(EmpId != null){
%>
 <h3>Product added with id <%= EmpId %></h3>
<%
   }
%>
<form action="CrudEmployeeServlet">
<input type="hidden" name="action" value="add"/>
Enter Name: <input type="text" name="name" /><br>
Enter Department: <input type="text" name="department"><br>
Enter salary: <input type="number" name="salary"><br>
<button type="submit">Add</button>
</form>
</body>
</html>