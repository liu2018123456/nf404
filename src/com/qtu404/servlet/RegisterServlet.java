package com.qtu404.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qtu404.dataBase.DataBaseManager;
import com.qtu404.file.FileManager;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet(
		urlPatterns = { 
				"/RegisterServlet", 
				"/register.do"
		}, 
		initParams = { 
				@WebInitParam(name = "RegisterServlet", value = "")
		})
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
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
		String phone_String = request.getParameter("inputPhone");
		String SQL_String = "select * from account where username = '"+phone_String+"'"; 
		System.out.println(SQL_String);
		Object data[][] = DataBaseManager.unionQuery(SQL_String, 4);
		String msg_String =  "true";
		System.out.println(data.length);
		if (data.length!=0){//²»Í¨¹ý
			msg_String = "false";
		}
		response.getWriter().write(msg_String);
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String phoneNum_String = request.getParameter("phone");
		String password_String = request.getParameter("password");
		String question_String = request.getParameter("question");
		String anwser_String = request.getParameter("anwser");
		Object data[][] = DataBaseManager.unionQuery("select userId from account ORder by userId DESC", 1);
		String userID_String = (String) data[0][0];
		int userID_int = Integer.parseInt(userID_String) + 1;
		userID_String = userID_int + "";
		String SQL_String = "insert into account values('" + userID_String + "','" + phoneNum_String + "','"
				+ password_String + "','" + question_String + "','" + anwser_String + "')";
		DataBaseManager.generalUpdate(SQL_String);
		FileManager.createDir(userID_int + "");
		response.sendRedirect("home.jsp");
	}

}
