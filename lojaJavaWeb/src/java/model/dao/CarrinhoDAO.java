/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.Carrinho;
import model.bean.Usuarios;

/**
 *
 * @author Bruno
 */
public class CarrinhoDAO {

    public List<Carrinho> listarCarrinho() {
        List<Carrinho> carrinho = new ArrayList();

        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM carrinho");
            rs = stmt.executeQuery();

            while (rs.next()) {
                Carrinho produto = new Carrinho();
                produto.setImg(rs.getByte("image"));
                produto.setProduto(rs.getString("produto"));
                produto.setPreco(rs.getFloat("preco"));
                produto.setQuantidade(rs.getInt("quantidade"));
                produto.setTotal(rs.getFloat("total"));                

                carrinho.add(produto);
            }
            rs.close();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return carrinho;

    }

    public void adicionarProduto(Carrinho compra) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("INSERT INTO carrinho (image, id_cliente, produto, preço, quantidade, total) VALUES (?, ?, ?, ?, ?, ?)");
            stmt.setByte(1, compra.getImg());
            stmt.setInt(2, compra.getId_cliente());
            stmt.setString(3, compra.getProduto());
            stmt.setFloat(4, compra.getPreco());
            stmt.setInt(5, compra.getQuantidade());
            stmt.setFloat(6, compra.getTotal());

            stmt.executeUpdate();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
