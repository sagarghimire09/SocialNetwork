<%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 09/22/19
  Time: 3:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register Page</title>
</head>
<body>
<h1>Register page</h1>
<form action="register" method="post">
    <label>First Name</label>
    <input type="text" name="firstName"><br><br>
    <label>Last Name</label>
    <input type="text" name="lastName"><br><br>
    <label>Email</label>
    <input type="email" name="email"><br><br>
    <label>Password</label>
    <input type="password" name="password"><br><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>
