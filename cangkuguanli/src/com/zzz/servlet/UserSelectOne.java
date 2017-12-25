package com.zzz.servlet;

import java.util.Map;

import com.dao.CommonDao;

public class UserSelectOne {

	public Map<String, String> getOneById(String user_id) {
		Map<String, String> map = null;
		String sql = "select user_id,user_name,user_nickname,user_password,user_email,user_sex,user_birth,user_idcard,user_telephone,user_postcode,user_address,user_favourite"
				+ " from user where user_id=?";
		String[] args = { user_id };
		map = CommonDao.getMap(sql, args);
		return map; 
	}

}
