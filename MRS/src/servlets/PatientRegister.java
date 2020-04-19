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

import database.DB;

/**
 * Servlet implementation class PatientRegister
 */
@WebServlet("/PatientRegister")
public class PatientRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientRegister() {
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
		String un = request.getParameter("username");
		String em = request.getParameter("email");
		String pw = request.getParameter("password");
		String pw_c = request.getParameter("confirmation");
		if(un.contentEquals("")) {
			response.sendRedirect("signup.jsp?error=username");
		}
		else if(em.contentEquals("")) {
			response.sendRedirect("signup.jsp?error=email");
		}
		else if(pw.contentEquals("")) {
			response.sendRedirect("signup.jsp?error=password");
		}
		else if(!pw.contentEquals(pw_c)) {
			response.sendRedirect("signup.jsp?error=different");
		}
		else {
			try {
				Connection conn = DB.getConnection();
				Statement stmt = conn.createStatement();
				String sql = "SELECT * FROM patient WHERE username = '"+ un +"'";
				ResultSet rs = stmt.executeQuery(sql);
				if(rs.next()) {
					response.sendRedirect("signup.jsp?error=exist");
				}
				else {
					sql = "INSERT INTO patient (username, password, email) VALUES ('"+ un +"', '"+ pw +"', '"+ em +"')";
					stmt.execute(sql);
					request.getRequestDispatcher("signupsuccess.jsp").forward(request, response);
				}
				stmt.close();
				conn.close();
			}
			catch (SQLException | ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
	}

}
