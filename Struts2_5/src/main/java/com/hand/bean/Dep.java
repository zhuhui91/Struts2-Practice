package com.hand.bean;

public class Dep
{   // 部门实体类
	private int dptId;
	private String dptName;
	
	public int getDptId()
	{
		return dptId;
	}
	public void setDptId(int dptId)
	{
		this.dptId = dptId;
	}
	public String getDptName()
	{
		return dptName;
	}
	public void setDptName(String dptName)
	{
		this.dptName = dptName;
	}
	public Dep(int dptId, String dptName) {
		this.dptId = dptId;
		this.dptName = dptName;
	}



}
