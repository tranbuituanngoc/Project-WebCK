package database;

import model.Propertie;
import model.WishList;
import service.PropertieService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class WishListDAO {
    public ArrayList<Propertie> selectByUserId(WishList o) {
        ArrayList<Propertie> res = new ArrayList<Propertie>();
        ArrayList<Integer> listID = new ArrayList<>();
        try {
            Connection connection = JDBCUtil.getConnection();
            String sql = "SELECT * FROM favorate WHERE id_user=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, o.getId_user());
            System.out.println(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                int id_duan = resultSet.getInt("id_duan");
                listID.add(id_duan);
            }
            for (int id_duan : listID) {
                Propertie p = new Propertie();
                p.setId_duan(id_duan);
                Propertie propertie = PropertieService.findById(p);

                res.add(propertie);
            }
            JDBCUtil.disconection(connection);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }

    public int insert(WishList o) {
        int res = 0;
        try {
            Connection connection = JDBCUtil.getConnection();
            String sql = "INSERT INTO favorate (id_user,id_duan) VALUES (?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, o.getId_user());
            statement.setInt(2, o.getId_duan());
            System.out.println(sql);
            res = statement.executeUpdate();
            JDBCUtil.disconection(connection);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }

    public int delete(int id_duan) {
        int ketQua = 0;
        try {
            // B?????c 1: t???o k???t n???i ?????n CSDL
            Connection con = JDBCUtil.getConnection();

            // B?????c 2: t???o ra ?????i t?????ng statement
            String sql = "DELETE from favorate " +
                    " WHERE id_duan=?";

            PreparedStatement st = con.prepareStatement(sql);
            st.setInt(1, id_duan);

            // B?????c 3: th???c thi c??u l???nh SQL
            System.out.println(sql);
            ketQua = st.executeUpdate();

            // B?????c 4:
            System.out.println("B???n ???? th???c thi: " + sql);
            System.out.println("C?? " + ketQua + " d??ng b??? thay ?????i!");

            // B?????c 5:
            JDBCUtil.disconection(con);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return ketQua;
    }

}
