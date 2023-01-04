package database;

import model.Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ServiceDAO {
    public Service findByID(Service s) {
        Service service = null;
        try {
            Connection connection = JDBCUtil.getConnection();
            String sql = "SELECT * FROM service WHERE id_ctda=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, s.getId_ctda());
            System.out.println(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                int id_ctduan = resultSet.getInt("id_ctda");
                boolean hoboi = resultSet.getBoolean("hoboi");
                boolean khuvuichoi = resultSet.getBoolean("khuvuichoi");
                boolean picnic = resultSet.getBoolean("picnic");
                boolean gym = resultSet.getBoolean("gym");
                boolean congvien = resultSet.getBoolean("congvien");
                service = new Service(id_ctduan, hoboi, khuvuichoi, picnic, gym, congvien);
            }
            JDBCUtil.disconection(connection);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return service;
    }
}
