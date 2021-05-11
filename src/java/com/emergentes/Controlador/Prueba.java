/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emergentes.Controlador;

import com.emergentes.dao.UsuariosDAO;
import com.emergentes.dao.UsuariosDAOimpl;
import com.emergentes.modelo.Usuarios;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jorge
 */
@WebServlet(name = "Prueba", urlPatterns = {"/Prueba"})
public class Prueba extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int bandera=0;
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");
        
        Usuarios us=new Usuarios();
        
        us.setUsuario(usuario);
        us.setPassword(password);
        try {
            UsuariosDAO dao=new UsuariosDAOimpl();
            if (dao.autenticar(us)) {
                response.sendRedirect(request.getContextPath()+"/Controlador");
            }else{
                request.setAttribute("bandera", bandera);
                
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
            
        } catch (Exception ex) {
            System.out.println("Error " +ex.getMessage());
        }
        
        System.out.println("datos recibidos son usuario: "+usuario+" password: "+password);
        
        
        
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
