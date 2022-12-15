package model;

public class User {
    private String id_User;
    private String userName;
    private String email;
    private String tel;
    private String pass;

    public User() {
    }

    public User(String id_User, String userName, String email, String tel, String pass) {
        this.id_User = id_User;
        this.userName = userName;
        this.email = email;
        this.tel = tel;
        this.pass = pass;
    }

    public void setId_User(String id_User) {
        this.id_User = id_User;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getId_User() {
        return id_User;
    }

    public String getUserName() {
        return userName;
    }

    public String getEmail() {
        return email;
    }

    public String getTel() {
        return tel;
    }

    public String getPass() {
        return pass;
    }
}
