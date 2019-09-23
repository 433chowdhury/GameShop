/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gameshop.gamersden;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Tawhid
 */
public class UploadGames extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try 
        {
            PrintWriter out=response.getWriter();
            String gamename=request.getParameter("gamename");
            int gameid=Integer.parseInt(request.getParameter("gameid"));
            String picturename=request.getParameter("file");
            int price=Integer.parseInt(request.getParameter("price"));
            int count=Integer.parseInt(request.getParameter("count"));
            int pc=Integer.parseInt(request.getParameter("pc"));
            int xbox=Integer.parseInt(request.getParameter("xbox"));
            int ps4=Integer.parseInt(request.getParameter("ps4"));
            String catagory=request.getParameter("catagory");
            Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
        Statement st=con.createStatement();
        String sql="INSERT INTO games(gameid, gamename, picturename, price, pc, xbox, ps4, count, catagory) VALUES (?,?,?,?,?,?,?,?,?)";
        PreparedStatement pst=con.prepareStatement(sql);
        pst.setInt(1, gameid);
        pst.setString(2, gamename);
        pst.setString(3, picturename);
        pst.setInt(4, price);
        pst.setInt(5, pc);
        pst.setInt(6, xbox);
        pst.setInt(7, ps4);
        pst.setInt(8, count);
        pst.setString(9, catagory);
        pst.executeUpdate();
        ResultSet rs=st.executeQuery("SELECT gamename FROM games where gameid="+gameid+"");
        if(rs.next())
        {
            if(rs.getString("gamename").equals(gamename))
            {
                out.println("<html><body>");
                    out.println("<center><h1 style=\"color:green\"><strong>Upload Successful</strong></h1></center>");
                    out.println("<center><a href=\"Home.jsp\"><strong style=\"color:brown;\">GO BACK TO HOME</strong></a></center>");
                    out.println("</body></html>");
            }
        }
        else
        {
            out.println("<html><body>");
                    out.println("<center><h1 style=\"color:red\"><strong>Unload Unsuccessful</strong></h1></center>");
                    out.println("<br><center style=\"color:red\"><strong>Input unique Gameid and other unique field</strong></center>");
                    out.println("<br><br><center><a href=\"UploadGames.jsp\"><strong style=\"color:brown;\">GO BACK TO UPLOAD PAGE</strong></a></center>");
                    out.println("<br><center><a href=\"Home.jsp\"><strong style=\"color:brown;\">GO TO HOME PAGE</strong></a></center>");
                    out.println("</body></html>");
        }
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
