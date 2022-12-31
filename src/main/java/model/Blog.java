package model;

import service.BlogService;


public class Blog extends BlogService {
    int id_blog;
    String img;
    String title;
    String subTitle;

    public Blog() {

    }
    public Blog(int id_blog, String img, String title, String subTitle) {
        this.id_blog = id_blog;
        this.img = img;
        this.title = title;
        this.subTitle = subTitle;
    }

    public int getId() {
        return id_blog;
    }

    public void setId(int id) {
        this.id_blog = id;
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
}
