package com.zzz.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zzz.util.DbUtil;

public class SuperuserLoginServlet extends HttpServlet {

	public SuperuserLoginServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String superuser_id = request.getParameter("superuser_id");
		String superuser_password = request.getParameter("superuser_password");
		DbUtil util = new DbUtil();
		Connection con = null;
		try {
			con = util.getCon();
			boolean f=util.SuperuserLogincheck(con, superuser_id, superuser_password);
			if(f)
			{
				request.setAttribute("msg", "登录成功！");
				request.getRequestDispatcher("superuser.jsp").forward(request, response);
			}
			else{
				request.setAttribute("msg", "登录失败！请检查您输入的用户名或密码是否正确!");
				request.getRequestDispatcher("superuserlogin.jsp").forward(request, response);
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		} finally{
			util.closeCon(con);
		}
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);

	}

	public void init() throws ServletException {
		// Put your code here
	}

}
