package com.zzz.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zzz.util.DbUtil;

public class StorageUpdateServlet extends HttpServlet {

	public StorageUpdateServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String storage_type=request.getParameter("storage_type");
		String storage_count=request.getParameter("storage_count");
		String storage_id=request.getParameter("storage_id");
		boolean flag=false;
		Connection con = null;
		DbUtil util = new DbUtil();
		try {
			con = util.getCon();
			util.updateStorage(con,storage_id,storage_type,storage_count);
			flag=true;
		} catch (Exception e) {
			e.printStackTrace();
			flag=false;
		} finally{
			util.closeCon(con);
		}
		
		if(flag){
			request.setAttribute("msg", "修改成功！");
		}else{
			request.setAttribute("msg", "修改失败！仓库已被其他用户使用，请重新修改！");
		}
		request.getRequestDispatcher("displaystorage.jsp").forward(request, response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}
	

	public void init() throws ServletException {
		// Put your code here
	}

}
