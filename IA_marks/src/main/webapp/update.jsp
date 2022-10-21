<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="styles.css">
<title>Insert title here</title>
</head>
<body>
<% 
String usn=request.getParameter("usn");
String sub1=request.getParameter("sub1");
String sub2=request.getParameter("sub2");
String sub3=request.getParameter("sub3");
String sub4=request.getParameter("sub4");

	String query = "update ia set sub1="+sub1+",sub2="+sub2+",sub3="+sub3+",sub4="+sub4+" where usn='"+usn+"'";
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ia_marks", "root", "Kizar@02");
	System.out.println("Connection Established successfully");
	PreparedStatement st = con.prepareStatement(query);
	st.executeUpdate(query);
    st.close();
    con.close();
%>

<center>
<div class="form" style="width:23%;">

<h1 style="
color:red;
text-align:center;"> DETAILS STORED SUCCESSFULLY</h1>
</div>

</br>
<a href = "adduser.html">
<button class="button"> ADD DETAILS</button></a>
<a href= "view.jsp">
<button class="button"> VIEW DETAILS</button></a>
<a href= "index.html">
<button class="button"> HOME</button></a>
</center>

</body>
</html>