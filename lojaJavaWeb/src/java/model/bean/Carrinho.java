/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.bean;

/**
 *
 * @author Bruno
 */
public class Carrinho {
    private byte img;
    private int id_compra;
    private int id_cliente;
    private String produto;
    private float preco;
    private int quantidade;
    private float total = preco * quantidade;

    public Carrinho() {
    }

    public Carrinho(byte img, int id_compra, int id_cliente, String produto, float preco, int quantidade) {
        this.img = img;
        this.id_compra = id_compra;
        this.id_cliente = id_cliente;
        this.produto = produto;
        this.preco = preco;
        this.quantidade = quantidade;
    }

    public byte getImg() {
        return img;
    }

    public void setImg(byte img) {
        this.img = img;
    }

    public int getId_compra() {
        return id_compra;
    }

    public void setId_compra(int id_compra) {
        this.id_compra = id_compra;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getProduto() {
        return produto;
    }

    public void setProduto(String produto) {
        this.produto = produto;
    }

    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

}
