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
 * Servlet implementation class EditSlideNameServlet
 */
@WebServlet(
		urlPatterns = { 
				"/EditSlideNameServlet", 
				"/editName.do"
		}, 
		initParams = { 
				@WebInitParam(name = "EditSlideNameServlet", value = "")
		})
public class EditSlideNameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditSlideNameServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession(false);
		String userId_String = (String) session.getAttribute("usrname");
		String slideId_String = request.getParameter("slideId");
		String slideName_String = request.getParameter("SlideName");
		String SQL_String = "update slides set name = '"+slideName_String+"' where slideId = '"+slideId_String+"' and userId='"+userId_String+"'";
		DataBaseManager.generalUpdate(SQL_String);
	}

}
