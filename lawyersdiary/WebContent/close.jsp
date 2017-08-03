<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<html>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%

//out.print("You are successfully registered...");
String d=request.getParameter("caseno");
String da= request.getParameter("date");

String on = request.getParameter("result");


try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lawyer", "root", "root");
	PreparedStatement ps=con.prepareStatement("update cases set closingdate='"+da+"',status='"+on+"' where caseno= '"+d+"'");

  /*    PreparedStatement ps = con.prepareStatement("insert into hearing values(?,?,?,?,?,?)");
    ps.setString(1, d);
    ps.setString(2, n);
    ps.setString(3, te);
    ps.setString(4, pn);
    ps.setString(5, pd);
    ps.setString(6, on); */ 


int s=ps.executeUpdate();
    response.sendRedirect("home.jsp");
System.out.print(s);
}catch(SQLException e2){
e2.printStackTrace();
}
%>
%>


</body>
</html>