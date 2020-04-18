/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author parth
 */
public class verify extends HttpServlet {

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   //     processRequest(request, response);
    response.setContentType("text/html");
    PrintWriter out=response.getWriter();
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    String type=request.getParameter("type");
    HttpSession hs=request.getSession();
    try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
            //out.println("username="+username+"</br>");
            
     
    if(type.equals("Developer")){
        //out.println("perform this");
        Statement stmt=conn.createStatement();
        ResultSet rs=stmt.executeQuery("select * from developer_reg");
        //out.println("perform this second");
        //out.println("username="+rs.getString("NAME")+"</br>");
       // if(rs.getString(9).equals(password)){
            while(rs.next()){
               if(rs.getString("PASSWORD").equals(password)){
               //out.println("Complete");
               hs.setAttribute("name",username);
               hs.setAttribute("skills",rs.getString("SKILLS"));
               hs.setAttribute("experience",rs.getString("EXPERIENCE"));
               hs.setAttribute("mobno",rs.getString("MOB_NO"));
               hs.setAttribute("email",rs.getString("EMAIL"));
               hs.setAttribute("baseprice",rs.getString("BASE_PRICE"));
               hs.setAttribute("projects",rs.getString("PROJECTS"));
               hs.setAttribute("income",rs.getString("TOTAL_INCOME"));
               RequestDispatcher rd=request.getRequestDispatcher("developerhome.jsp");
                       rd.forward(request, response);
        }else{ out.println("<script>window.location.href='login.html'; alert('Wrong Username or password..');</script>");
               RequestDispatcher rd=request.getRequestDispatcher("login.html");
                       rd.include(request, response);}
                }
            }else{
        out.println("<script>window.location.href='login.html'; alert('Wrong Username or password..');</script>");
               RequestDispatcher rd=request.getRequestDispatcher("login.html");
                       rd.include(request, response);
    }
            //out.println("Complete..");
   }    catch (SQLException ex) {
             //out.println("FAild connect");
              out.println("Exception:"+ex.getMessage());
            Logger.getLogger(verify.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
             out.println(ex.getMessage());
            Logger.getLogger(verify.class.getName()).log(Level.SEVERE, null, ex);
        }
}
}