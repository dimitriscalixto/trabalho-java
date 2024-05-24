package fundamentos.src;

public class Pessoa { // Superclasse
    private String nome;
    private String email;

    // Métodos de acesso
    public void setNome(String nome) { // Alterar o nome da pessoa
        this.nome = nome;
    }

    public String getNome() { // Retornar o nome da pessoa
        return this.nome;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return this.email;
    }
}
