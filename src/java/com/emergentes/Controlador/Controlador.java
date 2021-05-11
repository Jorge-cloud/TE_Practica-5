package com.emergentes.Controlador;
import com.emergentes.dao.PostsDAO;
import com.emergentes.dao.PostsDAOimpl;
import com.emergentes.modelo.Posts;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jorge
 */
@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            PostsDAO dao = new PostsDAOimpl();
            int id;
            Posts post = new Posts();
            String action = (request.getParameter("action") != null ? request.getParameter("action"):"view");
            
            switch(action){
                case "add":
                    request.setAttribute("post", post);
                    request.getRequestDispatcher("nuevo_post.jsp").forward(request, response);
                    break;
                case "edit":
                    id = Integer.parseInt(request.getParameter("id"));
                    post = dao.getById(id);
                    System.out.println(post);
                    request.setAttribute("post", post);
                    
                    request.getRequestDispatcher("nuevo_post.jsp").forward(request, response);
                    break;
                case "delete":
                    id = Integer.parseInt(request.getParameter("id"));
                    dao.delete(id);
                    response.sendRedirect(request.getContextPath()+"/Controlador");
                    break;
                case "view":
                    List<Posts> lista = dao.getAll();
                    request.setAttribute("post", lista);
                    request.getRequestDispatcher("blog.jsp").forward(request, response);
                default:
                    break;
            }
        } catch (Exception ex) {
            System.out.println("Error " +ex.getMessage());
        }
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id = Integer.parseInt(request.getParameter("id"));
        String fecha = request.getParameter("fecha");
        String titulo = request.getParameter("titulo");
        String contenido = request.getParameter("contenido");
        
        Posts avi = new Posts();
        avi.setId(id);
        avi.setFecha(fecha);
        avi.setTitulo(titulo);
        avi.setContenido(contenido);
        
        if(id == 0){
            try {
                PostsDAO dao = new PostsDAOimpl();
                dao.insert(avi);
                response.sendRedirect(request.getContextPath()+"/Controlador");
            } catch (Exception ex) {
                System.out.println("Error "+ ex.getMessage());
            }
        }else{
            try {
                PostsDAO dao = new PostsDAOimpl();
                dao.update(avi);
                response.sendRedirect(request.getContextPath()+"/Controlador");
            } catch (Exception ex) {
                System.out.println("Error " +ex.getMessage());
            }
        }
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
