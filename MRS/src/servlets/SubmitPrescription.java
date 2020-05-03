package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DB;

/**
 * Servlet implementation class SubmitPrescription
 */
@WebServlet("/SubmitPrescription")
public class SubmitPrescription extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubmitPrescription() {
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
		String aID = request.getParameter("appointmentID");
		int ID = 0;
		if(aID != null)
			ID = Integer.parseInt(aID);
		String content = request.getParameter("content");
		Format f = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");					 
    	Date today = new Date();			 
    	Calendar c = Calendar.getInstance();
    	c.setTime(today);		 
    	Date now = c.getTime();
    	String time = f.format(now);
    	try {
			Connection conn = DB.getConnection();
			Statement stmt = conn.createStatement();

			String sql="SELECT * from record WHERE ID = '"+ ID + "'";
			ResultSet rs = stmt.executeQuery(sql);

			if (rs.next()){
				String sql2 = "SELECT ID, patientID, doctorID, time, status, description from appointment WHERE ID = '"+ ID + "'";
				ResultSet rs2 = stmt.executeQuery(sql2);
				int rID=rs2.getInt(1);
				int rPID=rs2.getInt(2);
				int rDID=rs2.getInt(3);
				String rTime=rs2.getString(4);
				String rStatus=rs2.getString(5);
				String rDescription=rs2.getString(6);
				
				sql = "UPDATE record SET patientID = '"+ rPID +"', doctorID = '"+ rDID+"', time = '"+ rTime+"', status = '"+ rStatus+"', item = '"+ rDescription+"' WHERE ID = '"+ ID +"'";
				stmt.execute(sql);
				
			}else {
				String sql2 = "SELECT ID, patientID, doctorID, time, status, description from appointment WHERE ID = '"+ ID + "'";
				ResultSet rs2 = stmt.executeQuery(sql2);
				int rID=rs2.getInt(1);
				int rPID=rs2.getInt(2);
				int rDID=rs2.getInt(3);
				String rTime=rs2.getString(4);
				String rStatus=rs2.getString(5);
				String rDescription=rs2.getString(6);
				
				sql = "INSERT INTO record (ID, patientID, doctorID, time, status, item, paymentAmount) VALUES ('"+ rID +"', '"+ rPID +"', '"+ rDID +"','"+rTime+"' , '"+rStatus+"', '"+rDescription+"', '20')";
				stmt.execute(sql);
			}
			
			sql = "INSERT INTO prescription (appointmentID, content, time) VALUES ('"+ ID +"', '"+ content +"', '"+ time +"')";
			stmt.execute(sql);
			
			request.getRequestDispatcher("prescription_.jsp").forward(request, response);
			stmt.close();
			conn.close();
		}
		catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

}
