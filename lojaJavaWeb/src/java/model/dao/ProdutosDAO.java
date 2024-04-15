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
import model.bean.Produtos;

/**
 *
 * @author Bruno
 */
public class ProdutosDAO {
        public List<Produtos> ler() {
        List<Produtos> produtos = new ArrayList();
        
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;
            
            stmt = conexao.prepareStatement("SELECT * FROM produtos");
            rs = stmt.executeQuery();
            
            while(rs.next()){
                Produtos produto = new Produtos();
                produto.setImg(rs.getByte("image"));
                produto.setNome(rs.getString("nome"));
                produto.setCategoria(rs.getString("categoria"));
                produto.setQuantidade(rs.getInt("quantidade"));
                produto.setPreco(rs.getFloat("preço"));
                produtos.add(produto);
            }
            rs.close();
            stmt.close();
            conexao.close();
            
        } catch(SQLException e){
            e.printStackTrace();
        }        
        return produtos;
    }
    
}
