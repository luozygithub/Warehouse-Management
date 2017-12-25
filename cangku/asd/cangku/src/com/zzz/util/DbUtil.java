package com.zzz.util;


import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.*;

import com.db.DBHelp;
import com.zzz.bean.Storage;
import com.zzz.bean.User;
	
	@SuppressWarnings("unused")
	public class DbUtil {
		private String dbUrl = "jdbc:mysql://localhost:3306/cangkuguanli";
		private String dbUser = "root";
		private String dbPassword = "0819";
		private String jdbcName = "com.mysql.jdbc.Driver";
		
		public Connection getCon() throws Exception{
			// 加载数据库驱动
			Class.forName(jdbcName);
			// 获取数据库连接
			Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
			return con;
		}
		public void closeCon(Connection con){
			if(con!=null){
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		public boolean Logincheck(Connection con,String username,String password) throws Exception{
			String sql="select user_id,user_password from user";
			boolean f=false;
			// 预编译SQL语句
			PreparedStatement pst = con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				String user_id = isoToGBK(rs.getString("user_id"));
				String user_password = isoToGBK(rs.getString("user_password"));
				if(username.equals(user_id)&&password.equals(user_password)){
					f=true;
				}
			}
			return f;
		}
		
		public boolean SuperuserLogincheck(Connection con,String username,String password) throws Exception{
			String sql="select superuser_id,superuser_password from superuser";
			boolean f=false;
			// 预编译SQL语句
			PreparedStatement pst = con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				String superuser_id =rs.getString("superuser_id");
				String superuser_password = isoToGBK(rs.getString("superuser_password"));
				if(username.equals(superuser_id)&&password.equals(superuser_password)){
					f=true;
				}
			}
			return f;
		}
		
		public List<Map<String,String>> getGoods()throws Exception{

			Connection con=this.getCon();
			List<Map<String,String>> list=new ArrayList<Map<String,String>>();
			String sql="select * from goods";
			PreparedStatement pstmt=con.prepareStatement(sql);
			ResultSet rs=pstmt.executeQuery();
			try{
				// 根据rs对象来得到表里面的具体信息
				ResultSetMetaData rsmd = rs.getMetaData();
				// 得到表有多少列
				int columnCount = rsmd.getColumnCount();
				// 获取列名，并保存在数组里面
				String[] columnnames = new String[columnCount];
				for (int i = 0; i < columnnames.length; i++) {
					columnnames[i] = rsmd.getColumnName(i + 1);
				}

				// 把数据封装到集合里面
				while (rs.next()) {
					// 封装一条记录
					Map<String, String> map = new HashMap<String, String>();
					for (int i = 0; i < columnnames.length; i++) {
						map.put(columnnames[i], rs.getString(i + 1));
					}
					list.add(map);
				}
				
			}catch(Exception e){
				System.out.print("XXXXX");
			}finally{
				rs.close();
				pstmt.close();
				con.close();
			}
			
			return list;
		}
		
		public List<Map<String,String>> getStorage()throws Exception{

			Connection con=this.getCon();
			List<Map<String,String>> list=new ArrayList<Map<String,String>>();
			String sql="select * from storage";
			PreparedStatement pstmt=con.prepareStatement(sql);
			ResultSet rs=pstmt.executeQuery();
			try{
				// 根据rs对象来得到表里面的具体信息
				ResultSetMetaData rsmd = rs.getMetaData();
				// 得到表有多少列
				int columnCount = rsmd.getColumnCount();
				// 获取列名，并保存在数组里面
				String[] columnnames = new String[columnCount];
				for (int i = 0; i < columnnames.length; i++) {
					columnnames[i] = rsmd.getColumnName(i + 1);
				}

				// 把数据封装到集合里面
				while (rs.next()) {
					// 封装一条记录
					Map<String, String> map = new HashMap<String, String>();
					for (int i = 0; i < columnnames.length; i++) {
						map.put(columnnames[i], rs.getString(i + 1));
					}
					list.add(map);
				}
				
			}catch(Exception e){
				System.out.print("XXXXX");
			}finally{
				rs.close();
				pstmt.close();
				con.close();
			}
			
			return list;
		}
		
		public List<Map<String,String>> getUser()throws Exception{

			Connection con=this.getCon();
			List<Map<String,String>> list=new ArrayList<Map<String,String>>();
			String sql="select * from user";
			PreparedStatement pstmt=con.prepareStatement(sql);
			ResultSet rs=pstmt.executeQuery();
			try{
				// 根据rs对象来得到表里面的具体信息
				ResultSetMetaData rsmd = rs.getMetaData();
				// 得到表有多少列
				int columnCount = rsmd.getColumnCount();
				// 获取列名，并保存在数组里面
				String[] columnnames = new String[columnCount];
				for (int i = 0; i < columnnames.length; i++) {
					columnnames[i] = rsmd.getColumnName(i + 1);
				}

				// 把数据封装到集合里面
				while (rs.next()) {
					// 封装一条记录
					Map<String, String> map = new HashMap<String, String>();
					for (int i = 0; i < columnnames.length; i++) {
						map.put(columnnames[i], rs.getString(i + 1));
					}
					list.add(map);
				}
				
			}catch(Exception e){
				System.out.print("XXXXX");
			}finally{
				rs.close();
				pstmt.close();
				con.close();
			}
			
			return list;
		}
		
		// 编码集转换
		public static String isoToGBK(String s){
			if(s==null){
				return "";
			}else{
				try {
					return new String(s.getBytes("ISO-8859-1"),"GBK");
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
				return s;
			}
		}
		
		public static String gbkToISO(String s){
			if(s==null){
				return "";
			}else{
				try {
					return new String(s.getBytes("GBK"),"ISO-8859-1");
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
				return s;
			}
		}
		public void addUser(Connection con,String user_id,String user_name,String user_nickname,String user_password,String user_email,String user_sex,String user_birth,String user_idcard,String user_telephone,String user_postcode,String user_address,String user_favourite) throws Exception{
			String sql = "insert into user values(?,?,?,?,?,?,?,?,?,?,?,?)";
			// 预编译SQL语句
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user_id);
			pstmt.setString(2, user_name);
			pstmt.setString(3, user_nickname);
			pstmt.setString(4, user_password);
			pstmt.setString(5, user_email);
			pstmt.setString(6, user_sex);
			pstmt.setString(7, user_birth);
			pstmt.setString(8, user_idcard);
			pstmt.setString(9, user_telephone);
			pstmt.setString(10, user_postcode);
			pstmt.setString(11, user_address);
			pstmt.setString(12, user_favourite);
			// 进行添加
			pstmt.execute();
		}
		
		public void addStorage(Connection con,String storage_id,String storage_type,String storage_count) throws Exception{
			String sql = "insert into storage values(?,?,?)";
			// 预编译SQL语句
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, storage_id);
			pstmt.setString(2, storage_type);
			pstmt.setString(3, storage_count);
			// 进行添加
			pstmt.execute();
		}
		
		public void addGoods(Connection con,String goods_id,String goods_number,String goods_price,String goods_brand,String goods_description) throws Exception{
			String sql = "insert into goods values(?,?,?,?,?)";
			// 预编译SQL语句
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, goods_id);
			pstmt.setString(2, goods_number);
			pstmt.setString(3, goods_price);
			pstmt.setString(4, goods_brand);
			pstmt.setString(5, goods_description);
			// 进行添加
			pstmt.execute();
		}
		
		
		//查询storage信息
		public void searchStorage(Connection con,String storage_id,String storage_type,String storage_count){
			String sql="select * from storage";
			int rowcount;
			try{
				PreparedStatement pstmt=con.prepareStatement(sql);
				ResultSet rs=pstmt.executeQuery(sql);
				pstmt.execute();
				rs.last();//将结果集位置移到最后
				rowcount=rs.getRow();
				if(rowcount>0)
				{
					System.out.println("shuchu");
				}else{
					rs=null;//将结果集设置为空
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				
			}
			
		}
		
		//查询goods信息
		public void searchGoods(Connection con,String goods_id,String goods_number,String goods_price,String goods_brand,String goods_description){
			String sql="select * from goods";
			int rowcount;
			try{
				PreparedStatement pstmt=con.prepareStatement(sql);
				ResultSet rs=pstmt.executeQuery(sql);
				pstmt.execute();
				rs.last();//将结果集位置移到最后
				rowcount=rs.getRow();
				if(rowcount>0)
				{
					System.out.println("shuchu");
				}else{
					rs=null;//将结果集设置为空
				}
			}catch(Exception e){
				System.out.println("cuowu");
				e.printStackTrace();
			}finally{
				
			}
			
		}
		
		//查询user信息
		public void searchUser(Connection con,String user_id,String user_name,String user_nickname,String user_password,String user_email,String user_sex,String user_birth,String user_idcard,String user_telephone,String user_postcode,String user_address,String user_favourite){
			String sql="select * from user";
			int rowcount;
			try{
				PreparedStatement pstmt=con.prepareStatement(sql);
				ResultSet rs=pstmt.executeQuery(sql);
				pstmt.execute();
				rs.last();//将结果集位置移到最后
				rowcount=rs.getRow();
				if(rowcount>0)
				{
					System.out.println("shuchu");
				}else{
					rs=null;//将结果集设置为空
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				
			}
			
		}
		

		//根据id查询信息
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

				// 根据rs对象来得到表里面的具体信息
				ResultSetMetaData rsmd = rs.getMetaData();
				// 得到表有多少列
				int columnCount = rsmd.getColumnCount();
				// 获取列名，并保存在数组里面
				String[] columnnames = new String[columnCount];
				for (int i = 0; i < columnnames.length; i++) {
					columnnames[i] = rsmd.getColumnName(i + 1);
				}

				// 把数据封装到集合里面
				if (rs.next()) {
					map = new HashMap<String, String>();
					// 封装一条记录
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
		
		
		// 更新User信息
		public boolean updateUser(Connection con,String user_id,String user_name,String user_nickname,String user_password,String user_email,String user_sex,String user_birth,String user_idcard,String user_telephone,String user_postcode,String user_address,String user_favourite) throws Exception{
			String sql = "update user set user_id=?,user_name=?,user_nickname=?,user_password=?,user_email=?,user_sex=?,user_birth=?,user_idcard=?,user_telephone=?,user_postcode=?,user_address=?,user_favourite=? where user_id='"+user_id+"'";
			// 预编译SQL语句
			boolean flag=false;
			try{
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user_id);
			pstmt.setString(2, user_name);
			pstmt.setString(3, user_nickname);
			pstmt.setString(4, user_password);
			pstmt.setString(5, user_email);
			pstmt.setString(6, user_sex);
			pstmt.setString(7, user_birth);
			pstmt.setString(8, user_idcard);
			pstmt.setString(9, user_telephone);
			pstmt.setString(10, user_postcode);
			pstmt.setString(11, user_address);
			pstmt.setString(12, user_favourite);
			// 进行更新
			int result=pstmt.executeUpdate();
			if(result>0)
			{	
				System.out.println("修改=============="+sql);
				flag=true;
			}else{
				flag=false;
			}
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("-----------");
		}
		return flag;
		}
		
		public boolean updateGoods(Connection con,String goods_id,String goods_number,String goods_price,String goods_brand,String goods_description) throws Exception{
			String sql = "update goods set goods_id=?,goods_number=?,goods_price=?,goods_brand=?,goods_description=? where goods_id='"+goods_id+"'";
			// 预编译SQL语句
			// 进行更新
			
			boolean flag=false;
			try{
				PreparedStatement pstmt=con.prepareStatement(sql);
				pstmt.setString(1, goods_id);
				pstmt.setString(2, goods_number);
				pstmt.setString(3, goods_price);
				pstmt.setString(4, goods_brand);
				pstmt.setString(5, goods_description);
				int result=pstmt.executeUpdate();
				if(result>0)
				{	
					System.out.println("修改=============="+sql);
					flag=true;
				}else{
					flag=false;
				}
			}catch(Exception e){
				e.printStackTrace();
				System.out.println("-----------");
			}
			return flag;
		}
		
		public boolean updateStorage(Connection con,String storage_id,String storage_type,String storage_count) throws Exception{
			String sql = "update storage set storage_id=?,storage_type=?,storage_count=? where storage_id='"+storage_id+"'";
			// 预编译SQL语句
			// 进行更新
			
			boolean flag=false;
			try{
				PreparedStatement pstmt=con.prepareStatement(sql);
				pstmt.setString(1, storage_id);
				pstmt.setString(2, storage_type);
				pstmt.setString(3, storage_count);
				int result=pstmt.executeUpdate();
				if(result>0)
				{	
					System.out.println("修改=============="+sql);
					flag=true;
				}else{
					flag=false;
				}
			}catch(Exception e){
				e.printStackTrace();
				System.out.println("-----------");
			}
			return flag;
		}
		
		
		public boolean deleteGoods(Connection con,String goods_id){
			String sql="delete from goods "+" where goods_id='"+goods_id+"'";
			boolean flag=false;
			try{
				PreparedStatement pstmt=con.prepareStatement(sql);
				int result=pstmt.executeUpdate();
				if(result>0)
				{	
					System.out.println("删除=============="+sql);
					flag=true;
				}else{
					flag=false;
				}
			}catch(Exception e){
				e.printStackTrace();
				System.out.println("-----------");
			}
			return flag;
		}
		
		public boolean deleteStorage(Connection con,String storage_id){
			String sql="delete from storage "+" where storage_id='"+storage_id+"'";
			boolean flag=false;
			try{
				PreparedStatement pstmt=con.prepareStatement(sql);
				int result=pstmt.executeUpdate();
				if(result>0)
				{	
					System.out.println("删除=============="+sql);
					flag=true;
				}else{
					flag=false;
				}
			}catch(Exception e){
				e.printStackTrace();
				System.out.println("-----------");
			}
			return flag;
		}
		
		public boolean deleteUser(Connection con,String user_id){
			String sql="delete from user "+" where user_id='"+user_id+"'";
			boolean flag=false;
			try{
				PreparedStatement pstmt=con.prepareStatement(sql);
				System.out.println("删除=============="+sql);
				int result=pstmt.executeUpdate();  //取得更新数目
				if(result>0)
				{
					flag=true;  //如果有SQL语句被更新。将删除标志设置为true
				}else{
					flag=false;
				}
			}catch(Exception e){
				System.out.println("-----------");
				e.printStackTrace();
			}
			return flag;
		}

		
}
