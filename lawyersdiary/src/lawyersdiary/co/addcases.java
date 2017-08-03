package lawyersdiary.co;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public class addcases extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
 
        out.print("You are successfully registered...");
        String cn= request.getParameter("caseno");
        String n= request.getParameter("name");
        String te= request.getParameter("ptype");
        String pn = request.getParameter("pname");
        String pd = request.getParameter("partydetail");
        String on = request.getParameter("opname");
        String d=request.getParameter("hdate");
        String cd=request.getParameter("Description");
        String st=request.getParameter("status");
        String cdate=" ";
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lawyer", "root", "root");
 
            PreparedStatement ps = con.prepareStatement("insert into cases values(?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, cn);
            ps.setString(2, n);
            ps.setString(3, te);
            ps.setString(4, pn);
            ps.setString(5, pd);
            ps.setString(6, on);
            ps.setString(7, d);
            ps.setString(8, cd);
            ps.setString(9, st);
            ps.setString(10, cdate);
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
