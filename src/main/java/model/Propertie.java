package model;

public class Propertie {
    String id_duan;
    String img;
    String name;
    String price;
    String address;
    boolean isSoldOut;
    String type;

    public Propertie(String id_duan, String img, String name, String price, String address, boolean isSoldOut, String type) {
        this.id_duan = id_duan;
        this.img = img;
        this.name = name;
        this.price = price;
        this.address = address;
        this.isSoldOut = isSoldOut;
        this.type = type;
    }

    public Propertie() {
    }

    public String getId_duan() {
        return id_duan;
    }

    public void setId_duan(String id_duan) {
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

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public boolean isSoldOut() {
        return isSoldOut;
    }

    public void setSoldOut(boolean soldOut) {
        isSoldOut = soldOut;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}