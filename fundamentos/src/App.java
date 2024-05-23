package fundamentos.src;

import java.util.ArrayList;
import java.util.List;

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
        Aluno aluno1 = new Aluno();
        aluno1.setNome("Carlos");
        aluno1.setEmail("carlos@ufac.br");
        aluno1.setMatricula(123456);
        System.out.println(aluno1.getNome());

        // Testando Quadriláteros
        Quadrado q1 = new Quadrado(5);
        System.out.println(q1.calcularArea());
        System.out.println(q1.calcularArea(5));
        Retangulo r1 = new Retangulo(5, 10);
        System.out.println(r1.calcularArea());
        List<IQuadrilatero> lista = new ArrayList<IQuadrilatero>();
        lista.add(q1);
        lista.add(r1);
        double soma = 0;
        for (IQuadrilatero item : lista) {
            soma += item.calcularArea();
        }
        System.out.println(soma);
        // Quadrilatero teste = new Quadrilatero();//Não pode instanciar
    }

}
