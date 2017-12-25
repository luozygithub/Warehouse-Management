package com.zzz.servlet;

import java.util.Map;

import com.dao.CommonDao;

public class StorageSelectOne {

	public Map<String, String> getOneById(String storage_id) {
		Map<String, String> map = null;
		String sql = "select storage_id,storage_type,storage_count"
				+ " from storage where storage_id=?";
		String[] args = { storage_id };
		map = CommonDao.getMap(sql, args);
		return map; 
	}

}
