<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<style type="text/css">


body {
  text-align: center;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 50px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: center;
}

</style>

</head>
<body>


<h1>Welcome To This Web Database Application</h1>


<br><br>

<p>In this web app you get insert your bio-data inside a created database. You also get to see the list registered user</p>

<br><br>

<p>To register yourself as user of this app click on the "register" button provided below</p>

<br><br>

<form action="<%= request.getContextPath() %>/register" method="post">
	<input type="submit" value="Register">
</form>

<br><br>

<p>To see the list of registered user of this app click on the "see users" button provided below</p>

<br><br>

<form action="<%= request.getContextPath() %>/see_user" method="post">
	<input type="submit" value="See User">
</form>

</body>
</html>