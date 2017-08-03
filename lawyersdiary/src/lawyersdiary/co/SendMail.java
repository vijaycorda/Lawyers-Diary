package lawyersdiary.co;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;    
import javax.mail.*;    
import javax.mail.internet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;    
class SendMail {  
	
	
    public static void send (String from,String password,String to,String sub,String msg) throws IOException{
    	
          //Get properties object  duh
  //  System.out.println("hsd");
    	 
          Properties props = new Properties();    
          

          props.put("mail.smtp.host", "smtp.gmail.com");    
      //    props.put("mail.smtp.socketFactory.port", "465");    
          props.put("mail.smtp.socketFactory.port", "465"); 
          props.put("mail.smtp.socketFactory.class",    
                    "javax.net.ssl.SSLSocketFactory");    
          props.put("mail.smtp.auth", "true");    
  //        props.put("mail.smtp.port", "465");    
          props.put("mail.smtp.port", "465");   
          //get Session   
  //        System.out.println("hsd");
        //  Session session = Session.getDefaultInstance(props,   
        		   Session session = Session.getInstance(props,    
           new javax.mail.Authenticator() {    
           protected PasswordAuthentication getPasswordAuthentication() {    
           return new PasswordAuthentication(from,password);  
           }    
          });    
      //    System.out.println("hsd");
          //compose message    
          try {    
           MimeMessage message = new MimeMessage(session);    
           message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));    
           message.setSubject(sub);    
           message.setText(msg);    
           //send message  
       //    System.out.println("hsd");
           Transport.send(message); 
           System.out.println("hsd");
           System.out.println("message sent successfully"); 
           return;
         
          }
          catch (MessagingException e)
          {
        	  System.out.println(e);
        	//  throw new RuntimeException(e);
        	  }    
             
    }  
}  