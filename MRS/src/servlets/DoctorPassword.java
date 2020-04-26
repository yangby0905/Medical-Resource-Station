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
 * Servlet implementation class DoctorPassword
 */
@WebServlet("/DoctorPassword")
public class DoctorPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorPassword() {
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
			response.sendRedirect("login_.jsp?error=session");
		}
		else {
			String un = user.getUsername();
			String pw = request.getParameter("password");
			String pw_c = request.getParameter("confirmation");
			if(pw.contentEquals("")) {
				response.sendRedirect("changethepassword_doctor.jsp?error=password");
			}
			else if(!pw.contentEquals(pw_c)) {
				response.sendRedirect("changethepassword_doctor.jsp?error=different");
			}
			else {
				try {
					Connection conn = DB.getConnection();
					Statement stmt = conn.createStatement();
					String sql = "UPDATE doctor SET password = '"+ pw +"' WHERE username = '"+ un +"'";
					stmt.execute(sql);
					request.getRequestDispatcher("signupsuccess_doctor.jsp").forward(request, response);
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
