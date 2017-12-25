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

public class StorageSearchServlet extends CommonServlet{

	public void doWork(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String storage_id =request.getParameter("storage_id");
		request.setAttribute("storage_id", storage_id);
		request.getRequestDispatcher("updatestorage.jsp").forward(request,
				response);
	}

}
