package br.ufac.sgcm.controller;

import java.util.List;

public interface IController<T> {
    List<T> get();

    T get(Long id);

    List<T> get(String termoBusca);

    int delete(T objeto);

    int save(T objeto); // insert e update

}
