package model;

public class Location {
    int id_location;
    String descrip;

    public Location() {
    }

    public Location(int id_location, String descrip) {
        this.id_location = id_location;
        this.descrip = descrip;
    }

    public int getId_location() {
        return id_location;
    }

    public void setId_location(int id_location) {
        this.id_location = id_location;
    }

    public String getDescrip() {
        return descrip;
    }

    public void setDescrip(String descrip) {
        this.descrip = descrip;
    }
}
