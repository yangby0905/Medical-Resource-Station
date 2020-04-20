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
 * Servlet implementation class PatientVerify
 */
@WebServlet("/PatientVerify")
public class PatientVerify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientVerify() {
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
		if(un.contentEquals("")) {
			response.sendRedirect("forgotpassword.jsp?error=username");
		}
		else if(em.contentEquals("")) {
			response.sendRedirect("forgotpassword.jsp?error=email");
		}
		else {
			try {
				Connection conn = DB.getConnection();
				Statement stmt = conn.createStatement();
				String sql = "SELECT * FROM patient WHERE username = '"+ un +"' AND email = '"+ em +"'";
				ResultSet rs = stmt.executeQuery(sql);
				if(rs.next()) {
					User user = new User(un, rs.getString(3), rs.getString(4), rs.getInt(5), 
							rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));
					request.getSession().setAttribute("user", user);
					request.getRequestDispatcher("changethepassword.jsp").forward(request, response);
				}
				else {
					response.sendRedirect("forgotpassword.jsp?error=fail");
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
