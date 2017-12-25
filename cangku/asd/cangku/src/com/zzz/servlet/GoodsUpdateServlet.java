package com.zzz.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zzz.util.DbUtil;

@SuppressWarnings("serial")
public class GoodsUpdateServlet extends HttpServlet {

	public GoodsUpdateServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String goods_id=request.getParameter("goods_id");
		String goods_number=request.getParameter("goods_number");
		String goods_price=request.getParameter("goods_price");
		String goods_brand=request.getParameter("goods_brand");
		String goods_description=request.getParameter("goods_description");
		boolean flag=false;
		Connection con = null;
		DbUtil util = new DbUtil();
		try {
			con = util.getCon();
			util.updateGoods(con,goods_id,goods_number,goods_price,goods_brand,goods_description);
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
		request.getRequestDispatcher("displaygoods.jsp").forward(request, response);
		
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
