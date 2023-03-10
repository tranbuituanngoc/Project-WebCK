package database;

import model.User;

import java.sql.*;
import java.util.ArrayList;

public class UserDAO implements DAO<User> {
    private final ArrayList<User> data = new ArrayList<User>();

    public static UserDAO getInstance() {
        return new UserDAO();
    }

    public ArrayList selectAll() {
        ArrayList<User> res = new ArrayList<User>();
        try {
            Connection connection = JDBCUtil.getConnection();
            String sql = "SELECT * FROM user";
            PreparedStatement statement = connection.prepareStatement(sql);

            System.out.println(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                String id_user = resultSet.getString("id_user");
                String userName = resultSet.getString("userName");
                String email = resultSet.getString("email");
                String tel = resultSet.getString("tel");
                String pass = resultSet.getString("pass");
                int role = resultSet.getInt("role");

                User user = new User(id_user, userName, email, tel, pass, role);
                res.add(user);
            }
            JDBCUtil.disconection(connection);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }

    public User selectById(User o) {
        User res = null;
        try {
            Connection connection = JDBCUtil.getConnection();
            String sql = "SELECT * FROM user WHERE id_user=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, o.getId_User());
            System.out.println(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                String id_user = resultSet.getString("id_user");
                String userName = resultSet.getString("userName");
                String email = resultSet.getString("email");
                String tel = resultSet.getString("tel");
                String pass = resultSet.getString("pass");
                String verificationCode = resultSet.getString("verification_code");
                Timestamp timeValid = resultSet.getTimestamp("time_valid");
                boolean verified = resultSet.getBoolean("verified");

                res = new User(id_user, userName, email, tel, pass, verificationCode, timeValid, verified);
                break;
            }
            JDBCUtil.disconection(connection);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }

    public User selectByUnameNEmail(User o) {
        User res = null;
        try {
            Connection connection = JDBCUtil.getConnection();
            String sql = "SELECT * FROM user WHERE username=? AND email=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, o.getUserName());
            statement.setString(2, o.getEmail());
            System.out.println(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                String id_user = resultSet.getString("id_user");
                String userName = resultSet.getString("userName");
                String email = resultSet.getString("email");
                String tel = resultSet.getString("tel");
                String pass = resultSet.getString("pass");
                String verificationCode = resultSet.getString("verification_code");
                Timestamp timeValid = resultSet.getTimestamp("time_valid");
                boolean verified = resultSet.getBoolean("verified");

                res = new User(id_user, userName, email, tel, pass, verificationCode, timeValid, verified);
                break;
            }
            JDBCUtil.disconection(connection);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }

    public User selectByUserNameAndPass(User o) {
        User res = null;
        try {
            Connection connection = JDBCUtil.getConnection();
            String sql = "SELECT * FROM user WHERE username=? AND pass=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, o.getUserName());
            statement.setString(2, o.getPass());
            System.out.println(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                String id_user = resultSet.getString("id_user");
                String userName = resultSet.getString("userName");
                String email = resultSet.getString("email");
                String tel = resultSet.getString("tel");
                String pass = resultSet.getString("pass");
                int role = resultSet.getInt("role");

                res = new User(id_user, userName, email, tel, pass, role);
                break;
            }
            JDBCUtil.disconection(connection);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }

    public int insert(User o) {
        int res = 0;
        try {
            Connection connection = JDBCUtil.getConnection();
            String sql = "INSERT INTO user (id_user,userName,email,tel,pass,role) VALUES (?,?,?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, o.getId_User());
            statement.setString(2, o.getUserName());
            statement.setString(3, o.getEmail());
            statement.setString(4, o.getTel());
            statement.setString(5, o.getPass());
            statement.setInt(6, o.getRole());
            System.out.println(sql);
            res = statement.executeUpdate();
            JDBCUtil.disconection(connection);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }

    public int delete(User o) {
        int ketQua = 0;
        try {
            // B?????c 1: t???o k???t n???i ?????n CSDL
            Connection con = JDBCUtil.getConnection();

            // B?????c 2: t???o ra ?????i t?????ng statement
            String sql = "DELETE from User " +
                    " WHERE username=?";

            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, o.getUserName());

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


    public int deleteAll(ArrayList<User> arrayList) {
        int temp = 0;
        for (User u : arrayList) {
            temp += this.delete(u);
        }
        return temp;
    }

    public int update(User o) {
        int res = 0;
        try {
            Connection connection = JDBCUtil.getConnection();
            String sql = "UPDATE User " +
                    " SET " +
                    " pass=?" +
                    ", tel=?" +
                    ", email=?" +
                    " WHERE id_user=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, o.getPass());
            st.setString(2, o.getTel());
            st.setString(3, o.getEmail());
            st.setString(4, o.getId_User());
            System.out.println(sql);
            res = st.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }

    public int updateRole(User o) {
        int res = 0;
        try {
            Connection connection = JDBCUtil.getConnection();
            String sql = "UPDATE User " +
                    " SET " +
                    " role=?" +
                    " WHERE id_user=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, o.getRole());
            st.setString(2, o.getId_User());
            System.out.println(sql);
            res = st.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }

    public int updateVerifyInfo(User o) {
        int res = 0;
        try {
            Connection connection = JDBCUtil.getConnection();
            String sql = "UPDATE user " +
                    " SET " +
                    " verification_code=?" +
                    ", time_valid=?" +
                    ", verified=?" +
                    " WHERE id_user=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, o.getVerificationCode());
            st.setTimestamp(2, o.getTimeValid());
            st.setBoolean(3, o.isVerified());
            st.setString(4, o.getId_User());
            System.out.println(sql);
            res = st.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }

    public boolean changePass(User o) {
        int res = 0;
        try {
            Connection connection = JDBCUtil.getConnection();
            String sql = "UPDATE User " +
                    " SET " +
                    " pass=?" +
                    " WHERE id_user=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, o.getPass());
            st.setString(2, o.getId_User());
            System.out.println(sql);
            res = st.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res > 0;
    }

    public int updateAll(ArrayList<User> arrayList) {
        int temp = 0;
        for (User u : arrayList) {
            temp += this.update(u);


        }
        return temp;
    }

    public int insertAll(ArrayList<User> arrayList) {
        int temp = 0;
        for (User u : arrayList) {
            temp += this.insert(u);
        }
        return temp;
    }

    public boolean checkUserName(String s) {
        boolean res = false;
        try {
            Connection connection = JDBCUtil.getConnection();
            String sql = "SELECT * FROM user WHERE username=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, s);
            System.out.println(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                res = true;
            }
            JDBCUtil.disconection(connection);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }

    public static void main(String[] args) {
        UserDAO dao = new UserDAO();
        User u = new User("u1101", "nva", "abc@gmail.com", "0123456", "123",1);
        dao.delete(u);
    }
}
