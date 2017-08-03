package lawyersdiary.co;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public class myclients extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
 
        out.print("You are successfully registered...");
        
        String n= request.getParameter("pname");
        String e= request.getParameter("email");
        String p = request.getParameter("phone");
        String a = request.getParameter("address");
    
 
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lawyer", "root", "root");
 
            PreparedStatement ps = con.prepareStatement("insert into clients values(?,?,?,?)");
 
            ps.setString(1, n);
            ps.setString(2, e);
            ps.setString(3, p);
            ps.setString(4, a);
      
           
 
            int i = ps.executeUpdate();
            if (i > 0){
               // out.print("You are successfully registered...");
            	response.sendRedirect("home.jsp");
            }else
            {
            	out.println("invalid");
            }
        } catch (Exception e2) {
        	
            System.out.println(e2);
        }
 
        out.close();
    }
 
}
