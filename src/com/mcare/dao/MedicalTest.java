package com.mcare.dao;

import java.sql.Connection;
import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;

public class MedicalTest {
	
	public boolean feedMedicalTestData(String uid, String name,String date, String bp, String bSugar,String aSugar,String plat, String weight, String protein, String hiv) throws ClassNotFoundException, SQLException {
		
		DatabaseConnection dbConn = new DatabaseConnection();		
		Connection conn = dbConn.dbConnection();
		String query = " insert into medicalTestRecord (uid,name,date,bp,bSugar,aSugar,plat,weight,protein,hiv)"
		        + " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		      // create the mysql insert preparedstatement
		      PreparedStatement preparedStmt = (PreparedStatement) conn.prepareStatement(query);
		      preparedStmt.setString (1, uid);
		      preparedStmt.setString (2, name);
		      preparedStmt.setString(3, date);
		      preparedStmt.setString(4, bp);
		      preparedStmt.setString(5, bSugar);
		      preparedStmt.setString(6, aSugar);
		      preparedStmt.setString(7, plat);
		      preparedStmt.setString(8, weight);
		      preparedStmt.setString(9, protein);
		      preparedStmt.setString(10, hiv);
		      

		      // execute the preparedstatement
		      preparedStmt.execute();
		      
		      System.out.println("Inserted Medical Data successfully");
		      
		      conn.close();
		
		return true;
	}

}
