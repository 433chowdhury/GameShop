/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gameshop.gamersden;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Tawhid
 */
public class Registration extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
        int userid=Integer.parseInt(request.getParameter("userid"));
        String firstname=request.getParameter("firstname");
        String lastname=request.getParameter("lastname");
        String username=request.getParameter("username");
        String email=request.getParameter("email");
        String address=request.getParameter("address");
        String password=request.getParameter("pass1");
        if(!(password.equals(request.getParameter("pass2"))))
        {
            RequestDispatcher rd=request.getRequestDispatcher("Registration.jsp");
            rd.forward(request,response);
        }
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
        Statement st=con.createStatement();
        String sql="INSERT INTO user (userid, firstname, lastname, username, email, address, password) VALUES (?,?,?,?,?,?,?)";
        PreparedStatement pst=con.prepareStatement(sql);
        pst.setInt(1, userid);
        pst.setString(2, firstname);
        pst.setString(3, lastname);
        pst.setString(4, username);
        pst.setString(5, email);
        pst.setString(6, address);
        pst.setString(7, password);
        pst.executeUpdate();
        PrintWriter out=response.getWriter();
         out.println("<html><body>");
        out.println("<center><h1><strong>Registration Successful</strong></h1></center>");
        out.println("<center><a href=\"Home.jsp\"><strong style=\"color:brown;\">I WANT TO GO BACK HOME</strong></a></center>");
        out.println("</body></html>");
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
