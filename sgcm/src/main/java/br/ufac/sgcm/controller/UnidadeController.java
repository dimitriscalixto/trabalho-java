package br.ufac.sgcm.controller;

import br.ufac.sgcm.dao.UnidadeDao;
import br.ufac.sgcm.model.Unidade;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


public class UnidadeController implements IController<Unidade> {
  private UnidadeDao uDao;
  

  public UnidadeController() {
    uDao = new UnidadeDao();
  }

  @Override
  public int delete(Unidade objeto) {
    int registrosAfetados = uDao.delete(objeto);
    return registrosAfetados;
  }

  @Override
  public List<Unidade> get() {
    List<Unidade> registros = uDao.get();
    return registros;
  }

  @Override
  public Unidade get(Long id) {
    Unidade registro = uDao.get(id);
    return registro;
  }
  @Override
    public List<Unidade> get(String termoBusca) {
        List<Unidade> registros = uDao.get(termoBusca);
        return registros;
    }
    @Override
    public int save(Unidade objeto) {
        int registrosAfetados = 0;
        if(objeto.getId() == null)
          registrosAfetados= uDao.insert(objeto);
        else
          registrosAfetados= uDao.update(objeto);
        return registrosAfetados;
    }
    @Override
    public List<Unidade> processListRequest(HttpServletRequest req){
      List<Unidade> registros = new ArrayList<>();
      String paramExcluir = req.getParameter("excluir");
      if(paramExcluir != null && !paramExcluir.isEmpty()){
          Unidade unidade = new Unidade();
          Long id = Long.parseLong(paramExcluir);
          unidade = this.get(id);
          this.delete(unidade);
      }
      registros = this.get();
      return registros;
  }
  @Override
  public Unidade processFormRequest(HttpServletRequest req, HttpServletResponse res) {
      Unidade item = new Unidade();
      String submit = req.getParameter("submit");
      String paramId = req.getParameter("id");
      if(paramId != null && !paramId.isEmpty()){
          Long id = Long.parseLong(paramId);
          item.setId(id);
      }
      if(submit != null){
          item.setNome(req.getParameter("nome"));
          item.setEndereco(req.getParameter("endereco"));
          this.save(item);
      }
      try {
          res.sendRedirect("unidades.jsp");
      } catch (IOException e) {
          e.printStackTrace();
      }
      return item;
  }
}
