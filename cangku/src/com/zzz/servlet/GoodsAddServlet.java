package com.zzz.servlet;
import java.net.*;
import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zzz.util.DbUtil;

public class GoodsAddServlet extends HttpServlet {
	private static final long serialVersionUID = 5952689219411916553L;
	public GoodsAddServlet() {
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
		String goods_brand=new String( request.getParameter("goods_brand").getBytes("utf-8"),"gbk");
		System.out.println(goods_brand);
/*		String strUTF8 = URLDecoder.decode(goods_brand, "UTF-8");  
		System.out.print(strUTF8);  */
		String goods_description=request.getParameter("goods_description");
		boolean flag=false;
		Connection con=null;
		DbUtil util = new DbUtil();
		try {
			con = util.getCon();
			util.addGoods(con,goods_id,goods_number,goods_price,goods_brand,goods_description);
			flag=true;
		} catch (Exception e) {
			e.printStackTrace();
			flag=false;
		} finally{
			util.closeCon(con);
		}
		
		if(flag){
			request.setAttribute("msg", "…Í«Î≥…π¶£°");
		}else{
			request.setAttribute("msg", "…Í«Î ß∞‹£°«Î÷ÿ–¬…Í«Î£°");
		}
		request.getRequestDispatcher("goods.jsp").forward(request, response);

	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
		
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
