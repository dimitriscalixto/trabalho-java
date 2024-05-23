package fundamentos.src;

public class Aluno extends Pessoa { // Subclasse
    private int matricula;

    public int getMatricula() {
        return this.matricula;
    }

    public void setMatricula(int mat) {
        this.matricula = mat;
    }
}
