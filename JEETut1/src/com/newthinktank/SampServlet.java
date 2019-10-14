package com.newthinktank;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;


/**
 * Servlet implementation class SampServlet
 * 
 * 1. Model: the java code the access/processes the data 
 * 2. View: the interface that the user sees
 * 3. Controller: serves as a communicator between the Model and View
 */

@WebServlet("/SampServlet")
public class SampServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SampServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 *default
		 *response.getWriter().append("Served at: ").append(request.getContextPath());
		 */
		
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	/* 
	 * default
	 * doGet(request, response);
	 */
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		try {
			out.println("<h3>Testing Servlets</h3>");
		}
		finally {
			out.close();
		}
		
	}

}
