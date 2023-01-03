package service;

import database.DBConnect;
import database.JDBCUtil;
import model.Propertie;
import model.Properties_detail;
import model.SoPhong;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class PropertieService {

    //search by id
    public static Propertie findById(Propertie p) throws SQLException {
        Propertie res = null;
        try {
            Connection connection = JDBCUtil.getConnection();
            String sql = "SELECT * FROM properties WHERE id_duan=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, p.getId_duan());
            System.out.println(sql);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                int idP = rs.getInt("id_duan");
                String img = rs.getString("img");
                String name = rs.getString("name");
                String address = rs.getString("address");
                boolean bestseller = rs.getBoolean("bestseller");
                boolean soldout = rs.getBoolean("soldout");
                double bPrice = rs.getDouble("beginPrice");
                double ePrice = rs.getDouble("endPrice");
                int area = rs.getInt("area");
                String type = rs.getString("type");

                res = new Propertie(idP, img, name, bPrice, ePrice, address, bestseller, soldout, area, type);
                break;
            }
            JDBCUtil.disconection(connection);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }


    //lấy ra danh sách tất cả sản phẩm
    public List<Propertie> getListPropertie() {
        LinkedList<Propertie> list = new LinkedList<Propertie>();
        try {
            Statement statement = DBConnect.getInstall().get();
            if (statement != null) {
                ResultSet rs = statement.executeQuery("select * from properties");
                while (rs.next()) {
                    Propertie p = new Propertie();
                    list.add(new Propertie(rs.getInt("id_duan"), rs.getString("img"), rs.getString("name"), rs.getDouble("beginPrice"), rs.getDouble("endPrice"), rs.getString("address"), rs.getBoolean("bestseller"), rs.getBoolean("soldout"), rs.getInt("area"), rs.getString("type")));
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    //lấy ra danh sách các dự án nổi bật trang chủ
    public List<Propertie> getListBestSeller() {
        LinkedList<Propertie> list = new LinkedList<Propertie>();
        try {
            Statement statement = DBConnect.getInstall().get();
            if (statement != null) {
                ResultSet rs = statement.executeQuery("select * from properties where bestseller = 1 limit 9");
                while (rs.next()) {
                    Propertie p = new Propertie();
                    list.add(new Propertie(rs.getInt("id_duan"), rs.getString("img"), rs.getString("name"), rs.getDouble("beginPrice"), rs.getDouble("endPrice"), rs.getString("address"), rs.getBoolean("bestseller"), rs.getBoolean("soldout"), rs.getInt("area"), rs.getString("type")));
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    //lấy ra sản phẩm nổi bật trang sản phẩm
    public List<Propertie> getListHighLight() {
        LinkedList<Propertie> list = new LinkedList<Propertie>();
        try {
            Statement statement = DBConnect.getInstall().get();
            if (statement != null) {
                ResultSet rs = statement.executeQuery("select * from properties where bestseller = 1 limit 3");
                while (rs.next()) {
                    Propertie p = new Propertie();
                    list.add(new Propertie(rs.getInt("id_duan"), rs.getString("img"), rs.getString("name"), rs.getDouble("beginPrice"), rs.getDouble("endPrice"), rs.getString("address"), rs.getBoolean("bestseller"), rs.getBoolean("soldout"), rs.getInt("area"), rs.getString("type")));
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    //lấy ra danh sách các dự án khác
    public List<Propertie> getListDifferentProduct() {
        LinkedList<Propertie> list = new LinkedList<Propertie>();
        try {
            Statement statement = DBConnect.getInstall().get();
            if (statement != null) {
                ResultSet rs = statement.executeQuery("select * from properties where bestseller = 1 limit 2");
                while (rs.next()) {
                    Propertie p = new Propertie();
                    list.add(new Propertie(rs.getInt("id_duan"), rs.getString("img"), rs.getString("name"), rs.getDouble("beginPrice"), rs.getDouble("endPrice"), rs.getString("address"), rs.getBoolean("bestseller"), rs.getBoolean("soldout"), rs.getInt("area"), rs.getString("type")));
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    //tìm kiếm sản phẩm theo tên
    public List<Propertie> searchByName(String keyword) {
        LinkedList<Propertie> list = new LinkedList<Propertie>();
        try {
            Statement statement = DBConnect.getInstall().get();
            if (statement != null) {
                ResultSet rs = statement.executeQuery("select * from properties where name like '%" + keyword + "%'");
                while (rs.next()) {
                    Propertie p = new Propertie();
                    list.add(new Propertie(rs.getInt("id_duan"), rs.getString("img"), rs.getString("name"), rs.getDouble("beginPrice"), rs.getDouble("endPrice"), rs.getString("address"), rs.getBoolean("bestseller"), rs.getBoolean("soldout"), rs.getInt("area"), rs.getString("type")));
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    //Lấy ra chi tiết sản phẩm
    public static List<Properties_detail> getListPropertieDetail(String id_duan) {
        LinkedList<Properties_detail> list = new LinkedList<Properties_detail>();
        try {
            Connection connection = JDBCUtil.getConnection();
            String sql = "SELECT p.id_duan, p.img, p.name,p.address, p.bestseller, p.beginPrice, p.endPrice,p.soldout,p.area,p.type, pd.id_ctda, pd.map,s.id_sophong, s.num_bath, s.num_bed, s.num_kitchen,s.num_living FROM properties p, properties_details pd, so_phong s WHERE  p.id_duan=pd.id_duan AND s.id_sophong= pd.id_sophong AND  p.id_duan=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, Integer.parseInt(id_duan));
            System.out.println(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int idD = rs.getInt("id_ctda");
                String map = rs.getString("map");

                int idSophong = rs.getInt("id_sophong");
                int num_bed = rs.getInt("num_bed");
                int num_bath = rs.getInt("num_bath");
                int num_living = rs.getInt("num_living");
                int num_kitchen = rs.getInt("num_kitchen");
                SoPhong soPhong = new SoPhong(idSophong, num_bed, num_bath, num_living, num_kitchen);


                int idP = rs.getInt("id_duan");
                String img = rs.getString("img");
                String name = rs.getString("name");
                String address = rs.getString("address");
                boolean bestseller = rs.getBoolean("bestseller");
                boolean soldout = rs.getBoolean("soldout");
                double bPrice = rs.getDouble("beginPrice");
                double ePrice = rs.getDouble("endPrice");
                int area = rs.getInt("area");
                String type = rs.getString("type");

                Propertie propertie = new Propertie(idP, img, name, bPrice, ePrice, address, bestseller, soldout, area, type);
                Properties_detail p = new Properties_detail(idD, propertie, map, soPhong);
                list.add(p);
            }
            JDBCUtil.disconection(connection);
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
                ResultSet rs = statement.executeQuery("select * from properties ORDER BY price DESC");
                while (rs.next()) {
                    Propertie p = new Propertie();
                    list.add(new Propertie(rs.getInt("id_duan"), rs.getString("img"), rs.getString("name"), rs.getDouble("beginPrice"), rs.getDouble("endPrice"), rs.getString("address"), rs.getBoolean("bestseller"), rs.getBoolean("soldout"), rs.getInt("area"), rs.getString("type")));
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
                ResultSet rs = statement.executeQuery("select * from properties ORDER BY price ASC");
                while (rs.next()) {
                    Propertie p = new Propertie();
                    list.add(new Propertie(rs.getInt("id_duan"), rs.getString("img"), rs.getString("name"), rs.getDouble("beginPrice"), rs.getDouble("endPrice"), rs.getString("address"), rs.getBoolean("bestseller"), rs.getBoolean("soldout"), rs.getInt("area"), rs.getString("type")));
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


//        lay ra danh sach san pham theo gia tang dan
//        String sql = "select * from properties where isBestSeller = 1";
//        List<Propertie> data = getListBestSeller();
//        for (Propertie p : data) {
//            sql += "("+p.getId_duan() +", '"+p.getImg()+"', '"+p.getName()+"', '"+p.getAddress()+"', "+p.getType()+"', "+p.getPrice()+"),";
//        }
//        System.out.println(sql);

//        lay ra danh sach san pham theo gia tang dan
        String sql = "select pd.id_ctda, pd.id_duan, pd.type, pd.time_create, pd.time_modified, pd.id_canho, pd.map, p.img, p.name, p.price, p.bestseller, p.soldout  from properties_details pd join properties p where pd.id_duan = p.id_duan and pd.id_duan = '\"+id_duan+\"'";
        List<Properties_detail> data = getListPropertieDetail("1001");
        for (Properties_detail p : data) {
            //nho sua lai cai nay
//            sql += "("+p.getId_canho() +", '"+p.getId_duan()+"', '"+p.getType()+"', '"+p.getId_canho()+"', "+p.getType()+"','"+p.getTime_create()+"', "+p.getTime_modified()+"),";
        }
        System.out.println(sql);
    }
}


