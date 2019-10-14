package com.newthinktank;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 * Servlet implementation class ProcessInfo
 */
@WebServlet("/ProcessInfo")
public class ProcessInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProcessInfo() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		response.getWriter().append("Served at: ").append(request.getContextPath());
		*/
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		doGet(request, response);
		*/
		String url = "/DisplayInfo.jsp";
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String phone = request.getParameter("phone");
		
		updateCustomerDB(firstName, lastName, phone);
		
		Customer cust = new Customer(firstName, lastName, phone);
		
		request.setAttribute("cust", cust);
		
		getServletContext().getRequestDispatcher(url).forward(request, response);
		
	}
	
	protected void updateCustomerDB( String firstName, String lastName, String phone ) {
		// Connects to the DB
		Connection con;
		
		try {
			// Everything needed to connect to the DB
			Class.forName("com.mysql.jdbc.Driver");
			String dbUrl = "jdbc:mysql://localhost/test1";
	        String user = "admin";
	        String pw = "cookie";
			con = DriverManager.getConnection(dbUrl, user, pw);
			Statement s = con.createStatement();
//			mysql> INSERT INTO CUSTOMER (first_name, last_name, phone, cust_id)
//		    -> VALUES('carl', 'johnson', '123435679', NULL);
			String query = "INSERT INTO customer(first_name, last_name, phone, cust_id) "
					+ "VALUES ('" + firstName + "', '" + lastName + "', '" + phone + "', NULL)";
			s.executeUpdate(query);
		} catch(ClassNotFoundException e){
			e.printStackTrace();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			//do nothing
		}
	}

	

}
