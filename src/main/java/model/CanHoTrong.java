package model;

public class CanHoTrong {
    int id_canho;
    String name;
    SoPhong soPhong;
    Location location;

    public CanHoTrong(int id_canho, String name, SoPhong soPhong, Location location) {
        this.id_canho = id_canho;
        this.name = name;
        this.soPhong = soPhong;
        this.location = location;
    }

    public CanHoTrong() {
    }

    public int getId_canho() {
        return id_canho;
    }

    public String getName() {
        return name;
    }

    public SoPhong getSoPhong() {
        return soPhong;
    }

    public Location getLocation() {
        return location;
    }
}
