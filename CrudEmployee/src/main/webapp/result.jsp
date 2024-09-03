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
}

a:hover {
    text-decoration: underline;
}

h3 {
    margin-top: 20px;
    padding: 10px 20px;
    border-radius: 8px;
}

h3.success {
    background-color: #27ae60; /* Green background for success */
    color: white;
}

h3.error {
    background-color: #e74c3c; /* Red background for error */
    color: white;
}

</style>
</head>
<body>


<%
   boolean b = (boolean) request.getAttribute("updatedOrNot");
   if(b == true){
%>
 <h3>Successfully updated</h3>
<%
   }
else{
	%>
	 <h3>Oops! some problem occured, not updated</h3>
	<%
}
	%>
	
<a href="Home.jsp">Back to the Home page</a>
</body>
</html>