package com.zzz.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zzz.util.DbUtil;

@SuppressWarnings("serial")
public class StorageAddServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String storage_id=request.getParameter("storage_id");
		String storage_type=request.getParameter("storage_type");
		String storage_count=request.getParameter("storage_count");
		boolean flag=false;
		Connection con = null;
		DbUtil util = new DbUtil();
		try {
			con = util.getCon();
			util.addStorage(con,storage_id,storage_type,storage_count);
			flag=true;
		} catch (Exception e) {
			e.printStackTrace();
			flag=false;
		} finally{
			util.closeCon(con);
		}
		
		if(flag){
			request.setAttribute("msg", "申请成功！");
		}else{
			request.setAttribute("msg", "申请失败！仓库已被其他用户申请，请重新申请！");
		}
		request.getRequestDispatcher("storage.jsp").forward(request, response);
	}


	public StorageAddServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
