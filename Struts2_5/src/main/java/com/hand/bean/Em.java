package com.hand.bean;

public class Em  
{  // 员工实体类
	private int eplId;
	private String username;
	
	public int getEplId()
	{
		return eplId;
	}
	public void setEplId(int eplId)
	{
		this.eplId = eplId;
	}
	public String getUsername()
	{
		return username;
	}
	public void setUsername(String username)
	{
		this.username = username;
	}
	public Em(int eplId, String username) {
		this.eplId = eplId;
		this.username = username;
	}
	
	
	
	

	
}
