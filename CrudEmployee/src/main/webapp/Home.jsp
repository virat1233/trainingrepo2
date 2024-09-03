<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
/* General Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Body Styling */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f5f5f5;
    color: #333333;
    padding: 20px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    min-height: 100vh;
}

/* Header Styling */
h1 {
    color: #004080;
    margin-bottom: 30px;
    text-align: center;
    font-size: 2.5em;
    letter-spacing: 1px;
}

/* Employee Info Styling */
div {
    background-color: #ffffff;
    padding: 20px;
    margin-bottom: 20px;
    border-radius: 8px;
    width: 100%;
    max-width: 600px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    border-left: 5px solid #004080;
    transition: box-shadow 0.3s ease;
}

/* Hover Effect */
div:hover {
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
}

/* Text Styling */
div p {
    margin-bottom: 10px;
    font-size: 1.1em;
    line-height: 1.6;
    color: #333333;
}

/* Highlighting the Labels */
div strong {
    color: #004080;
    font-weight: bold;
}

/* Text Color for Values */
div span {
    color: #008080; /* Teal color for values */
    font-weight: normal;
}

/* Footer Styling */
footer {
    margin-top: 20px;
    text-align: center;
    color: #666666;
    font-size: 0.9em;
}

</style>
<body>
<h1>Employee Information Platform</h1>
<a href="CrudEmployeeServlet?action=fetchAll">Click here to get all employees information =></a><br>
<a href="addEmployee.jsp">Click here to add new employee =></a><br>
<a href="editEmployee.jsp">Click here to update employee by Id =></a>
</body>
</html>