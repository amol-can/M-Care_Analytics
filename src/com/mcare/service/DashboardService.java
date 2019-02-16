package com.mcare.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.jni.Mmap;

import com.mcare.dao.DashboardData;
import com.mcare.model.MedicalDataModel;

/**
 * Servlet implementation class DashboardService
 */
@WebServlet("/DashboardService")
public class DashboardService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		DashboardData dData = new DashboardData();
		try {
			List<MedicalDataModel> mModel = dData.getHighRiskData();
			PrintWriter out = response.getWriter();
			out.println(mModel.toString());
		} catch (ClassNotFoundException e) {
			System.out.println("Not able to get data from MedicalData"+ e.getMessage());
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("Not able to get data from MedicalData"+ e.getMessage());
		}
		request.setAttribute("list", dData);
		request.getRequestDispatcher("html/ANM/showHighRisk.jsp").forward(request, response);
	}

}
