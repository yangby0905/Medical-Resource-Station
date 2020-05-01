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
import database.DB;

/**
 * Servlet implementation class ViewPrescription
 */
@WebServlet("/ViewPrescription")
public class ViewPrescription extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewPrescription() {
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
		String aID = request.getParameter("appointment");
		int ID = 0;
		if(aID != null)
			ID = Integer.parseInt(aID);
		try {
	    	Connection conn = DB.getConnection();
			Statement stmt = conn.createStatement();
			String sql = "SELECT * FROM prescription WHERE appointmentID = '"+ ID +"'";
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()) {
				request.getRequestDispatcher("prescriptiondetail.jsp").forward(request, response);
			}
			else {
				response.sendRedirect("prescriptiondetail.jsp?error=no");
			}
			stmt.close();
			conn.close();
		}
		catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

}
