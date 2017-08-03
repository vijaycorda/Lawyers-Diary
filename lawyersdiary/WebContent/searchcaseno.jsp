<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<html>
<head>
<style>

</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<%
String n=request.getParameter("caseno");
if(n.length()>0){
try{
	 Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lawyer", "root", "root");

PreparedStatement ps=con.prepareStatement("select * from cases where caseno='"+n+"'");

//ps.setString(1,n);
ResultSet rs=ps.executeQuery();
out.print("<br>");
out.print("<form action='addhearing.jsp' name='myform' id='myform'>");
out.print("<table cellspacing=15 cellpadding=15>");
while(rs.next()){
out.print("<tr><td><font style='color:navy'><B>Add Hearing :</B></font></td></tr>");
out.print("<tr><td><B>Case No:</B></td><td><input type='text' name='caseno' readOnly = 'true' value='"+rs.getString(1)+"'></input></td></tr>");
out.print("<tr><td><B>Lawyer Name:</B></td><td><input type='text' name='lname' value='"+rs.getString(2)+"'></input></td></tr>");
out.print("<tr><td><B>Party Name:</B></td><td><input type='text' name='pname' value='"+rs.getString(4)+"'></input></td></tr>");
out.print("<tr><td><B>Detail:</B></td><td><input type='text' name='detail' value='"+rs.getString(5)+"'></input></td></tr>");
out.print("<tr><td><B>Case Detail:</B></td><td><textarea rows='5' cols='22' name='casedetail'>"+rs.getString(8)+"</textarea></td></tr>");
out.print("<tr><td><B>Enter Email:</B></td><td><input type='text' name='email' ></input></td></tr>");

out.print("<tr><td><B>Hearing Date:</B></td><td><input type='date' name='hearingdate' ></input></td></tr>");


out.print("<tr><td></td><td><input style='padding:3px 3px' value=' Save' type='submit'></td></tr>");


out.print("</form>");
}

con.close();
}catch(Exception e){e.printStackTrace();}
}//end of if
%>
</body>
</html>
