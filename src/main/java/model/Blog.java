package model;

import service.BlogService;

import java.util.Date;


public class Blog extends BlogService {
    int id_blog;
    String id_category;
    String img;
    String title;
    String subTitle;

    Date date;

    public Blog() {

    }

    public Blog(int id_blog, String id_category, String img, String title, String subTitle, Date date) {
        this.id_blog = id_blog;
        this.id_category = id_category;
        this.img = img;
        this.title = title;
        this.subTitle = subTitle;
        this.date = date;
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

    public String getSubTitle() {
        return subTitle;
    }

    public void setSubTitle(String subTitle) {
        this.subTitle = subTitle;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
