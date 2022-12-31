package model;

public class Blog_detail {
    String id_ctblog;
    String id_blog;
    String title;
    String subtitle;
    String content;
    String img_1;
    String img_2;

    public Blog_detail(String id_ctblog, String id_blog, String title, String subtitle, String content, String img_1, String img_2) {
        this.id_ctblog = id_ctblog;
        this.id_blog = id_blog;
        this.title = title;
        this.subtitle = subtitle;
        this.content = content;
        this.img_1 = img_1;
        this.img_2 = img_2;
    }

    public Blog_detail() {

    }

    public String getId_ctblog() {
        return id_ctblog;
    }

    public void setId_ctblog(String id_ctblog) {
        this.id_ctblog = id_ctblog;
    }

    public String getId_blog() {
        return id_blog;
    }

    public void setId_blog(String id_blog) {
        this.id_blog = id_blog;
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImg_1() {
        return img_1;
    }

    public void setImg_1(String img_1) {
        this.img_1 = img_1;
    }

    public String getImg_2() {
        return img_2;
    }

    public void setImg_2(String img_2) {
        this.img_2 = img_2;
    }
}
