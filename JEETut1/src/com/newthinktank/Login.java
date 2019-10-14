package com.newthinktank;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//	PrintWriter format datatypes as text, rather than as their byte values
		
		doGet(request, response);
		PrintWriter out = response.getWriter();
//		Connection con;
		
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");
		
		
		String dbUrl = "jdbc:mysql://localhost/test1";
        String user = "admin";
        String pw = "cookie";
        String url = "welcomeUser.jsp?name=" +name +"";
//        http://localhost:8081/JEETut1/welcomeUser.jsp?name=" +name +""
        
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(dbUrl, user, pw);
//			mysql> CREATE TABLE user_registration ( user_name VARCHAR(30) NOT NULL, user_pass VARCHAR(30) NOT NULL, user_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY);
			Statement s = con.createStatement();
			ResultSet rs = s.executeQuery("SELECT user_name, user_pass "
					+ "FROM user_registration "
					+ "WHERE user_name = '" +name +"' and user_pass = '" +pass +"' ");		
//			SELECT user_name, user_pass FROM user_registration WHERE user_name = 'xxxxx'
//			INSERT INTO user_registration ( user_name, user_pass, user_id) VALUES ( 'john', 'jones', NULL);	
			
			if(rs.next()) {
				HttpSession session = request.getSession();
				session.setAttribute("name", name);
				response.sendRedirect(url);
//				getServletContext().getRequestDispatcher(url).forward(request, response);
			} else {
				out.println("Wrong user name or password");
			}
			
			
		} catch (ClassNotFoundException e){
				e.printStackTrace();
		} catch (SQLException e) {
				e.printStackTrace();
		} finally {
			//do nothing 
		}		
	}
}
