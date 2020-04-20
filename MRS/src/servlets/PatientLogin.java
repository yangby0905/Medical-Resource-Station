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
import classes.User;

/**
 * Servlet implementation class PatientLogin
 */
@WebServlet("/PatientLogin")
public class PatientLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientLogin() {
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
		String pw = request.getParameter("password");
	    try {
	    	Connection conn = DB.getConnection();
			Statement stmt = conn.createStatement();
			String sql = "SELECT * FROM patient WHERE username = '"+ un +"'";
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()) {
				sql = "SELECT * FROM patient WHERE username = '"+ un +"' AND password = '"+ pw + "'";
				ResultSet rs_ = stmt.executeQuery(sql);
				if(rs_.next()) {
					User user = new User(un, pw, rs_.getString(4), rs_.getInt(5), 
							rs_.getString(6), rs_.getString(7), rs_.getString(8), rs_.getString(9));
					request.getSession().setAttribute("user", user);
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
				else {
					response.sendRedirect("login.jsp?error=password");
				}
			}				
			else
				response.sendRedirect("login.jsp?error=username");
			stmt.close();
			conn.close();
		}
	    catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

}
