package exemplos;

public class App {
    public static void main(String[] args) {
        Pessoa pessoa1 = new Pessoa();
        pessoa1.setNome("Limeira");
        System.out.println(pessoa1.getNome());
        // pessoa1.email = "limeira@ufac.br";
        // System.out.println(pessoa1.email);
        Pessoa pessoa2 = new Pessoa();
        pessoa2.setNome("Limeira");
        if (pessoa1 != pessoa2) {
            System.out.println("Referências diferentes");
        }
    }
}
