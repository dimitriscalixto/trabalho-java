package br.ufac.sgcm.model;

import java.io.Serializable;

public class Unidade implements Serializable {
    private Long id;
    private String nome;
    private String endereco;

    public Unidade() {

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

}
