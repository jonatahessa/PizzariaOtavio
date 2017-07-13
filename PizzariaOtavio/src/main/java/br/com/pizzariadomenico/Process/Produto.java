/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.pizzariadomenico.Process;

/**
 *
 * @author jonat
 */
public class Produto {
    
    private int codigo;
    private String nome;
    private String descricao;
    private String precoBroto;
    private String precoComum;
    private String ativo;
    private String tipo;

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getPrecoBroto() {
        return precoBroto;
    }

    public void setPrecoBroto(String precoBroto) {
        this.precoBroto = precoBroto;
    }

    public String getPrecoComum() {
        return precoComum;
    }

    public void setPrecoComum(String precoComum) {
        this.precoComum = precoComum;
    }
    
    public String getAtivo() {
        return ativo;
    }

    public void setAtivo(String ativo) {
        this.ativo = ativo;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
    
    
    
}
