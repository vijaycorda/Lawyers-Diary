package lawyersdiary.co;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.Properties;    
import javax.mail.*;    
import javax.mail.internet.*; 

import javax.servlet.http.HttpSession;


public class email extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        /*public static void send(String[] email1){  
        	
        	  Message message = new MimeMessage(session);
        	InternetAddress[] address = new InternetAddress[email.size()];
            for (int i = 0; i < email.size(); i++) {
                address[i] = new InternetAddress(email.get(i));
            }
             message.setRecipients(Message.RecipientType.TO, address);
        	
        }*/
       String[] email=request.getParameterValues("email");
       for( String to:email){
  	     SendMail.send("vijaycorda@gmail.com","vijayc123555",to,"Attend to Court Today","today is yor hearing date please attend the court on time ");  

       }
       response.sendRedirect("home.jsp");
      
        	   
        	     //from,password,to,subject,message  
        	     //change from, password and to  
        	    
        	
        
    }   
}