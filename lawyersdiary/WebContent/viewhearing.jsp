<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<html>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%

try{  
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lawyer","root","root");
	Statement st=con.createStatement();
        String d=request.getParameter("date");  
        
PreparedStatement ps=con.prepareStatement("select * from hearing  ");  
 
out.print("<br><br><br><br><br><br>");                 
out.print("<center><table width=50% border=1 bgcolor=white>");  
out.print("<caption>Result:</caption>");  
  
ResultSet rs=ps.executeQuery();  
              
/* Printing column names */  
ResultSetMetaData rsmd=rs.getMetaData();  
int total=rsmd.getColumnCount();  
out.print("<tr>");  
for(int i=1;i<=total;i++)  
{  
out.print("<th>"+rsmd.getColumnName(i)+"</th>");  
}  
  
out.print("</tr>");  
              
/* Printing result */  
  
while(rs.next())  
{  
out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td></tr>");  
                  
}  
out.print("</table></center>"); 

out.print("<a href='home.jsp'><center><button  >home</button></center></a>");

              
}catch (Exception e2) {e2.printStackTrace();}  
          
%>  
  