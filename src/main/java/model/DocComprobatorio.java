package model;

import java.time.LocalDate;

public class DocComprobatorio {
    private String urldocumento;
    private LocalDate datadeInclusao;

    public DocComprobatorio(String urldocumento, LocalDate datadeInclusao) {
        this.urldocumento = urldocumento;
        this.datadeInclusao = datadeInclusao;
    }

    public String getUrldocumento() {
        return urldocumento;
    }

    public void setUrldocumento(String urldocumento) {
        this.urldocumento = urldocumento;
    }

    public LocalDate getDatadeInclusao() {
        return datadeInclusao;
    }

    public void setDatadeInclusao(LocalDate datadeInclusao) {
        this.datadeInclusao = datadeInclusao;
    }
}