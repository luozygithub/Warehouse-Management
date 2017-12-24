package com.zzz.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zzz.util.DbUtil;

@SuppressWarnings("serial")
public class UserDeleteServlet extends HttpServlet {

	public UserDeleteServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_id = request.getParameter("user_id");
		DbUtil util = new DbUtil();
		Connection con = null;
		boolean flag = false;
		try {
			con = util.getCon();
			util.deleteUser(con, user_id);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
			flag = false;
		} finally {
			util.closeCon(con);
		}
		if (flag) {
			request.setAttribute("msg", "ɾ���ɹ���");
		} else {
			request.setAttribute("msg", "ɾ��ʧ�ܣ��û������ڻ����������Ӵ������������룡");
		}
		response.sendRedirect("superuser_user.jsp");

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);

	}

	public void init() throws ServletException {
		// Put your code here
	}

}
