package com.qtu404.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.qtu404.dataBase.DataBaseManager;

/**
 * Servlet implementation class login
 */
@WebServlet(
		urlPatterns = { 
				"/login", 
				"/login.do"
		}, 
		initParams = { 
				@WebInitParam(name = "login", value = "")
		})
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      respons	e)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String userName_String = request.getParameter("user_name");
		String password_String = request.getParameter("user_password");
		HttpSession session = request.getSession(false);
		String userId_String = DataBaseManager.verifyLogin(userName_String, password_String);
		String isSuccesString="false";
		if (userId_String.equals("")) {
			session.setAttribute("usrname", "");
		} else {
			session.setAttribute("usrname", userId_String);
			isSuccesString="true";
		}
		response.getWriter().write(isSuccesString);
	}

}
