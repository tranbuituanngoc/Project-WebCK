package model;


import java.sql.Date;

public class Properties_detail {
    int id_ctda;
    Propertie propertie;
    CanHoTrong canHoTrong;
    String map;

    public Properties_detail(int id_ctda, Propertie propertie, CanHoTrong canHoTrong, String map) {
        this.id_ctda = id_ctda;
        this.propertie = propertie;
        this.canHoTrong = canHoTrong;
        this.map = map;
    }

    public Properties_detail() {
    }

    public int getId_ctda() {
        return id_ctda;
    }

    public void setId_ctda(int id_ctda) {
        this.id_ctda = id_ctda;
    }

    public Propertie getPropertie() {
        return propertie;
    }

    public void setPropertie(Propertie propertie) {
        this.propertie = propertie;
    }

    public CanHoTrong getCanHoTrong() {
        return canHoTrong;
    }

    public void setCanHoTrong(CanHoTrong canHoTrong) {
        this.canHoTrong = canHoTrong;
    }

    public String getMap() {
        return map;
    }

    public void setMap(String map) {
        this.map = map;
    }
}
