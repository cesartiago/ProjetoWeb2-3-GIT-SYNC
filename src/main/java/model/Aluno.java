package model;

public class Aluno extends Usuario {
    public Aluno(int id, String login, String senha, String matricula, String nome, String email, String perfil) {
        super(id, login, senha, matricula, nome, email, perfil);
        /*o super é utilizado no construtor para chamar o construtor da superclasse (no caso, a classe Usuario)
         * e passar os parâmetros necessários para inicializar os atributos herdados. O super() indica que o construtor da superclasse
         * deve ser chamado antes do código dentro do construtor da subclasse.
Isso permite que a classe Aluno tenha todos esses atributos herdados da classe Usuario e que possam ser acessados através dos getters e setters correspondentes.*/
    }

	public Aluno(int id, String nome, String senha) {
		// TODO Auto-generated constructor stub
		//mais simples
		super(id,nome, senha);
	}
}