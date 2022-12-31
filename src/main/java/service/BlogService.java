package service;

import database.DBConnect;
import model.Blog;
import model.Blog_detail;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
public class BlogService {
    public List<Blog> getListBlog() {
        LinkedList<Blog> list = new LinkedList<Blog>();
        try {
            Statement statement = DBConnect.getInstall().get();
            if (statement != null) {
                ResultSet rs = statement.executeQuery("select * from blog");
                while (rs.next()) {
                    Blog b = new Blog();
                    list.add(new Blog(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)));                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    public List<Blog_detail> getListBlogDetail(String id_blog) {
        LinkedList<Blog_detail> list = new LinkedList<Blog_detail>();
        try {
            Statement statement = DBConnect.getInstall().get();
            if (statement != null) {
                ResultSet rs = statement.executeQuery("select * from blog_detail where id_blog = '"+id_blog+"'");
                while (rs.next()) {
                    Blog_detail p = new Blog_detail();
                    list.add(new Blog_detail(rs.getString(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getString(6),
                            rs.getString(7)));
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    public static List<Blog> getListByPage(List<Blog> list, int start, int end) {
        LinkedList<Blog> lists;
        try {
            lists = new LinkedList<>();
            for (int i = start; i < end; i++) {
                lists.add(list.get(i));
            }
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
        return lists;
    }

    public static void main(String[] args) {
//        String sql = "INSERT INTO blogs VALUES";
//        List<Blog> data = getListBlog();
//        for (Blog b : data) {
//            sql += "("+b.getId() +", '"+b.getImg()+"', '"+b.getTitle()+"', '"+b.getSubTitle()+"),";
//        }
//        System.out.println(sql);

//        BlogService pds = new BlogService();
//        List<Blog> count = pds.getListBlog();
//        System.out.println(count);
    }

}
