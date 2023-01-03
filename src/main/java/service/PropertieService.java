package service;

import database.DBConnect;
import model.CanHoTrong;
import model.Propertie;
import model.Properties_detail;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class PropertieService {

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
            Statement statement = DBConnect.getInstall().get();
            if (statement != null) {

                /*
                b1 sửa lại cái queries cho no lay duoc het nd co lien ket voi cai bang detail (o day la join them cai canhotrong zo)
                b2 lay may cai thuoc tin cua cai can ho trong
                b3 bo het may thuoc tin cua cai canhotrong vua lay zo cai do' do'
                b4 xog
                 */
                ResultSet rs = statement.executeQuery("select pd.id_ctda, pd.id_duan, pd.type, pd.time_create, pd.time_modified, " +
                        ",pd.map, p.img, p.name, p.beginPrice, p.endPrice ,p.bestseller, p.soldout, p.area where pd.id_duan = p.id_duan and pd.id_duan = '" + id_duan + "'");
                while (rs.next()) {
                    //lay cai nay truyen du lieu như cái controller z^^o nho sua lai queri
                    //join them cai bang can ho trong zo cai cau queri o tren
                    int idD = rs.getInt("id_ctda");
                    String map = rs.getString("map");
                    //sau khi join xog r them zo nhu cai prop
                    //dayne
                    CanHoTrong canHoTrong = new CanHoTrong();
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
                    Date createTime = rs.getDate("time_create");
                    Date modifiedTime = rs.getDate("time_modified");

                    Propertie propertie = new Propertie(idP, img, name, bPrice, ePrice, address, bestseller, soldout, area, type);
                    Properties_detail p = new Properties_detail(idD, propertie, canHoTrong, map);
                    list.add(p);

                    //lam tuong tu nhu nay h tui lam
//                   l``am y như tr^^en r^^ồi tạo cái
//                    list.add(new Properties_detail(
//                            rs.getInt("id_ctda"),
//                            rs.getInt("id_duan"),
//                            rs.getString("type"),
//                            rs.getDate("time_create"),
//                            rs.getDate("time_modified"),
//                            rs.getString("id_canho"),
//                            rs.getString("map"),
//                            rs.getString("img"),
//                            rs.getString("name"),
//                            rs.getString("price"),
//                            rs.getString("bestseller"),
//                            rs.getBoolean("soldout"),
//                            rs.getInt("id_service"),
//                            rs.getBoolean("hoboi"),
//                            rs.getBoolean("khuvuichoi"),
//                            rs.getBoolean("picnic"),
//                            rs.getBoolean("gym"),
//                            rs.getBoolean("congvien"),
//                            rs.getInt("num_bed"),
//                            rs.getInt("num_bath"),
//                            rs.getInt("num_living"),
//                            rs.getInt("num_kitchen")));


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


