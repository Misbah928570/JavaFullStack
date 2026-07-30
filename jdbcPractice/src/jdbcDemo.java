import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import java.sql.*;

public class jdbcDemo {
    public static void main(String[] args) {

        try {
            String url = "jdbc:mysql://localhost:3306/studentdb";
            String user = "root";
            String password = "mysql";

            Connection con = DriverManager.getConnection(url, user, password);

            if (con != null) {
                System.out.println("Database connected successfully");
            }

            Statement s = con.createStatement();
            ResultSet rs = s.executeQuery("SELECT * FROM students");

            while (rs.next()) {
                System.out.println(
                        rs.getInt("student_id") + " " +
                                rs.getString("first_name") + " " +
                                rs.getString("department")
                );
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}