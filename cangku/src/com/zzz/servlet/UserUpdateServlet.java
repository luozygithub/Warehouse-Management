package com.zzz.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zzz.util.DbUtil;

public class UserUpdateServlet extends HttpServlet {

	public UserUpdateServlet() {
		super();
	}
	public void destroy() {
		super.destroy();
	}// Just puts "destroy" string in log
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user_name=request.getParameter("user_name");
		String user_nickname=request.getParameter("user_nickname");
		String user_password=request.getParameter("user_password");
		String user_email=request.getParameter("user_email");
		String user_sex=request.getParameter("user_sex");
		String user_birth=request.getParameter("user_birth");
		String user_idcard=request.getParameter("user_idcard");
		String user_telephone=request.getParameter("user_telephone");
		String user_postcode=request.getParameter("user_postcode");
		String user_address=request.getParameter("user_address");
		String user_favourite=request.getParameter("user_favourite");
		String user_id=request.getParameter("user_id");
		boolean flag=false;
		Connection con = null;
		DbUtil util = new DbUtil();
		try {
			con = util.getCon();
			util.updateUser(con,user_id, user_name,user_nickname,user_password,user_email,user_sex,user_birth,user_idcard,user_telephone,user_postcode, user_address,user_favourite);
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
			request.setAttribute("msg", "修改失败！请重新修改！");
		}
		request.getRequestDispatcher("superuser_user.jsp").forward(request, response);
		
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
