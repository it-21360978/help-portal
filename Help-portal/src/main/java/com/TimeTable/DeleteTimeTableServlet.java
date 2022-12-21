package com.TimeTable;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteTimeTableServlet")
public class DeleteTimeTableServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String moduleCode = request.getParameter("mc");
	    
		boolean isTrue;
		
		isTrue = TimeTableDBUtil.deletetimetable(moduleCode);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("SMsuccess.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("SMunsuccess.jsp");
			dis.forward(request, response);
		}
	
	}

}