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
<%
String usn1=request.getParameter("usn");
String query = "delete  from ia where usn ='"+usn1+"';";
String query1 = "delete  from student where usn ='"+usn1+"';";
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ia_marks", "root", "Kizar@02");
System.out.println("Connection Established successfully");
PreparedStatement st = con.prepareStatement(query);
st.executeUpdate(query);

PreparedStatement st1 = con.prepareStatement(query1);
st1.executeUpdate(query1);
st1.close(); 
st.close(); 

con.close();%>
<%String redirectURL = "view.jsp";
response.sendRedirect(redirectURL); %>
</body>
</html>