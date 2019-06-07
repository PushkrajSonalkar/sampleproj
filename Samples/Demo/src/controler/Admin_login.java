package controler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Admin_login")

public class Admin_login extends HttpServlet
{
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		String name = req.getParameter("Adminuname");

		String psw = req.getParameter("Adminpsw");
		/*
		 * PrintWriter out = res.getWriter(); out.println(name+"  "+psw);
		 */
		try {
			if(LoginServlet.validate(name,psw)) {
				
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
