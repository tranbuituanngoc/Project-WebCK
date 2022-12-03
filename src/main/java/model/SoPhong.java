package model;

public class SoPhong {
    int id_sophong;
    int num_bed;
    int num_bath;
    int num_living;
    int num_kitchen;

    public SoPhong(int id_sophong, int num_bed, int num_bath, int num_living, int num_kitchen) {
        this.id_sophong = id_sophong;
        this.num_bed = num_bed;
        this.num_bath = num_bath;
        this.num_living = num_living;
        this.num_kitchen = num_kitchen;
    }

    public SoPhong() {
    }

    public int getId_sophong() {
        return id_sophong;
    }

    public void setId_sophong(int id_sophong) {
        this.id_sophong = id_sophong;
    }

    public int getNum_bed() {
        return num_bed;
    }

    public void setNum_bed(int num_bed) {
        this.num_bed = num_bed;
    }

    public int getNum_bath() {
        return num_bath;
    }

    public void setNum_bath(int num_bath) {
        this.num_bath = num_bath;
    }

    public int getNum_living() {
        return num_living;
    }

    public void setNum_living(int num_living) {
        this.num_living = num_living;
    }

    public int getNum_kitchen() {
        return num_kitchen;
    }

    public void setNum_kitchen(int num_kitchen) {
        this.num_kitchen = num_kitchen;
    }
}
