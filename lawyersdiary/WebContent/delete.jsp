<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

try{
String id=request.getParameter("empid");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lawyer", "root", "root");
Statement st=con.createStatement();
st.executeUpdate("delete from associates where id='"+id+"'");
response.sendRedirect("home.jsp");


}catch(Exception e){e.printStackTrace();}
//end of if
%>
</body>
</html>