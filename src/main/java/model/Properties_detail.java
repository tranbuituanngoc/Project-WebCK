package model;


public class Properties_detail {
    int id_ctda;
    Propertie propertie;
    String map;
    SoPhong soPhong;

    public Properties_detail(int id_ctda, Propertie propertie, String map, SoPhong soPhong) {
        this.id_ctda = id_ctda;
        this.propertie = propertie;
        this.map = map;
        this.soPhong=soPhong;
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

    public String getMap() {
        return map;
    }

    public void setMap(String map) {
        this.map = map;
    }

    public SoPhong getSoPhong() {
        return soPhong;
    }

    public void setSoPhong(SoPhong soPhong) {
        this.soPhong = soPhong;
    }
}
