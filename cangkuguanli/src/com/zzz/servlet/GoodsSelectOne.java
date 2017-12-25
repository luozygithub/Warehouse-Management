package com.zzz.servlet;

import java.util.Map;

import com.dao.CommonDao;

public class GoodsSelectOne {

	public Map<String, String> getOneById(String goods_id) {
		Map<String, String> map = null;
		String sql = "select goods_id,goods_number,goods_price,goods_brand,goods_description"
				+ " from goods where goods_id=?";
		String[] args = { goods_id };
		map = CommonDao.getMap(sql, args);
		return map; 
	}

}
