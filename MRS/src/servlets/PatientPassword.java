package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import classes.User;
import database.DB;

/**
 * Servlet implementation class PatientPassword
 */
@WebServlet("/PatientPassword")
public class PatientPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientPassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User user = (User)request.getSession().getAttribute("user");
		if(user == null) {
			response.sendRedirect("login.jsp?error=session");
		}
		else {
			String un = user.getUsername();
			String pw = request.getParameter("password");
			String pw_c = request.getParameter("confirmation");
			if(pw.contentEquals("")) {
				response.sendRedirect("changethepassword.jsp?error=password");
			}
			else if(!pw.contentEquals(pw_c)) {
				response.sendRedirect("changethepassword.jsp?error=different");
			}
			else {
				try {
					Connection conn = DB.getConnection();
					Statement stmt = conn.createStatement();
					String sql = "UPDATE patient SET password = '"+ pw +"' WHERE username = '"+ un +"'";
					stmt.execute(sql);
					request.getRequestDispatcher("signupsuccess.jsp").forward(request, response);
					stmt.close();
					conn.close();
				}
				catch (SQLException | ClassNotFoundException e) {
					e.printStackTrace();
				}
			}
		}
	}

}
