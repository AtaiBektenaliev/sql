package org.example;

import java.sql.*;

public class Main {private final String URL = "jdbc:postgresql://localhost:5432/air_travel";
    private final String USER = "postgres";
    private final String PASSWORD = "postgres";


    public Connection connect() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Connected to the PostgreSQL server successfully.");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return conn;
    }


    public int getStudentsNameA() {
        String SQL = "SELECT * from Trip  ";
        int count = 0;
        try (Connection conn = connect()) {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(SQL);
            rs.next();
            count = rs.getInt(1);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return count;
    }



}