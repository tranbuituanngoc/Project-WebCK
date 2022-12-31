package model;

public class Properties_detail {

        String id_ctda;
        String id_duan;
        String img;
        String name;
        String price;
        int living;
        int bed;
        int bath;
        int kitchen;
        String type;
        String map;

    public Properties_detail(String id_ctda, String id_duan, String img, String name, String price, int living, int bed, int bath, int kitchen, String type, String map) {
        this.id_ctda = id_ctda;
        this.id_duan = id_duan;
        this.img = img;
        this.name = name;
        this.price = price;
        this.living = living;
        this.bed = bed;
        this.bath = bath;
        this.kitchen = kitchen;
        this.type = type;
        this.map = map;
    }

    public Properties_detail() {

    }

    public String getId_ctda() {
        return id_ctda;
    }

    public void setId_ctda(String id_ctda) {
        this.id_ctda = id_ctda;
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

    public int getLiving() {
        return living;
    }

    public void setLiving(int living) {
        this.living = living;
    }

    public int getBed() {
        return bed;
    }

    public void setBed(int bed) {
        this.bed = bed;
    }

    public int getBath() {
        return bath;
    }

    public void setBath(int bath) {
        this.bath = bath;
    }

    public int getKitchen() {
        return kitchen;
    }

    public void setKitchen(int kitchen) {
        this.kitchen = kitchen;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getMap() {
        return map;
    }

    public void setMap(String map) {
        this.map = map;
    }
}
