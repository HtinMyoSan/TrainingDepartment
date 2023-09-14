package com.db;

import java.sql.*;
import java.sql.SQLException;
import java.util.ArrayList;

import com.model.*;

public class RegisterCRUD {
	public void insertRegistrationData(Register r) throws ClassNotFoundException, SQLException {
		DBManager dbm = new DBManager();
		dbm.connector();
		String sql="INSERT INTO `training_department`.`register`\r\n"
				+ "(\r\n"
				+ "`name`,\r\n"
				+ "`email`,\r\n"
				+ "`date_of_birth`,\r\n"
				+ "`course`)\r\n"
				+ "VALUES\r\n"
				+ "(?,?,?,?);";
		PreparedStatement ps = dbm.connector().prepareCall(sql);
		ps.setString(1, r.getName());
		ps.setString(2, r.getEmail());
		ps.setString(3, r.getDate_Of_birth());
		ps.setString(4, r.getSelected_course());
		ps.executeUpdate();
		
		dbm.connector().close();
	}

	public ArrayList<Register> selectAll()throws ClassNotFoundException, SQLException{ 
		//select all 
		 	 	ArrayList<Register> rlist = new ArrayList<Register>(); // collection of diet
		 	 	Register r; 
		 	 	// get connection 
		 	 	DBManager dbm = new DBManager(); 
		 	 	dbm.connector();
		        // query 
		 	 	String sql = "SELECT `register`.`id`,\r\n"
		 	 			+ "    `register`.`name`,\r\n"
		 	 			+ "    `register`.`email`,\r\n"
		 	 			+ "    `register`.`date_of_birth`,\r\n"
		 	 			+ "    `register`.`course`\r\n"
		 	 			+ "FROM `training_department`.`register`"; 
		 	 	
		 	 	//prepared statement
		 	 	PreparedStatement ps = dbm.connector().prepareStatement(sql);  
		 	 	
		        ResultSet rs = ps.executeQuery(); 
		 
		 
		 	 	while (rs.next()) { 
		 	 	 	r = new Register( 
		 	 	 	 	 //database column name
		 	 	 			rs.getInt("id"),
		                    rs.getString("name"), 
		                    rs.getString("email"),
		 	 	            rs.getString("date_of_birth"),
		 	 	            rs.getString("course")); 
		 	 	 rlist.add(r); //add entity into collection to array list
		 	 	} 
		 	 	dbm.connector().close();
		 	 	return rlist; 
		 	}
	
	public void update(Register r) throws ClassNotFoundException, SQLException{
		
		//1. get connection
		DBManager dbm=new DBManager();
		dbm.connector();
		
		//2.prepare statement
		
		String sql = "UPDATE `training_department`.`register`\r\n"
				+ "SET\r\n"
				+ "`name` = ?,\r\n"
				+ "`email` = ?,\r\n"
				+ "`date_of_birth` = ?,\r\n"
				+ "`course` = ?\r\n"
				+ "WHERE `id` = ?;";


		PreparedStatement ps=dbm.connector().prepareStatement(sql);
		
		// first and second parameters inserted 1. course name and course text
		
		ps.setString(1, r.getName());
		ps.setString(2, r.getEmail());
		ps.setString(3, r.getDate_Of_birth());
		ps.setString(4, r.getSelected_course());
		ps.setInt(5, r.getId());
		
		//3.execute statement
		
		ps.executeUpdate();
		dbm.connector().close();
		
	}
	
	public void delete(int id) throws ClassNotFoundException, SQLException {
		// get connection
		DBManager dbm = new DBManager(); 
		 	dbm.connector();
		 	String sql ="DELETE FROM `training_department`.`register`\r\n"
		 			+ "WHERE id=?;";
		 	//prepared statement
	 	 	PreparedStatement ps = dbm.connector().prepareStatement(sql); 
	 	 	ps.setInt(1, id);
	 	 	ps.executeUpdate();
	}
}
