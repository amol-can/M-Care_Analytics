package com.mcare.service;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mcare.dao.MedicalTest;

/**
 * Servlet implementation class MedicalTestService
 */
@WebServlet("/html/ANM/medicalTest")
public class MedicalTestService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uid = request.getParameter("uid");
		String name = request.getParameter("name");
		String date = request.getParameter("date");
		String bp = request.getParameter("bp");
		String bSugar = request.getParameter("bSugar");
		String aSugar = request.getParameter("aSugar");
		String plat = request.getParameter("plat");
		String weight = request.getParameter("weight");
		String protein = request.getParameter("protein");
		String hiv = request.getParameter("hiv");
		
		MedicalTest mTest = new MedicalTest();
		try {
			boolean isDataInserted = mTest.feedMedicalTestData(uid, name, date, bp, bSugar, aSugar, plat, weight, protein, hiv);
			request.setAttribute("Message", isDataInserted);
			request.getRequestDispatcher("medicalTest.jsp").forward(request, response);
		} catch (ClassNotFoundException e) {
			System.out.println("Class not found exception: "+ e.getMessage());
		} catch (SQLException e) {
			System.out.println("SQLException: "+ e.getMessage());
		}
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
