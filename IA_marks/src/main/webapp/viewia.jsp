<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Hello, world!</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <meta name="description" content="" />
  <link rel="stylesheet" type="text/css" href="styles.css" />
  <link rel="icon" href="img/logo.png">
  <script src="script.js"></script>

<title>Insert title here</title>
</head>
<body>
<center>
  <div class="contents" style="width :70%" >
  <h1>Student Details</h1>
  <div class="form">
  <table style="width:70%" id="student" border="2">

<tr>
<th>USN</th>
<th>Subject 1 Marks</th>
<th>Subject 2 Marks</th>
<th>Subject 3 Marks</th>
<th>Subject 4 Marks</th>
</tr>

<%
String usn1=request.getParameter("usn");
String query = "select * from IA where USN ='"+usn1+"'";
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ia_marks", "root", "Kizar@02");
System.out.println("Connection Established successfully");
PreparedStatement st = con.prepareStatement(query);
ResultSet rs = st.executeQuery(query);
while(rs.next())
{
	%>
	    <tr><td><%= rs.getString("usn")%></td>
    <td><%= rs.getString("sub1") %></td>
    <td><%= rs.getString("sub2") %></td>
    <td><%=rs.getString("sub3") %></td>
    <td><%=rs.getString("sub4") %></td>
  
    </tr>

	<% 
}


st.close(); 

con.close();   %>
</table>
</div></div></center>
</body>
</html>