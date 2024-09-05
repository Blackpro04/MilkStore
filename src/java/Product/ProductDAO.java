/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Product;


import Product.ProductDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utils.DBUtils;

/**
 *
 * @author Tony
 */
public class ProductDAO {
    Connection connection;
    PreparedStatement ps;
    ResultSet rs;
 public List<ProductDTO> getAllByIdAndName(String name) {
    List<ProductDTO> pList = new ArrayList<ProductDTO>();
    ProductDTO p;
    String sql = "SELECT * FROM tblProduct WHERE name LIKE ?;";
    try {
        connection = DBUtils.getConnection();
        ps = connection.prepareStatement(sql);
        ps.setString(1, '%' + name + '%');
        
        rs = ps.executeQuery();
        while (rs.next()) {
            p = new ProductDTO(
                    rs.getString("idProduct"), 
                    rs.getString("name"), 
                    rs.getString("description"),
                    rs.getString("type"),
                    rs.getString("image"),
                    rs.getFloat("price"), 
                    rs.getInt("status")
            );
            if(p.getStatus()==1){
                pList.add(p);
            }
            
        }
    } catch (Exception ex) {
        // Handle exception
    }
    
    return pList;
}
public List<ProductDTO> getAllByPriceRange(float minPrice, float maxPrice) throws SQLException {
    List<ProductDTO> pList = new ArrayList<ProductDTO>();
    ProductDTO p;
    String sql = "SELECT * FROM tblProduct WHERE price BETWEEN ? AND ?;";
    try {
        connection = DBUtils.getConnection();
        ps = connection.prepareStatement(sql);
        ps.setFloat(1, minPrice);
        ps.setFloat(2, maxPrice);
        
        rs = ps.executeQuery();
        while (rs.next()) {
            p = new ProductDTO(
                    rs.getString("idProduct"), 
                    rs.getString("name"), 
                    rs.getString("description"),
                    rs.getString("type"),
                    rs.getString("image"),
                    rs.getFloat("price"), 
                    rs.getInt("status")
            );
            if(p.getStatus()==1){
                pList.add(p);
            }
            
        }
    } catch (Exception ex) {
        // Handle exception
    } finally {
        if(ps != null) ps.close();
        if(connection != null) connection.close();
    }
    
    return pList;
} 
 public List<ProductDTO> getAllByType(String type) {
    List<ProductDTO> pList = new ArrayList<ProductDTO>();
    ProductDTO p;
    String sql = "SELECT * FROM tblProduct WHERE type LIKE ?;";
    try {
        connection = DBUtils.getConnection();
        ps = connection.prepareStatement(sql);
        ps.setString(1, '%' + type + '%');
        
        rs = ps.executeQuery();
        while (rs.next()) {
            p = new ProductDTO(
                    rs.getString("idProduct"), 
                    rs.getString("name"), 
                    rs.getString("description"),
                    rs.getString("type"),
                    rs.getString("image"),
                    rs.getFloat("price"), 
                    rs.getInt("status")
            );
            if(p.getStatus()==1){
                pList.add(p);
            }
            
        }
    } catch (Exception ex) {
        // Handle exception
    }
    
    return pList;
}   
public List<ProductDTO> getAllProduct() throws SQLException {
        List<ProductDTO> pList = new ArrayList<ProductDTO>();
        ProductDTO p;
        String sql = "SELECT * FROM tblProduct";
        try {
            connection = DBUtils.getConnection();
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                p = new ProductDTO(
                        rs.getString("idProduct"), 
                        rs.getString("name"), 
                        rs.getString("description"),
                        rs.getString("type"),
                        rs.getString("image"),
                        rs.getFloat("price"), 
                        rs.getInt("status")
                );
                if(p.getStatus()==1){
                    pList.add(p);
                }
                
            }
        } catch (Exception ex) {
            // Handle exception
        } finally {
             if(ps != null) ps.close();
            if(connection != null) connection.close();
        }
        
        return pList;
    }    
    
    
    
    
 public boolean createProduct(ProductDTO p) throws ClassNotFoundException, SQLException {
    String sql = "INSERT INTO tblProduct (idProduct, name, description, type, image, price, status) VALUES (?, ?, ?, ?, ?, ?, ?)";
    boolean response = false;
   
    try {
        connection = DBUtils.getConnection();
        if(connection != null){
            ps = connection.prepareStatement(sql);
            ps.setString(1, p.getIdProduct().trim());
            ps.setString(2, p.getName());
            ps.setString(3, p.getDescription());
            ps.setString(4, p.getType());
            ps.setString(5, p.getImage());
            ps.setFloat(6, p.getPrice());
            ps.setInt(7, p.getStatus());
            response = ps.executeUpdate() > 0;
        }
    } finally {
        if(ps != null) ps.close();
        if(connection != null) connection.close();
    }
    return response;
}
public boolean deleteProduct(String idProduct) throws ClassNotFoundException, SQLException {
    String sql = "DELETE FROM tblProduct WHERE idProduct = ?";
    boolean response = false;
   
    try {
        connection = DBUtils.getConnection();
        if(connection != null){
            ps = connection.prepareStatement(sql);
            ps.setString(1, idProduct.trim());
            response = ps.executeUpdate() > 0;
        }
    } finally {
        if(ps != null) ps.close();
        if(connection != null) connection.close();
    }
    return response;
}
public boolean updateProduct(ProductDTO p) throws ClassNotFoundException, SQLException {
    String sql = "UPDATE tblProduct SET name = ?, description = ?, type = ?, image = ?, price = ?, status = ? WHERE idProduct = ?";
    boolean response = false;
   
    try {
        connection = DBUtils.getConnection();
        if(connection != null){
            ps = connection.prepareStatement(sql);
            ps.setString(1, p.getName());
            ps.setString(2, p.getDescription());
            ps.setString(3, p.getType());
            ps.setString(4, p.getImage());
            ps.setFloat(5, p.getPrice());
            ps.setInt(6, p.getStatus());
            ps.setString(7, p.getIdProduct().trim());
            response = ps.executeUpdate() > 0;
        }
    } finally {
        if(ps != null) ps.close();
        if(connection != null) connection.close();
    }
    return response;
}

}
