package com.zzz.servlet;

import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract class CommonServlet extends HttpServlet {
	private static final long serialVersionUID = 5952689219411916553L;
	public static Map<String, String> valueStack = new HashMap<String, String>();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		fillData(request, response);
		doWork(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		fillData(request, response);
		doWork(request, response);
	}

	public abstract void doWork(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException;
	
	public void fillData(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("GBK");
		response.setCharacterEncoding("GBK");
		@SuppressWarnings("rawtypes")
		Enumeration em = request.getParameterNames();
		while (em.hasMoreElements()) {
			String key = (String) em.nextElement();
			String[] valueAll = request.getParameterValues(key);
			String value = "";
			if (valueAll.length != 0) {
				if (valueAll.length == 1) {
					value = valueAll[0];
				} else {
					for (int i = 0; i < valueAll.length; i++) {
						value = value + valueAll[i] + ",";
					}
					value = value.substring(0, value.length() - 1);
				}
			}
			valueStack.put(key, value);
		}
	}

}
