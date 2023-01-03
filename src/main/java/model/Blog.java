package model;

import service.BlogService;

import java.util.Date;


public class Blog extends BlogService {
    int id_blog;
    String id_category;
    String img;
    String title;
    String subtitle;
    Date date_create;

    public Blog(int id_blog, String id_category, String img, String title, String subtitle, Date date_create) {
        this.id_blog = id_blog;
        this.id_category = id_category;
        this.img = img;
        this.title = title;
        this.subtitle = subtitle;
        this.date_create = date_create;
    }

    public Blog() {

    }

    public int getId_blog() {
        return id_blog;
    }

    public void setId_blog(int id_blog) {
        this.id_blog = id_blog;
    }

    public String getId_category() {
        return id_category;
    }

    public void setId_category(String id_category) {
        this.id_category = id_category;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSubtitle() {
        return subtitle;
    }

    public void setSubtitle(String subtitle) {
        this.subtitle = subtitle;
    }

    public Date getDate_create() {
        return date_create;
    }

    public void setDate_create(Date date_create) {
        this.date_create = date_create;
    }
}
