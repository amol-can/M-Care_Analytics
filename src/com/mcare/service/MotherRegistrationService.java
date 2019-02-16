package com.mcare.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mcare.dao.MotherRegistration;

/**
 * Servlet implementation class MotherRegistrationService
 */
@WebServlet("/html/ANM/mRegister")
public class MotherRegistrationService extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Inside MotherRegistrationService servlet");
		String name = request.getParameter("mName");
		String hName = request.getParameter("hName");
		String uid = request.getParameter("uid");
		String mNumber = request.getParameter("mNumber");
		String dob = request.getParameter("dob");
		String state = request.getParameter("state");
		String district = request.getParameter("district");
		String town = request.getParameter("town");
		String village = request.getParameter("village");
		String address = request.getParameter("address");
		String email = request.getParameter("email");

		System.out.println("Name: "+name+ "UID: "+uid);
		MotherRegistration mReg = new MotherRegistration();

		try {
			boolean isDataInserted = mReg.registerPatient(name, hName, uid, mNumber, dob, state, district, town, village, address, email);
			System.out.println("isDataInserted: "+ isDataInserted);
			PrintWriter out = response.getWriter();
			out.print("isDataInserted: "+ isDataInserted);
			request.setAttribute("Message", isDataInserted);
			request.getRequestDispatcher("mother_registration.jsp").forward(request, response);
		} catch (ClassNotFoundException e) {
			System.out.println("Class Not ound exception: "+ e.getMessage());
		} catch (SQLException e) {
			System.out.println("SQL Exception: "+ e.getMessage());
		}


	}

}
