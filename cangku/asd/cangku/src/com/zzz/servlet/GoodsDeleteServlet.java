package com.zzz.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zzz.util.DbUtil;


public class GoodsDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 5952689219411916553L;
	public GoodsDeleteServlet() {
		super();
	}
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String goods_id=request.getParameter("goods_id");
		DbUtil util=new DbUtil();
		Connection con=null;
		boolean flag=false;
		try{
			con=util.getCon();
			util.deleteGoods(con, goods_id);
		    flag=true;
		}catch(Exception e){
			e.printStackTrace();
			flag=false;
		}finally{
			util.closeCon(con);
		}
		if(flag){
			request.setAttribute("msg", "删除成功！");
		}else{
			request.setAttribute("msg", "删除失败！产品不存在或者数据连接错误，请重新输入！");
		}
		request.getRequestDispatcher("deletegoods.jsp").forward(request, response);
		
	
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
		
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
