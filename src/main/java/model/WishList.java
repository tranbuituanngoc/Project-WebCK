package model;

public class WishList {
    String id_user;
    int id_duan;

    public WishList(String id_user, int id_duan) {
        this.id_user = id_user;
        this.id_duan = id_duan;
    }

    public WishList() {
    }

    public String getId_user() {
        return id_user;
    }

    public void setId_user(String id_user) {
        this.id_user = id_user;
    }

    public int getId_duan() {
        return id_duan;
    }

    public void setId_duan(int id_duan) {
        this.id_duan = id_duan;
    }
}
