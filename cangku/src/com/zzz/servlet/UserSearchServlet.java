package com.zzz.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CommonDao;
import com.zzz.util.DbUtil;

public class UserSearchServlet extends CommonServlet{

	public void doWork(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user_id =request.getParameter("user_id");
		request.setAttribute("user_id", user_id);
		request.getRequestDispatcher("updateuser.jsp").forward(request,
				response);
	}

}
