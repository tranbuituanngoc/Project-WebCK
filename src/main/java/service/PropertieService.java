package service;

import database.DBConnect;
import database.JDBCUtil;
import model.Propertie;
import model.Properties_detail;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class PropertieService {

    //lấy ra danh sách tất cả sản phẩm
    public static List<Propertie> getListPropertie() {
        LinkedList<Propertie> list = new LinkedList<Propertie>();
        try {
            Statement statement = DBConnect.getInstall().get();
            if (statement != null) {
                ResultSet rs = statement.executeQuery("select * from properties");
                while (rs.next()) {
                    Propertie p = new Propertie();
                    list.add(new Propertie(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getBoolean(6), rs.getString(7)));
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    //search by id
    public static Propertie findById(Propertie p) throws SQLException {
        Propertie res = null;
        try {
            Connection connection = JDBCUtil.getConnection();
            String sql = "SELECT * FROM properties WHERE id_duan=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, p.getId_duan());
            System.out.println(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                int id_duan = resultSet.getInt("id_duan");
                String img = resultSet.getString("img");
                String name = resultSet.getString("name");
                String price = resultSet.getString("price");
                String address = resultSet.getString("address");
                boolean soldOut = resultSet.getBoolean("soldout");
                String type = resultSet.getString("type");

                res = new Propertie(id_duan, img, name, price, address, soldOut, type);
                break;
            }
            JDBCUtil.disconection(connection);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }

//    public List<Category> getListCategory() {
//        LinkedList<Category> list = new LinkedList<Category>();
//        try {
//            Statement statement = DBConnect.getInstall().get();
//            if (statement != null) {
//                ResultSet rs = statement.executeQuery("select * from properties");
//                while (rs.next()) {
//                    Category p = new Category();
//                    list.add(new Category(rs.getString(1),
//                            rs.getString(2),
//                            rs.getString(3)));
//                }
//            }
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//        return list;
//    }

    //tìm kiếm sản phẩm theo tên
    public static List<Propertie> searchByName(String name) {
        LinkedList<Propertie> list = new LinkedList<Propertie>();
        try {
            Statement statement = DBConnect.getInstall().get();
            if (statement != null) {
                ResultSet rs = statement.executeQuery("select * from properties where name like ? or address like ?");
                while (rs.next()) {
                    Propertie p = new Propertie();
                    list.add(new Propertie(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getBoolean(6), rs.getString(7)));
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    //Lấy ra chi tiết sản phẩm
    public List<Properties_detail> getListPropertieDetail(String id_duan) {
        LinkedList<Properties_detail> list = new LinkedList<Properties_detail>();
        try {
            Statement statement = DBConnect.getInstall().get();
            if (statement != null) {
                ResultSet rs = statement.executeQuery("select * from properties_detail where id_duan = '" + id_duan + "'");
                while (rs.next()) {
                    Properties_detail p = new Properties_detail();
                    list.add(new Properties_detail(rs.getString(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getInt(6),
                            rs.getInt(7),
                            rs.getInt(8),
                            rs.getInt(9),
                            rs.getString(10),
                            rs.getString(11)));
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    //Lấy ra sản phẩm sắp xếp theo giá tăng dần
    public List<Propertie> getListPropertieByPriceUp() {
        LinkedList<Propertie> list = new LinkedList<Propertie>();
        try {
            Statement statement = DBConnect.getInstall().get();
            if (statement != null) {
                ResultSet rs = statement.executeQuery("select * from properties ORDER BY price ASC");
                while (rs.next()) {
                    Propertie p = new Propertie();
                    list.add(new Propertie(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getBoolean(6), rs.getString(7)));
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    //Lấy ra sản phẩm sắp xếp theo giá giảm dần
    public List<Propertie> getListPropertieByPriceDown() {
        LinkedList<Propertie> list = new LinkedList<Propertie>();
        try {
            Statement statement = DBConnect.getInstall().get();
            if (statement != null) {
                ResultSet rs = statement.executeQuery("select * from properties ORDER BY price DESC");
                while (rs.next()) {
                    Propertie p = new Propertie();
                    list.add(new Propertie(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getBoolean(6), rs.getString(7)));
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    //Phân trang sản phẩm
    public static List<Propertie> getListByPage(List<Propertie> list, int start, int end) {
        LinkedList<Propertie> lists;
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

//    public static List<Propertie> getListCatogory() {
//        LinkedList<Propertie> list = new LinkedList<Propertie>();
//        try {
//            Statement statement = DBConnect.getInstall().get();
//            if (statement != null) {
//                ResultSet rs = statement.executeQuery("select * from properties");
//                while (rs.next()) {
//                    Propertie p = new Propertie();
//                    list.add(new Propertie(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getBoolean(6), rs.getString(7)));
//                }
//            }
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//        return list;
//    }

    public static void main(String[] args) {

        //lay ra tong cac san pham trong trang du an
//        PropertieService pds = new PropertieService();
//        int count = pds.getTotalPropertie();
//        System.out.println(count);


        //hien thi san pham ra trang du an
//        String sql = "INSERT INTO properties VALUES";
//        List<Propertie> data = getListPropertie();
//        for (Propertie p : data) {
//            sql += "("+p.getId() +", '"+p.getImg()+"', '"+p.getName()+"', '"+p.getAddress()+"', "+p.getType()+"', "+p.getPrice()+"),";
//        }
//        System.out.println(sql);


        //lay ra danh sach san pham theo gia tang dan
//        String sql = "select * from properties ORDER BY price ASC";
//        List<Propertie> data = getListPropertie();
//        for (Propertie p : data) {
//            sql += "("+p.getId() +", '"+p.getImg()+"', '"+p.getName()+"', '"+p.getAddress()+"', "+p.getType()+"', "+p.getPrice()+"),";
//        }
//        System.out.println(sql);

        //lay ra danh sach san pham theo gia tang dan
//        String sql = "select * from properties_detail";
//        List<Properties_detail> data = getListPropertieDetail("1001");
//        for (Properties_detail p : data) {
//            sql += "("+p.getId() +", '"+p.getId_duan()+"', '"+p.getBed()+"', '"+p.getBath()+"', "+p.getType()+"','"+p.getKitchen()+"', "+p.getLiving()+"),";
//        }
//        System.out.println(sql);
    }
}


