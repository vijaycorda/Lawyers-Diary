package lawyersdiary.co;

import javax.servlet.http.*;
import javax.servlet.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
 
/**
 * Servlet implementation class MySQLConnect
 */
 
public class index extends HttpServlet {
 
    private static final long serialVersionUID = 1L;
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        System.out.println(email);
        System.out.println(password);
        out.print("You are successfully registered...");
        
       
        try{
          if(email.equals("admin")&& password.equals("admin") ) 
          {
        	  response.sendRedirect("home.jsp"); 
          }else{
        	  response.sendRedirect("index.jsp"); 
          }
       }
       catch(Exception e){       
           out.println("Something went wrong !! Please try again");  
           response.sendRedirect("index.jsp");
       }      
        out.close();
    }
    
}