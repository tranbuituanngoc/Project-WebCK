package model;

public class PropertiesWL {
    public boolean favorate;
    public Propertie propertie;

    public PropertiesWL(boolean favorate, Propertie propertie) {
        this.favorate = favorate;
        this.propertie = propertie;
    }

    public boolean isFavorate() {
        return favorate;
    }

    public void setFavorate(boolean favorate) {
        this.favorate = favorate;
    }

    public Propertie getPropertie() {
        return propertie;
    }

    public void setPropertie(Propertie propertie) {
        this.propertie = propertie;
    }

}
