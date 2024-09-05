/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Product;

/**
 *
 * @author Admin
 * 
 */
public class ProductDTO {
    private String idProduct;
    private String Name;
    private String description;
    private String type;
    private String image;
    private float price;
    private Integer status;

    public ProductDTO() {
    }

    public ProductDTO(String idProduct, String Name, String description, String type, String image, float price, Integer status) {
        this.idProduct = idProduct;
        this.Name = Name;
        this.description = description;
        this.type = type;
        this.image = image;
        this.price = price;
        this.status = status;
    }

    public String getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(String idProduct) {
        this.idProduct = idProduct;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
    
    
}
