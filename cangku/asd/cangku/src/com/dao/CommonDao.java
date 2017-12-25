package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.db.DBHelp;
import com.pageconfig.PageUtil;

public class CommonDao {

	public static boolean update(String sql, String... args) {
		boolean flag = false;
		Connection conn = null;
		PreparedStatement pst = null;
		try {
			conn = DBHelp.getConn();
			pst = conn.prepareStatement(sql);
			if (args != null) {
				for (int i = 0; i < args.length; i++) {
					pst.setString(i + 1, args[i]);
				}
			}
			if (pst.executeUpdate() > 0) {
				flag = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBHelp.closeObject(pst);
			DBHelp.closeObject(conn);
		}
		return flag;
	}

	public static List<Map<String, String>> getList(String sql, String[] args) {
		List<Map<String, String>> list = new ArrayList<Map<String, String>>();
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			conn = DBHelp.getConn();
			pst = conn.prepareStatement(sql);
	    	
			if (args != null) {
				for (int i = 0; i < args.length; i++) {
					pst.setString(i + 1, args[i]);
				}
			}
			rs = pst.executeQuery();


			ResultSetMetaData rsmd = rs.getMetaData();

			int columnCount = rsmd.getColumnCount();

			String[] columnnames = new String[columnCount];
			for (int i = 0; i < columnnames.length; i++) {
				columnnames[i] = rsmd.getColumnName(i + 1);
			}

			while (rs.next()) {
				Map<String, String> map = new HashMap<String, String>();
				for (int i = 0; i < columnnames.length; i++) {
					map.put(columnnames[i], rs.getString(i + 1));
				}
				list.add(map);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBHelp.closeObject(rs);
			DBHelp.closeObject(pst);
			DBHelp.closeObject(conn);
		}
		return list;
	}
	
	

	public static Map<String, String> getMap(String sql, String... args) {
		Map<String, String> map = null;
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			conn = DBHelp.getConn();
			pst = conn.prepareStatement(sql);
			if (args != null) {
				for (int i = 0; i < args.length; i++) {
					pst.setString(i + 1, args[i]);
				}
			}
			rs = pst.executeQuery();

			ResultSetMetaData rsmd = rs.getMetaData();
			int columnCount = rsmd.getColumnCount();

			String[] columnnames = new String[columnCount];
			for (int i = 0; i < columnnames.length; i++) {
				columnnames[i] = rsmd.getColumnName(i + 1);
			}

			if (rs.next()) {
				map = new HashMap<String, String>();
				for (int i = 0; i < columnnames.length; i++) {
					map.put(columnnames[i], rs.getString(i + 1));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBHelp.closeObject(rs);
			DBHelp.closeObject(pst);
			DBHelp.closeObject(conn);
		}
		return map;
	}
}
