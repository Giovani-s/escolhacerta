/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.autoparts;

import java.util.ArrayList;

/**
 *
 * @author giova
 */
public class Carrinho {
    private int id_produto;
    private String nome_produto;
    private String detalhes_produto;
    private String imagem_produto;
    private double valor_produto;
    private int quantidade;
    
    public ArrayList<Carrinho> carrinho = new ArrayList();

    public Carrinho() {
    }

    public String getDetalhes_produto() {
        return detalhes_produto;
    }

    public void setDetalhes_produto(String detalhes_produto) {
        this.detalhes_produto = detalhes_produto;
    }

    public String getImagem_produto() {
        return imagem_produto;
    }

    public void setImagem_produto(String imagem_produto) {
        this.imagem_produto = imagem_produto;
    }

    public int getId_produto() {
        return id_produto;
    }

    public void setId_produto(int id_produto) {
        this.id_produto = id_produto;
    }

    public String getNome_produto() {
        return nome_produto;
    }

    public void setNome_produto(String nome_produto) {
        this.nome_produto = nome_produto;
    }

    public double getValor_produto() {
        return valor_produto;
    }

    public void setValor_produto(double valor_produto) {
        this.valor_produto = valor_produto;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    
    
}
