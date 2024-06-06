package br.ufac.sgcm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.ufac.sgcm.model.Usuario;

public class UsuarioDao {

        private Connection conexao;
        private PreparedStatement ps;
        private ResultSet rs;
        
        public UsuarioDao(){
            conexao = ConexaoDB.getConexao();
        }

        public List<Usuario> get(){
            List<Usuario> registros = new ArrayList<>();
            String sql = "SELECT * FROM usuario";
            try {
                ps = conexao.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()){
                    Usuario registro = new Usuario();
                    registro.setId(rs.getLong("id"));
                    registro.setAtivo(rs.getInt("ativo"));
                    registro.setNomeCompleto(rs.getString("nome_completo"));
                    registro.setNomeUsuario(rs.getString("nome_usuario"));
                    registro.setPapel(rs.getString("papel"));
                    registro.setSenha(rs.getString("senha"));
                    registros.add(registro);
                } 
            } catch (SQLException e){
                e.printStackTrace();
            }
            return registros;

        }
        
        public Usuario get(String nomeUsuario, String senhausuario){
            Usuario login= new Usuario();
            String sql = "SELECT * FROM usuario WHERE nome_usuario = ? AND senha = ?";
            try{
                ps = conexao.prepareStatement(sql);
                ps.setString(1, nomeUsuario);
                ps.setString(2, senhausuario);
                rs = ps.executeQuery();
                if (rs.next()){
                    login.setId(rs.getLong("id"));
                    login.setNomeUsuario(rs.getString("nome_usuario"));
                    login.setNomeCompleto(rs.getString("nome_completo"));
                    login.setAtivo(rs.getInt("ativo"));
                    login.setPapel(rs.getString("papel"));
                    login.setSenha(rs.getString("senha"));
                }
            }catch (SQLException e){
                e.printStackTrace();
            }
            return login;
        }

        public Usuario getId(Long id){
            Usuario login= new Usuario();
            String sql = "SELECT * FROM usuario WHERE id = ?";
            try{
                ps = conexao.prepareStatement(sql);
                ps.setLong(1, id);
                rs = ps.executeQuery();
                if (rs.next()){
                    login.setId(rs.getLong("id"));
                    login.setNomeUsuario(rs.getString("nome_usuario"));
                    login.setNomeCompleto(rs.getString("nome_completo"));
                    login.setAtivo(rs.getInt("ativo"));
                    login.setPapel(rs.getString("papel"));
                    login.setSenha(rs.getString("senha"));
                }
            }catch (SQLException e){
                e.printStackTrace();
            }
            return login;
        }
    
}
