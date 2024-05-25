package br.ufac.sgcm;

import java.sql.Connection;
import java.util.List;

import br.ufac.sgcm.dao.ConexaoDB;
import br.ufac.sgcm.dao.EspecialidadeDao;
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
        e1.setId(13L);
        e1.setNome("Oncologista Alterado 3");

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
        EspecialidadeDao eDao = new EspecialidadeDao();
        List<Especialidade> listaEspecialidade = eDao.get();
        System.out.println("Lista de Especialidades");
        for (Especialidade item : listaEspecialidade) {
            System.out.println(item.getId() + "|" + item.getNome());
        }
        System.out.println("Uma especialidade");
        Especialidade esp = eDao.get(2L);
        System.out.println(esp.getId() + "|" + esp.getNome());
        System.out.println("Lista com termo de busca: gia");
        List<Especialidade> listaBusca = eDao.get("gia");
        for (Especialidade item : listaBusca) {
            System.out.println(item.getId() + "|" + item.getNome());
        }
        // Inserindo uma especialidade
        /*
         * if (eDao.insert(e1) == 1)
         * System.out.println("Especialidade inserida com sucesso!");
         * System.out.println("Lista de Especialidades");
         * listaEspecialidade = eDao.get(); // Recarregando a lista
         * for (Especialidade item : listaEspecialidade) {
         * System.out.println(item.getId() + "|" + item.getNome());
         * }
         */
        // Atualizando uma especialidade
        // eDao.update(e1);
        // System.out.println("Especialidade Alterada: " + eDao.get(13L).getNome());
        // Deletando uma especialidade
        eDao.delete(e1);
        listaEspecialidade = eDao.get();
        System.out.println("Lista de Especialidades");
        for (Especialidade item : listaEspecialidade) {
            System.out.println(item.getId() + "|" + item.getNome());
        }
    }
}
