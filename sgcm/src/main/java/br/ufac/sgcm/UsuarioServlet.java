package br.ufac.sgcm;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import br.ufac.sgcm.dao.UsuarioDao;

import br.ufac.sgcm.model.Usuario;

public class UsuarioServlet extends HttpServlet {
    public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
        String nomeUsuario = req.getParameter("usuario");
        String senhaUsuario= req.getParameter("senha");
        UsuarioDao uDao = new UsuarioDao();
        Usuario login = uDao.get(nomeUsuario,senhaUsuario);
        PrintWriter saida = res.getWriter();
        if (login.getNomeUsuario() != null){
            res.sendRedirect("index.jsp");
        }
        else{
        
            res.sendRedirect("login.jsp?errorMessage=Nome de usuário ou senha inválidos");
           
        }
        
    }
}
