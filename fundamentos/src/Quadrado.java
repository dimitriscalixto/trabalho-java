package fundamentos.src;

public class Quadrado implements IQuadrilatero {
    private int lado;

    // Construtor: bloco de código que serve
    // para inicializar os objetos da classe
    public Quadrado(int l) {
        this.lado = l;
    }

    // Implementação obrigatória
    public double calcularArea() {
        return this.lado * this.lado;
    }

    // Sobrecarga de método
    public double calcularArea(int diagonal) {
        return (double) (diagonal * diagonal) / 2;
    }
}
