package com.db.utils;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
    final static String DB_NAME = "pizza_shop_db";
    final static String CONNECTION_URL = "jdbc:mysql://localhost:3306/" + DB_NAME;
    final static String USERNAME = "msk";
    final static String PASSWORD = "4862";

    public static Connection init() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        return (Connection) DriverManager.getConnection(CONNECTION_URL, USERNAME, PASSWORD);
    }
}
