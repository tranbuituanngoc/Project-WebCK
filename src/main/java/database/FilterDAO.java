package database;

import model.Propertie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FilterDAO {
    public List<Propertie> filter(String service, String address, String nameProp){
        List<Propertie> res= new ArrayList<>();
        try {
            Connection connection = JDBCUtil.getConnection();
            String sql = "SELECT p.id_duan, p.img,p.name,p.address,p.bestseller,p.soldout,p.area,p.type, p.beginPrice,p.endPrice FROM properties p JOIN properties_details pd on pd.id_duan=p.id_duan JOIN service s on s.id_ctda=pd.id_ctda WHERE s."+service+"='1' AND p.`name` like '%"+nameProp+"%' AND p.address like '%"+address+"'";
            PreparedStatement statement = connection.prepareStatement(sql);
            System.out.println(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                int id_duan = resultSet.getInt("id_duan");
                String img = resultSet.getString("img");
                String name = resultSet.getString("name");
                String addressP = resultSet.getString("address");
                boolean bestseller = resultSet.getBoolean("bestseller");
                boolean soldout = resultSet.getBoolean("soldout");
                double bPrice = resultSet.getDouble("beginPrice");
                double ePrice = resultSet.getDouble("endPrice");
                int area = resultSet.getInt("area");
                String type = resultSet.getString("type");

                Propertie propertie= new Propertie(id_duan,img,name,bPrice,ePrice,addressP,bestseller,soldout,area,type);
                res.add(propertie);
            }
            JDBCUtil.disconection(connection);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }
}
