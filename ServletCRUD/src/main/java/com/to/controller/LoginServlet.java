package com.to.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/getLogin")
public class LoginServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		 res.setContentType("text/html");
		 PrintWriter pr = res.getWriter();
		 String uid = req.getParameter("loginname");
		 String pwd = req.getParameter("loginpassword");
		
		List<Emp> list = EmpDao.getLoginDetails(uid,pwd);
		String name="";
		String pwds="";
		for(Emp e:list)
		{
			name=e.getName();
			pwds=e.getPassword();
		}
		
		
		   if((uid.equals(name)) && (pwd.equals(pwds)))
           {
			  
			   RequestDispatcher rd=getServletConfig().getServletContext().getRequestDispatcher("/jsp/mainpage.jsp");
			   rd.forward(req, res);
              }else 
		     {
			
			   RequestDispatcher rd=getServletConfig().getServletContext().getRequestDispatcher("/index.jsp");
			   rd.include(req, res);
		     }
		
	}

}