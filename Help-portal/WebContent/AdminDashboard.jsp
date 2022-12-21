<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" type = "text/css" href ="css/admin.css" />
<style>  
Body  
{  
background-color: #ccffff;
}  
</style>
<meta charset="ISO-8859-1">
<title>Admin_Dashboard</title>
</head>
<body>
	
	<!--......................................Header Part.......................................................................... -->
	<table  id="footerwidth">
	<tr><td>
     
	<img src="images/logo2.png" height="100" width="200" align="left">
	<h1 align="left">&nbsp;ONLINE HELP DESK </h1>
	<h5 align="left">&nbsp; &nbsp;CHILDREN are the priority &nbsp;CHANGE is the reality &nbsp;COLLABORATION is the strategy....</h5><br>
	</td>
	<td align="right">
	<img src="images/avater.png" height="50" width="50" align="right">
	<c:forEach var="adm" items ="${admDetails}" >
			<br>${adm.adminId}<br>
				${adm.name}<br><br>
	</c:forEach>
	<br>
	<a href="Home.jsp">
	<button  type="submit"  style="background-color:#b3d9ff;">LOG OUT</button>
	</a>
	</td>
	</tr>
	</table>
	
    <div align="center">
	<h1>ADMINISTATOR DASHBOARD</h1>
	
	<a href ="AUserInsert.jsp">
	<button type ="button" class="button">Add A New User</button>
	</a>
	
	<a href ="ASearchUser.jsp">
	<button type ="button" class="button">View User Profile</button>
	</a>
	
	<a href ="AUserList.jsp">
	<button type ="button" class="button">List Of All User Details</button>
	</a>
	
</div>

</body>
</html>