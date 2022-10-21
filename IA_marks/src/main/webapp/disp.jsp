<%@ page import = "java.sql.*"%>
<html>
<head>
<style>

</style>
<meta http-equiv="Content-Type" content ="text/html ;charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String stusn =request.getParameter("usn");
String stfirstname =request.getParameter("first");
String stlastname =request.getParameter("last");
String stbranch =request.getParameter("branch");
String stsem =request.getParameter("sem");
String stsec =request.getParameter("sec");

try{
	String url="jdbc:mysql://localhost:3306/ia_marks"; 
	String username= "root";
	String password="Kizar@02";
	Class.forName("com.mysql.cj.jdbc.Driver");
	String query ="insert into student values (?,?,?,?,?,?)";
	Connection con =DriverManager.getConnection(url,username,password);
	PreparedStatement st= con.prepareStatement(query);
	st.setString(1,stusn);
	st.setString(2,stfirstname);
	st.setString(3,stlastname);
	st.setString(4,stbranch);
	st.setString(5, stsem);
	st.setString(6, stsec);
	int x= st.executeUpdate();
	if(x>0){
		out.println("Registration successfully ");
	}
	else{
		out.println("Registration failed");
	}
}
catch(Exception e){
	out.println(e);
}
%>
<h1> <a href = "view.jsp"> View Student Details </a></h1>
</body>
</html>