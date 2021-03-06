package com.Nil.Action;



import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.Session;

import org.apache.struts2.ServletActionContext;

import com.Nil.Database.UserDao;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class UserAction implements Action
{
	private String username;
	private String password;
	private String password2;
	
	public String getUsername() 
	{
		return username;
	}
	
	public void setUsername(String username) 
	{
		this.username = username;
	}
	
	public String getPassword() 
	{
		return password;
	}
	
	public void setPassword(String password) 
	{
		this.password = password;
	}
	
	public String getPassword2() 
	{
		return password2;
	}

	public void setPassword2(String password2) 
	{
		this.password2 = password2;
	}
	
	public String login()
	{
		System.out.println("login");
		UserDao dao = new UserDao();
		if (dao.loginCheck(username, password))
		{
			ActionContext ctx = ActionContext.getContext();
			ctx.getSession().put("username", username);
			System.out.println("login success");
			return SUCCESS;
		}
		System.out.println("login fail");
		return "fail";
	}
	
	public String logout()
	{
		Map session = ActionContext.getContext().getSession();
		session.clear();
		return SUCCESS;
	}

	public String register()
	{
		try
		{
			if (password.equals(password2))
			{
				UserDao dao = new UserDao();
				if (dao.registerUser(username, password))
				{
					return LOGIN;
				}
			}
		}
		catch(Exception e)
		{
			return "fail";
		}
		return "fail";
	}
	
	@Override
	public String execute() throws Exception 
	{
		// TODO Auto-generated method stub
		return null;
	}
}
