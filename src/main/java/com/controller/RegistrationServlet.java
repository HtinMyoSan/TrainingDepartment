package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

import com.db.*;
import com.model.*;

/**
 * Servlet implementation class RegstrationServlet
 */
@WebServlet("/Registration")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReadSheet rs = new ReadSheet();
		List<String> courseList= rs.getCourses();
		request.setAttribute("cl", courseList);
		RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/registrationform.jsp");
		RequetsDispatcherObj.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String userName= request.getParameter("name");
		String email = request.getParameter("email");
		String dateOfBirth = request.getParameter("dob");
		String courses = request.getParameter("course");
		Register r = new Register(userName,email,dateOfBirth,courses);
		RegisterCRUD  rcrud= new RegisterCRUD();
		try {
			rcrud.insertRegistrationData(r);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sub="Information About the Registered Session";
		String session="Default";
		String schedule="Default";
		if(courses.toLowerCase().contains("morning")) {
			session="morning";
			schedule="9:00 Am to 11:00 Am";
			String message="Hello! This is from training department. Thank you for registering to attend the course."+" Your selected course is "+ courses +"."+" \r\n"
					+"Since you choose to attend "+session +" session,"
					+" your schedul is from "+schedule+" in the "+ session+".";	
			
			//send Email
			SendEmail sm = new SendEmail();
			sm.send("peyinhtinmyosan@gmail.com","feqivwjcyntgmzfm",email, sub, message);
		}
		else if(courses.toLowerCase().contains("evening")) {
			session="evening";
			schedule="3:00 Pm to 5:00 Pm";
			String message="Hello! This is from training department. Thank you for registering to attend the course."+" Your selected course is "+ courses +"."+" \r\n"
					+"Since you choose to attend "+session +" session,"
					+" your schedul is from "+schedule+" in the "+ session+".";	
			
			//send Email
			SendEmail sm = new SendEmail();
			sm.send("peyinhtinmyosan@gmail.com","feqivwjcyntgmzfm",email, sub, message);
		}
		else {
			session="afternoon";
			schedule="12:00 Pm to 2:00 Pm";
			String message="Hello! This is from training department. Thank you for registering to attend the course."+" Your selected course is "+ courses +"."+" \r\n"
					+"Since you choose to attend "+session +" session,"
					+" your schedul is from "+schedule+" in the "+ session+".";	
			
			//send Email
			SendEmail sm = new SendEmail();
			sm.send("peyinhtinmyosan@gmail.com","feqivwjcyntgmzfm",email, sub, message);
		}
		
		
		
		
		request.setAttribute("UserName",userName );
		request.setAttribute("Email",email );
		request.setAttribute("Course",courses );
		
		RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/thankyou.jsp");
		RequetsDispatcherObj.forward(request, response);
		
	}

}
