package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.utils.DbConnection;
import java.sql.*;

@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("uname");
	    String pwd = request.getParameter("pass");
	    Connection con;
	    HttpSession session = request.getSession();
		try {
			con = DbConnection.init();
			Statement st = con.createStatement();
			ResultSet rs;
			rs = st.executeQuery("select * from members where uname='" + userid + "' and password='" + pwd + "'");
			if (rs.next()) {
				session.setAttribute("userid", userid);
		        response.sendRedirect("success.jsp");
		    }else {
		    	response.sendRedirect("index.jsp");
		    }
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
