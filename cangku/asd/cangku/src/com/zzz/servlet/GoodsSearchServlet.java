package com.zzz.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GoodsSearchServlet extends CommonServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doWork(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String goods_id = request.getParameter("goods_id");
		request.setAttribute("goods_id", goods_id);
		request.getRequestDispatcher("updategoods.jsp").forward(request, response);
	}

}
