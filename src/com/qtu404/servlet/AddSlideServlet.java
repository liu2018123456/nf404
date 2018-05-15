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
import com.qtu404.file.FileManager;

/**
 * Servlet implementation class AddSlideServlet
 */
@WebServlet(
		urlPatterns = { 
				"/AddSlideServlet", 
				"/addSlide.do"
		}, 
		initParams = { 
				@WebInitParam(name = "AddSlideServlet", value = "")
		})
public class AddSlideServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddSlideServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		String userId_String = (String) session.getAttribute("usrname"); 
		String slideId_String = request.getParameter("slideId");
		String SQL_String = "delete from slides where userId = '"+userId_String+"' and slideId = '"+slideId_String+"'";
		DataBaseManager.generalUpdate(SQL_String);
		FileManager.writeInto("", userId_String+"/"+slideId_String);
		FileManager.writeInto("", userId_String+"/"+slideId_String+"_play");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession(false);
		String userId_String = (String) session.getAttribute("usrname"); 
		String slideId_String = request.getParameter("slideId");
		String SQL_String = "insert into slides values('"+userId_String+"','"+slideId_String+"','','ÐÂ½¨»ÃµÆÆ¬')";
		DataBaseManager.generalUpdate(SQL_String);
		FileManager.writeInto("", userId_String+"/"+slideId_String);
		FileManager.writeInto("", userId_String+"/"+slideId_String+"_play");
	}

}
