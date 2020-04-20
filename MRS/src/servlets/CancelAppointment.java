package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DB;

/**
 * Servlet implementation class CancelAppointment
 */
@WebServlet("/CancelAppointment")
public class CancelAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CancelAppointment() {
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
		String id = request.getParameter("cancel");
		try {
    		Connection conn = DB.getConnection();
			Statement stmt = conn.createStatement();
			String sql = "UPDATE appointment SET status = 'Cancelled' WHERE ID = '"+ id +"'";
			stmt.execute(sql);
			//request.getRequestDispatcher("appointment.jsp").forward(request, response);
			response.sendRedirect("appointment.jsp");
			stmt.close();
			conn.close();
		}
		catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

}
