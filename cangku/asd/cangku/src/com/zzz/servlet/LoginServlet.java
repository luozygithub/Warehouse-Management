package com.zzz.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zzz.util.DbUtil;

@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet {

	public LoginServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user_id = request.getParameter("user_id");
		String user_password = request.getParameter("user_password");
		DbUtil util = new DbUtil();
		Connection con = null;
		try {
			con = util.getCon();
			boolean f=util.Logincheck(con, user_id, user_password);
			if(f)
			{
				request.setAttribute("msg", "登录成功！");
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("msg", "登录失败！请检查您输入的用户名或密码是否正确!");
				request.getRequestDispatcher("login.jsp").forward(request, response);
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
