package com.mcare.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mcare.model.MedicalDataModel;
import com.mysql.jdbc.Statement;

public class DashboardData {

	public List<MedicalDataModel> getHighRiskData() throws ClassNotFoundException, SQLException {
		DatabaseConnection DbConn = new DatabaseConnection();

		Connection conn = DbConn.dbConnection();

		Statement stmt =(Statement) conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from medicalTestRecord where bp>150 or hiv = 'positive'");
		
		List<MedicalDataModel> mdList = new ArrayList<>();
		while(rs.next()) {
			MedicalDataModel mDataModel = new MedicalDataModel();
			mDataModel.setUid(rs.getString(1));
			mDataModel.setName(rs.getString(2));
			mDataModel.setDate(rs.getString(3));
			mDataModel.setBp(rs.getString(4));
			mDataModel.setbSugar(rs.getString(5));
			mDataModel.setaSugar(rs.getString(6));
			mDataModel.setPlat(rs.getString(7));
			mDataModel.setWeight(rs.getString(8));
			mDataModel.setProtein(rs.getString(9));
			mDataModel.setHiv(rs.getString(10));
			mdList.add(mDataModel);
		}
		System.out.println("Data in array list: "+ mdList.toString());
		return mdList;		
	}
}
