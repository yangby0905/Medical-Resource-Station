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
 * Servlet implementation class MakeAppointment
 */
@WebServlet("/MakeAppointment")
public class MakeAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MakeAppointment() {
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
			String u = user.getUsername();		
			Doctor doctor = (Doctor)request.getSession().getAttribute("choice");
			String d = doctor.getUsername();		
			String date = request.getParameter("date");
			String time = request.getParameter("time");
			String dat = date + " " + time;
			String description = request.getParameter("description");
			try {
		    	Connection conn = DB.getConnection();
				Statement stmt = conn.createStatement();
				String sql = "";
				ResultSet rs = null;
				int patientID = 0;
				sql = "SELECT * FROM patient WHERE username = '"+ u +"'";
				rs = stmt.executeQuery(sql);
				if(rs.next()) {
					patientID = rs.getInt(1);
				}
				int doctorID = 0;
				sql = "SELECT * FROM doctor WHERE username = '"+ d +"'";
				rs = stmt.executeQuery(sql);
				if(rs.next()) {
					doctorID = rs.getInt(1);
				}
				sql = "INSERT INTO appointment (patientID, doctorID, time, status, description)"
						+ "VALUES('"+ patientID +"', '"+ doctorID +"', '"+ dat +"', 'To be confirmed', '"+ description +"')";
				stmt.execute(sql);
				request.getSession().removeAttribute("choice");
				response.sendRedirect("index.jsp?error=remind");
				stmt.close();
				conn.close();
			}
			catch (SQLException | ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
	}

}
