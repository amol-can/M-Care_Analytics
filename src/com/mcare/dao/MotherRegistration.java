package com.mcare.dao;

import java.sql.Connection;
import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;


public class MotherRegistration {
	
	public static void main(String args[]) throws ClassNotFoundException, SQLException {
		MotherRegistration mReg = new MotherRegistration();
		mReg.registerPatient("sita", "jaydip", "7015478945", "8412548798", "30-10-1995", "maharashtra", "latur", "udgir", "gurdhal", "hanuman mandir", "apab@gmail.com");
	}
	
	public boolean registerPatient(String name, String hname,String uid, String mob, String dob, String state, String district,String town,String village,String address,String email) throws SQLException, ClassNotFoundException {
		DatabaseConnection dbConn = new DatabaseConnection();
		
		Connection conn = dbConn.dbConnection();
		String query = " insert into patient_reg_data (name,hname,uid,mob,dob,state,district,tawn,village,address,email)"
		        + " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		      // create the mysql insert preparedstatement
		      PreparedStatement preparedStmt = (PreparedStatement) conn.prepareStatement(query);
		      preparedStmt.setString (1, name);
		      preparedStmt.setString (2, hname);
		      preparedStmt.setString(3, uid);
		      preparedStmt.setString(4, mob);
		      preparedStmt.setString(5, dob);
		      preparedStmt.setString(6, state);
		      preparedStmt.setString(7, district);
		      preparedStmt.setString(8, town);
		      preparedStmt.setString(9, village);
		      preparedStmt.setString(10, address);
		      preparedStmt.setString(11, email);
		      

		      // execute the preparedstatement
		      preparedStmt.execute();
		      
		      System.out.println("Insert Data successfully");
		      
		      conn.close();
		
		return false;		
	}

}
