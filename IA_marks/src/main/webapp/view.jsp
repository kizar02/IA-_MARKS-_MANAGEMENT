<%@ page import = "java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<title>View student </title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <meta name="description" content="" />
  <link rel="stylesheet" type="text/css" href="styles.css" />
  <link rel="icon" href="img/logo.png">
  <script src="script.js"></script>

<title>Student details</title>
</head>
<body>
<center>
  <div class="contents" style="width :70%" >
  <h1>Student Details</h1>
  <div class="form">
  <table style="width:100%" id="student" border="2">

<tr>
<th>USN</th>
<th>First Name</th>
<th>Last Name</th>
<th>Branch</th>
<th>Sem</th>
<th>Sec</th>
<th>Add IA marks </th>
<th>Update IA marks</th>
<th>View</th>
<th>Delete </th>
</tr>
<%
String query = "select * from student";
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ia_marks", "root", "Kizar@02");
System.out.println("Connection Established successfully");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next())
{
	String usn = rs.getString("usn");
	String first_name = rs.getString("first_name");
	String last_name = rs.getString("last_name");
	String branch=rs.getString("branch");
	int sem=rs.getInt("sem");
	String sec=rs.getString("sec");
	%>
	<td >
	<% out.println(usn );%>
	</td>
	<td >
	<% out.println(first_name);%>
	</td>
	<td >
	<% out.println(last_name);%>
	</td>
	<td >
	<% out.println(branch );%>
	</td>
	<td >
	<% out.println(sem );%>
	</td >
	<td >
	<% out.println(sec );%>
	</td >
	<td ><a href="add.html">
	<% out.println("Add" );%>
	</a></td>
	<td ><a href="update.html">
	<% out.println("Update" );%>
	</a></td>
	<td >
	<a href="viewia.html">
	<% out.println("View" );%>
	</a></td>
	<td><a href="delete.html">
	<% out.println("Delete" );%>
	</a></td>
	</tr>
	<% 
}

st.close(); 

con.close();   %>
</table>
</div></div></center>
</body>
</html>