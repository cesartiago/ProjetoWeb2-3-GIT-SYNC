package model;

public class ParticipadoProjeto {
    private int id;
    private String nome;
    private int numProjeto;
    private int aluno;
    private boolean homologado;
    private boolean ativo;

    public ParticipadoProjeto(int id, String nome, int numProjeto, int aluno, boolean homologado, boolean ativo) {
        this.id = id;
        this.nome = nome;
        this.numProjeto = numProjeto;
        this.aluno = aluno;
        this.homologado = homologado;
        this.ativo = ativo;
    }

    public ParticipadoProjeto() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getNumProjeto() {
        return numProjeto;
    }

    public void setNumProjeto(int numProjeto) {
        this.numProjeto = numProjeto;
    }

    public int getAluno() {
        return aluno;
    }

    public void setAluno(int aluno) {
        this.aluno = aluno;
    }

    public boolean isHomologado() {
        return homologado;
    }

    public void setHomologado(boolean homologado) {
        this.homologado = homologado;
    }

    public boolean isAtivo() {
        return ativo;
    }

    public void setAtivo(boolean ativo) {
        this.ativo = ativo;
    }
}