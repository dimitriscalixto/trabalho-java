package fundamentos.src;

public class Retangulo implements IQuadrilatero {
    private int b;
    private int h;

    public Retangulo(int b, int h) {
        this.b = b;
        this.h = h;
    }

    public double calcularArea() {
        return this.b * this.h;
    }

}
