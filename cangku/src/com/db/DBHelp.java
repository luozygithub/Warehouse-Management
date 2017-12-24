package com.db;

import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class DBHelp {

	private static DBConfig config;

	private static DBConfig getConfig() {
		if (config == null) {
			try {
		
				Properties p = new Properties();
				String path = Thread.currentThread().getContextClassLoader()
						.getResource("").getPath()
						+ "config.properties";
				InputStream is = new FileInputStream(path);
				p.load(is);
				config = new DBConfig();
				config.setUsername(p.getProperty("username"));
				config.setPassword(p.getProperty("password"));
				config.setDriver(p.getProperty("driverclass"));
				config.setUrl(p.getProperty("url"));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return config;
	}

	public static Connection getConn() {
		Connection conn = null;
		DBConfig config = getConfig();
		try {
			Class.forName(config.getDriver());
			conn = DriverManager.getConnection(config.getUrl(), config
					.getUsername(), config.getPassword());
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	public static void closeObject(Object o) {
		if (o != null) {
			if (o instanceof Connection) {
				try {
					((Connection) o).close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (o instanceof PreparedStatement) {
				try {
					((PreparedStatement) o).close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (o instanceof Statement) {
				try {
					((Statement) o).close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (o instanceof ResultSet) {
				try {
					((ResultSet) o).close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public static int getAllCount(String sql) {
		int allcount = 0;
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			conn = DBHelp.getConn();
			pst = conn.prepareStatement(sql);

			rs = pst.executeQuery();
			rs.next();
			allcount = rs.getInt(1);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBHelp.closeObject(rs);
			DBHelp.closeObject(pst);
			DBHelp.closeObject(conn);
		}
		return allcount;
	}
}
