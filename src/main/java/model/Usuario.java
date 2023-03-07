package model;

public class Usuario {
    private int id;
    private String login;
    private String nome;
    private String senha;
    private String matricula;
    private String email;
    private String perfil;
    
    // construtor
    public Usuario(int id, String login, String senha, String matricula, String nome, String email, String perfil) {
        this.id = id;
        this.login = login;
        this.senha = senha;
        this.matricula = matricula;
        this.nome = nome;
        this.email = email;
        this.perfil = perfil;
    }
    // construtor simples de login
    public Usuario(String nome2, String senha2) {
		// TODO Auto-generated constructor stub
    	this.nome= nome2;
    	this.senha= senha2;
	}

	// getters e setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPerfil() {
        return perfil;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }
}