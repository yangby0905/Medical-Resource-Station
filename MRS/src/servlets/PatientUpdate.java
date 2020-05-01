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
 * Servlet implementation class PatientUpdate
 */
@WebServlet("/PatientUpdate")
public class PatientUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientUpdate() {
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
		User user = (User)request.getSession().getAttribute("user");
		if(user != null)
			un = user.getUsername();
		else
			response.sendRedirect("login.jsp?error=session");
		
		boolean flag = true;
		String age = request.getParameter("age");
		if(!age.trim().equals("")) {
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
				if(!rn.trim().equals("")) {
					sql = "UPDATE patient SET name = '"+ rn +"' WHERE username = '"+ un +"'";
					stmt.execute(sql);
				}
				
				if(!age.trim().equals("")) {
					int a = Integer.parseInt(age);
					sql = "UPDATE patient SET age = '"+ a +"' WHERE username = '"+ un +"'";
					stmt.execute(sql);
				}
				
				String gender = request.getParameter("gender");
				if(gender != null) {
					sql = "UPDATE patient SET gender = '"+ gender +"' WHERE username = '"+ un +"'";
					stmt.execute(sql);
				}
				
				String address = request.getParameter("address");
				if(!address.trim().equals("")) {
					sql = "UPDATE patient SET address = '"+ address +"' WHERE username = '"+ un +"'";
					stmt.execute(sql);
				}
				
				String phone = request.getParameter("phone");
				if(!phone.trim().equals("")) {
					sql = "UPDATE patient SET phone = '"+ phone +"' WHERE username = '"+ un +"'";
					stmt.execute(sql);
				}
				
				String email = request.getParameter("email");
				if(!email.trim().equals("")) {
					sql = "UPDATE patient SET email = '"+ email +"' WHERE username = '"+ un +"'";
					stmt.execute(sql);
				}
				
				request.getSession().removeAttribute("user");
				sql = "SELECT * FROM patient WHERE username = '"+ un +"'";
				ResultSet rs = stmt.executeQuery(sql);
				user = new User(un, rs.getString(3), rs.getString(4), rs.getInt(5), 
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));
				request.getSession().setAttribute("user", user);
				
				stmt.close();
				conn.close();
				request.getRequestDispatcher("usercenter.jsp").forward(request, response);
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
