<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CRUD Operations</title>
<style>
body {
  margin: 0;
}

/* Style the header */
.header {
  background-color: #80dfff;
  padding: 1px;
  text-align: center;
}
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: #80dfff;
   color: white;
   text-align: center;
}
</style>
</head>
<body>

<div class="header">
<h1>Add New Employee</h1>
</div>

<form action="SaveServlet" method="post">
<br><br>

<table align="center">
<tr><td>Name:</td><td><input type="text" name="name" placeholder="Enter Name"/></td></tr>
<tr><td>Password:</td><td><input type="password" name="password" placeholder="Enter Password"/></td></tr>
<tr><td>Email:</td><td><input type="email" name="email" placeholder="Enter Eamil"/></td></tr>
<tr><td>Country:</td><td><input type="text" name="country" placeholder="Enter Country"/></td></tr>


</table>
<br><br>
<center>
<input type="submit" value="Save Employee"/>
</center>
</form>
<br>
<center><a href="ViewServlet"><b>View Employees</b></a></center>

<div class="footer">
<h1>www.techouts.com</h1>
</div>
</body>
</html>