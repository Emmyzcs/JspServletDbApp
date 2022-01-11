package net.emmyzcs.dbregistration.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.emmyzcs.dbregistration.dao.UserInsertDao;
import net.emmyzcs.dbregistration.model.User;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet ("/register")
public class RegisterUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/registerUser.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserInsertDao userDao = new UserInsertDao();
		
		String firstName = request.getParameter("fname");
		String lastName = request.getParameter("lname");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		String mobileNumber = request.getParameter("mobileNumber");
		String gender = request.getParameter("gender");
		String homeAddress = request.getParameter("address");
		
		User user = new User();
		
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setAge(age);
		user.setEmail(email);
		user.setMobileNumber(mobileNumber);
		user.setGender(gender);
		user.setAddress(homeAddress);
		
		try {
		userDao.insertUserData(user);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		if (user.getFirstName() != null && user.getLastName() != null && user.getAge() != null
				&& user.getEmail() != null && user.getMobileNumber() != null && user.getGender() != null
				&& user.getAddress() != null){
			RequestDispatcher dispatcher = request.getRequestDispatcher("/insertAlert.jsp");
			dispatcher.forward(request, response);
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/registerUser.jsp");
		dispatcher.forward(request, response);
		
	}

}
