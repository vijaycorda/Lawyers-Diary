<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<html>
<body>
<jsp:include page="header.jsp"></jsp:include>

<%
String n=request.getParameter("empid");
if(n.length()>0){
try{
	 Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lawyer", "root", "root");

PreparedStatement ps=con.prepareStatement("select * from associates where id='"+n+"'");

//ps.setString(1,n);
ResultSet rs=ps.executeQuery();
out.print("<br>");
out.print("<form action='delete.jsp' name='myform' id='myform'>");
out.print("<table cellspacing=15 cellpadding=15>");
while(rs.next()){
out.print("<tr><td><font style='color:navy'><B>Add Hearing :</B></font></td></tr>");
out.print("<tr><td><B>Id:</B></td><td><input type='text' name='empid' value='"+rs.getString(1)+"'></input></td></tr>");
out.print("<tr><td><B>Lawyer Name:</B></td><td><input type='text' name='lname' value='"+rs.getString(2)+"'></input></td></tr>");
out.print("<tr><td><B>Email:</B></td><td><input type='text' name='pname' value='"+rs.getString(3)+"'></input></td></tr>");
out.print("<tr><td><B>Phone No:</B></td><td><input type='text' name='detail' value='"+rs.getString(4)+"'></input></td></tr>");
out.print("<tr><td><B>Detail:</B></td><td><input type='text' name='detail' value='"+rs.getString(5)+"'></input></td></tr>");



out.print("<tr><td></td><td><input style='padding:3px 3px' value='Delete' type='submit'></td></tr>");


out.print("</form>");
}

con.close();
}catch(Exception e){e.printStackTrace();}
}//end of if
%>
</body>
</html>
