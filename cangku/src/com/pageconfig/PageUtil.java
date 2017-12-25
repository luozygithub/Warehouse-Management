package com.pageconfig;

import com.db.DBHelp;

public class PageUtil {
	private int everypagenum=5;
	private int cpage;
	private int allpage;
	private int allcount;

	public int getEverypagenum() {
		return everypagenum;
	}

	public void setEverypagenum(int everypagenum) {
		this.everypagenum = everypagenum;
	}

	public int getCpage() {
		return cpage;
	}

	public void setCpage(int cpage) {
		if(cpage<=0){
			this.cpage = 1;
		}else if(cpage>this.getAllpage()){
			this.cpage = this.getAllpage(); 
		}else{
			this.cpage = cpage;
		}
	}

	public int getAllpage() {
		return allpage;
	}

	public void setAllpage() {
		this.allpage = (this.getAllcount()+this.everypagenum-1)/this.everypagenum;
	}

	public int getAllcount() {
		return allcount;
	}

	public void setAllcount(String sql) {
		String mysql = "select count(*) from ("+sql+") t";
		this.allcount = DBHelp.getAllCount(mysql);
	}

}
