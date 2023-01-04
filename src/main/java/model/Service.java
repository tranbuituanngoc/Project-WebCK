package model;

public class Service {
    int id_ctda;
    boolean hoboi;
    boolean khuvuichoi;
    boolean picnic;
    boolean gym;
    boolean congvien;

    public Service() {

    }

    public Service( int id_ctda, boolean hoboi, boolean khuvuichoi, boolean picnic, boolean gym, boolean congvien) {
        this.id_ctda = id_ctda;
        this.hoboi = hoboi;
        this.khuvuichoi = khuvuichoi;
        this.picnic = picnic;
        this.gym = gym;
        this.congvien = congvien;
    }

    public int getId_ctda() {
        return id_ctda;
    }

    public void setId_ctda(int id_ctda) {
        this.id_ctda = id_ctda;
    }

    public boolean isHoboi() {
        return hoboi;
    }

    public void setHoboi(boolean hoboi) {
        this.hoboi = hoboi;
    }

    public boolean isKhuvuichoi() {
        return khuvuichoi;
    }

    public void setKhuvuichoi(boolean khuvuichoi) {
        this.khuvuichoi = khuvuichoi;
    }

    public boolean isPicnic() {
        return picnic;
    }

    public void setPicnic(boolean picnic) {
        this.picnic = picnic;
    }

    public boolean isGym() {
        return gym;
    }

    public void setGym(boolean gym) {
        this.gym = gym;
    }

    public boolean isCongvien() {
        return congvien;
    }

    public void setCongvien(boolean congvien) {
        this.congvien = congvien;
    }
}
