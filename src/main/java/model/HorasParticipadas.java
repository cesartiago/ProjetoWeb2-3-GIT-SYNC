package model;

import java.time.LocalDate; //import para o tipo localdate

public class HorasParticipadas {
    private int id;
    private int qtdHoras;
    private LocalDate data; //exemplo de uso: LocalDate data = LocalDate.of(2023, 7, 6); // representa a data de 06/07/2020

    public HorasParticipadas() {
    	/*o construtor vazio, ele é utilizado para criar um objeto sem parâmetros iniciais,
    	 * o que é comum em projetos web quando os valores serão setados posteriormente a partir de informações vindas
    	 * do usuário ou do banco de dados.*/
    }

    public HorasParticipadas(int id, int qtdHoras, LocalDate data) {
        this.id = id;
        this.qtdHoras = qtdHoras;
        this.data = data;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQtdHoras() {
        return qtdHoras;
    }

    public void setQtdHoras(int qtdHoras) {
        this.qtdHoras = qtdHoras;
    }

    public LocalDate getData() {
        return data;
    }

    public void setData(LocalDate data) {
        this.data = data;
    }
}