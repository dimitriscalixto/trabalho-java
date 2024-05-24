package fundamentos.src;

import java.util.ArrayList;
import java.util.List;

public class Exemplo {
    public static void main(String[] args) {
        int n1 = 10;
        double n2 = 1.5;
        String n4 = "10";
        float n3 = 2.5f;
        boolean status = true;
        String mensagem = "WEB ACADEMY";
        // int soma = n1 + n4; //Não permite operações de tipos diferentes
        double soma = n1 + n2;
        int somaInt = n1 + (int) n2;
        System.out.println(soma);
        System.out.println(somaInt);
        double somaDouble = n1 + Double.parseDouble(n4);
        System.out.println(somaDouble);
        System.out.println(String.valueOf(somaInt));
        System.out.println(mensagem.getClass());
        if (soma > 10) { // Estrutura de decisão if/else
            System.out.println("Maior que 10");
        } else {
            System.out.println("Menor ou igual a 10");
        }
        mensagem = (soma > 10) ? "Maior que 10" : "Menor ou igual a 10";
        System.out.println(mensagem);
        // Arrays
        int[] numeros = new int[5];
        numeros[0] = n1;
        for (int i = 0; i < 5; i++) {
            numeros[i] = i * 2;
        }
        // int[] numeros = { 10, 20, 30, 40, 50 }; //inicializado
        for (int i = 0; i < 5; i++) {
            System.out.println("Posição [" + (i + 1) + "]:" + numeros[i]);
        }
        // Array dinâmico
        List<Integer> n_dinamico = new ArrayList<Integer>();
        n_dinamico.add(25);
        for (int i = 1; i < 11; i++) {
            n_dinamico.add((int) Math.pow((double) i, 3.0));
        }
        n_dinamico.remove(0); // Remove o primeiro
        n_dinamico.remove(n_dinamico.size() - 1); // Remove o último
        n_dinamico.remove(n_dinamico.indexOf(27)); // Remove pelo valor
        for (int item : n_dinamico) {
            System.out.println("Item" + "[" + n_dinamico.indexOf(item) + "]:" + item);
        }

    }
}