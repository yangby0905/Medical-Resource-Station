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
 * Servlet implementation class DoctorUpdate
 */
@WebServlet("/DoctorUpdate")
public class DoctorUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorUpdate() {
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
		String un = null;
		Doctor doctor = (Doctor)request.getSession().getAttribute("doctor");
		if(doctor != null)
			un = doctor.getUsername();
		else
			response.sendRedirect("login_.jsp?error=session");
		
		boolean flag = true;
		String age = request.getParameter("age");
		if(age != "") {
			char[] ag = age.toCharArray();
			for(char ch : ag) {
				if(!Character.isDigit(ch)) {
					flag = false;
					break;
				}
			}
		}
		if(flag) {
			try {
		    	Connection conn = DB.getConnection();
				Statement stmt = conn.createStatement();
				String sql = "";
				
				String rn = request.getParameter("realname");
				if(rn != "") {
					sql = "UPDATE doctor SET name = '"+ rn +"' WHERE username = '"+ un +"'";
					stmt.execute(sql);
				}
				
				if(age != "") {
					int a = Integer.parseInt(age);
					sql = "UPDATE doctor SET age = '"+ a +"' WHERE username = '"+ un +"'";
					stmt.execute(sql);
				}
				
				String gender = request.getParameter("gender");
				if(gender != null) {
					sql = "UPDATE doctor SET gender = '"+ gender +"' WHERE username = '"+ un +"'";
					stmt.execute(sql);
				}
				
				String address = request.getParameter("address");
				if(address != "") {
					sql = "UPDATE doctor SET address = '"+ address +"' WHERE username = '"+ un +"'";
					stmt.execute(sql);
				}
				
				String phone = request.getParameter("phone");
				if(phone != "") {
					sql = "UPDATE doctor SET phone = '"+ phone +"' WHERE username = '"+ un +"'";
					stmt.execute(sql);
				}
				
				String email = request.getParameter("email");
				if(email != "") {
					sql = "UPDATE doctor SET email = '"+ email +"' WHERE username = '"+ un +"'";
					stmt.execute(sql);
				}
				
				String expertise = request.getParameter("expertise");
				if(expertise != "") {
					sql = "UPDATE doctor SET expertise = '"+ expertise +"' WHERE username = '"+ un +"'";
					stmt.execute(sql);
				}
				
				request.getSession().removeAttribute("doctor");
				sql = "SELECT * FROM doctor WHERE username = '"+ un +"'";
				ResultSet rs = stmt.executeQuery(sql);
				doctor = new Doctor(un, rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6), 
						rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
				request.getSession().setAttribute("doctor", doctor);
				
				stmt.close();
				conn.close();
				request.getRequestDispatcher("usercenter_.jsp").forward(request, response);
			}
			catch (SQLException | ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
		else {
			response.sendRedirect("usercenter.jsp?error=age");
		}
	}

}
