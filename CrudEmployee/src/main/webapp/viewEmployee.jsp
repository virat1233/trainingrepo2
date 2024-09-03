<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="com.seclore.entity.Employee"%>
         <%@ page import="java.util.List"%>  
      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* styles.css */

body {
    background-color: #1c1c1c;
    color: #f2f2f2;
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 20px;
}

h1 {
    text-align: center;
    margin-bottom: 30px;
    color: #eaeaea;
}

a {
    color: #3498db;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

h2 {
    margin: 0;
    padding: 10px 20px;
    background-color: #2c2c2c;
    border-radius: 8px;
    transition: background-color 0.3s ease;
}

a h2:hover {
    background-color: #3c3c3c;
}

div {
    background-color: #2c2c2c;
    padding: 20px;
    margin-bottom: 15px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
}

div a {
    color: #e74c3c; /* Red color for delete link */
    text-decoration: none;
    font-weight: bold;
}

div a:hover {
    text-decoration: underline;
}


</style>
</head>
<body>
<h1>Employee Information Portal</h1>
<a href="">
<h2>Sort by Employee_Id</h2>
</a>
<a href="">
<h2>Sort by Salary</h2>
</a>
<%
	List<Employee> list = (List<Employee>) request.getAttribute("allEmployee");
	for(Employee emp: list){
%>

<div>
Employee ID: <%=emp.getId() %><br>
Employee Name: <%=emp.getName() %><br>
Employee Department: <%=emp.getDepartment() %><br>
Employee Salary:<%=emp.getSalary() %>
<a href="CrudEmployeeServlet?action=delete&id=<%= emp.getId() %>">Delete</a>

</div>

<%
    }
%>
</body>
</html>