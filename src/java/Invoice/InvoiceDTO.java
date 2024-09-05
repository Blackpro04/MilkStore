/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Invoice;

/**
 *
 * @author Admin
 * 
 */
public class InvoiceDTO {
    private String invId;
    private String userID;
    private String dateBuy;
    private String gmail;
    private String address;
    private float total;
    private float discount;
    private float totalDiscount;

    public InvoiceDTO() {
    }

    public InvoiceDTO(String invId, String userID, String dateBuy, String gmail, String address, float total, float discount, float totalDiscount) {
        this.invId = invId;
        this.userID = userID;
        this.dateBuy = dateBuy;
        this.gmail = gmail;
        this.address = address;
        this.total = total;
        this.discount = discount;
        this.totalDiscount = totalDiscount;
    }

    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }

    public float getTotalDiscount() {
        return totalDiscount;
    }

    public void setTotalDiscount(float totalDiscount) {
        this.totalDiscount = totalDiscount;
    }
    
    

    
    public String getInvId() {
        return invId;
    }

    public void setInvId(String invId) {
        this.invId = invId;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getDateBuy() {
        return dateBuy;
    }

    public void setDateBuy(String dateBuy) {
        this.dateBuy = dateBuy;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }
    
    

    
    
}
