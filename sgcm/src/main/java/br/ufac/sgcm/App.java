package br.ufac.sgcm;

import java.sql.Connection;

import br.ufac.sgcm.dao.ConexaoDB;
import br.ufac.sgcm.model.Especialidade;
import br.ufac.sgcm.model.Profissional;
import br.ufac.sgcm.model.Unidade;

public class App {
    public static void main(String[] args) {
        Profissional p1 = new Profissional();
        p1.setId(1L);
        p1.setNome("Limeira");
        p1.setEmail("limeira@ufac.br");
        p1.setTelefone("999999999");
        p1.setRegistro("CRM-123");

        Unidade u1 = new Unidade();
        u1.setId(1L);
        u1.setNome("Pronto Atendimento");
        u1.setEndereco("Av. Rocha Viana");

        Especialidade e1 = new Especialidade();
        e1.setId(1L);
        e1.setNome("Pediatra");

        p1.setUnidade(u1);
        p1.setEspecialidade(e1);

        System.out.println(p1.getNome());
        System.out.println(p1.getUnidade().getNome());
        System.out.println(p1.getEspecialidade().getNome());
        ConexaoDB conexao = new ConexaoDB();
        Connection instancia = conexao.getConexao();
        if (instancia != null) {
            System.out.println("Conectou");
        } else {
            System.out.println("Falhou");
        }
    }
}
