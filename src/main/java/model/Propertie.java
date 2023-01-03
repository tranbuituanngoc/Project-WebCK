package model;

import java.sql.Date;

public class Propertie {
    int id_duan;
    String img;
    String name;
    double bPrice;
    double ePrice;
    String address;
    boolean isBestSeller;
    boolean isSoldOut;
    Date createTime;
    Date modifiedTime;
    int area;
    String type;

    public Propertie(int id_duan, String img, String name, double bPrice, double ePrice, String address, boolean isBestSeller, boolean isSoldOut, int area, String type) {
        this.id_duan = id_duan;
        this.img = img;
        this.name = name;
        this.bPrice = bPrice;
        this.ePrice = ePrice;
        this.address = address;
        this.isBestSeller = isBestSeller;
        this.isSoldOut = isSoldOut;
        this.area = area;
        this.type = type;
    }

    public Propertie(int id_duan, String img, String name, double bPrice, double ePrice, String address, boolean isBestSeller, boolean isSoldOut, Date createTime, Date modifiedTime, int area, String type) {
        this.id_duan = id_duan;
        this.img = img;
        this.name = name;
        this.bPrice = bPrice;
        this.ePrice = ePrice;
        this.address = address;
        this.isBestSeller = isBestSeller;
        this.isSoldOut = isSoldOut;
        this.createTime = createTime;
        this.modifiedTime = modifiedTime;
        this.area = area;
        this.type = type;
    }

    public Propertie() {

    }

    public int getId_duan() {
        return id_duan;
    }

    public void setId_duan(int id_duan) {
        this.id_duan = id_duan;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getbPrice() {
        return bPrice;
    }

    public void setbPrice(double bPrice) {
        this.bPrice = bPrice;
    }

    public double getePrice() {
        return ePrice;
    }

    public void setePrice(double ePrice) {
        this.ePrice = ePrice;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public boolean isBestSeller() {
        return isBestSeller;
    }

    public void setBestSeller(boolean bestSeller) {
        isBestSeller = bestSeller;
    }

    public boolean isSoldOut() {
        return isSoldOut;
    }

    public void setSoldOut(boolean soldOut) {
        isSoldOut = soldOut;
    }

    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getModifiedTime() {
        return modifiedTime;
    }

    public void setModifiedTime(Date modifiedTime) {
        this.modifiedTime = modifiedTime;
    }
}