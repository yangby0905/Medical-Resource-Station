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

import classes.Doctor;
import classes.User;
import database.DB;

/**
 * Servlet implementation class ChooseDoctor
 */
@WebServlet("/ChooseDoctor")
public class ChooseDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChooseDoctor() {
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
		String choice = request.getParameter("choice");
		if(choice == null) {
			response.sendRedirect("RecommendDoctor.jsp?error=choice");
		}
		else {
			int id = Integer.parseInt(choice);
			try {
		    	Connection conn = DB.getConnection();
				Statement stmt = conn.createStatement();
				String sql = "SELECT * FROM doctor WHERE ID = '"+ id +"'";
				ResultSet rs = stmt.executeQuery(sql);
				if(rs.next()) {
					Doctor doctor = new Doctor(rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), 
							rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
					request.getSession().setAttribute("choice", doctor);
					request.getRequestDispatcher("DoctorHomePage.jsp").forward(request, response);
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
