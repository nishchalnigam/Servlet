package mbs;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;


public class Servlet1 extends HttpServlet {
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

      String DB_URL="jdbc:derby://localhost:1527/student";

      //  Database credentials
      String USER = "nishchal";
      String PASS = "nishchal";

      
      response.setContentType("text/html;charset=UTF-8");
       
        HttpSession session=request.getSession(true);
        
      response.setContentType("text/html");
      PrintWriter out = response.getWriter();
      String title = "Database Result";
      
      String docType =
         "<!doctype html public \"-//w3c//dtd html 4.0 " + "transitional//en\">\n";
      
      out.println(docType +
         "<html>\n" +
         "<head><title>" + title + "</title></head>\n" +
         "<body bgcolor = \"#f0f0f0\">\n" +
         "<h1 align = \"center\">" + title + "</h1>\n");
      
      Statement stmt=null;
      Connection conn=null;
      try {
        DriverManager.registerDriver(new org.apache.derby.jdbc.EmbeddedDriver());
        Class.forName("org.apache.derby.jdbc.ClientDriver");
         // Open a connection
         conn = DriverManager.getConnection(DB_URL, USER, PASS);

         // Execute SQL query
         stmt = conn.createStatement();
         String sql;
         sql = "SELECT USERID, PASSWORD FROM Login where USERID = '" + request.getParameter("name") + "'";
         
        ResultSet rs = stmt.executeQuery(sql);
        
        //Check if user exists
        if (rs.next() == false) 
        { 
            out.println("The user " + request.getParameter("name") + " does not exist<br>");
        }
        
        else
         {
            String password = rs.getString("PASSWORD");
            if (password.equals(request.getParameter("password")))
            {
               session.setAttribute("username",request.getParameter("name"));
               response.sendRedirect("welcome.jsp");
            }
            
            else
                out.println("The password for the user " + request.getParameter("name") + " is wrong<br>");
            
         }
         out.println("</body></html>");

         // Clean-up environment
         rs.close();
         stmt.close();
         conn.close();
      } catch(SQLException se) {
          //Handle errors for JDBC

      } catch(IOException e) {
          //Handle errors for Class.forName

      } catch (ClassNotFoundException e) {
            //Handle errors for Class.forName
        } finally {
         //finally block used to close resources
         try {
            if(stmt!=null)
               stmt.close();
         } catch(SQLException se2) {
         } // nothing we can do
         try {
            if(conn!=null)
            conn.close();
         } catch(SQLException se) {
         } //end finally try
      } //end try
   }
}
