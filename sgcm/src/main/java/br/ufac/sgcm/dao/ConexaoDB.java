package br.ufac.sgcm.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoDB {

    private Connection con;
    private static ConexaoDB instancia;

    public ConexaoDB() {
        try {
            String url = "jdbc:mysql://localhost/sgcm";
            String usuario = "root";
            String senha = "root";
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, usuario, senha);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConexao() {
        if (instancia == null) {
            instancia = new ConexaoDB();
        }
        return instancia.con; // Retornar uma variável estática
    }

}
