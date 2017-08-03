package lawyersdiary.co;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class searchmails extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

	
	
	
	
	
	try{  
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lawyer","root","root");
		Statement st=con.createStatement();
	        String sDate1=request.getParameter("date");  
	          
	/*        Date date1=new SimpleDateFormat("yyyy-mm-dd").parse(sDate1);  
	*/        
	        System.out.println(sDate1);  
	       
	        
	PreparedStatement ps=con.prepareStatement("select * from hearing where date='"+sDate1+"' ");  
	 
	out.print("<form action='email' method='post' name='myform' id='myform'>");
	out.print("<br><br><br><br><br><br>");
	out.print("<center><table width=50% border=1>");  
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
	     ArrayList email1= new ArrayList();
	while(rs.next())  
	{  
	out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td><input type='text' size='40' name='email' value='"+rs.getString(7)+"'></input></td></tr>");  
	                  
	}  
	
	out.print("</table></center>"); 
	out.print("<tr><td></td><td><center><input style='padding:3px 3px' value='send email' type='submit'></center></td></tr>");
/*	while(rs.next())
	{
		email1.add(rs.getString("email"));
	}
email.send("email");*/
	//out.print("<a href='home.jsp'><button  >home</button></a>");
	out.print("</form>");
	
	        
	}catch (Exception e2) {e2.printStackTrace();} 

    }
}

