<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Servlet LoginPage</title>
<script type="text/javascript" src="js/loginvalidate.js"></script>
<link rel="stylesheet" type="text/css" href="css/loginstyle.css" />
</head>
<body>

<div class="header">
<h1>Login Application</h1>
</div>
<br>

<form name="myForm" action="getLogin" onsubmit="return validateForm()" method="get">
<table align="center">
 <tr><td>UserName</td><td><input type="text" name="loginname"></td></tr>
 <tr><td>Password</td><td><input type="password" name="loginpassword"></td></tr>

</table>
<br><br>
<center>
<input type="Submit" value="submit">
</center>
</form>

<div class="footer">
<h1>www.techouts.com</h1>
</div>

</body>
</html>