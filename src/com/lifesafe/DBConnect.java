package com.lifesafe;


import java.sql.*;
import javax.swing.JOptionPane;

public class DBConnect {
	private Connection con;
	private Statement st;
	private ResultSet rs;
	
	public Connection connect(){
		try{
			String driver = "com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/lifesafe";
			String username = "root";
			String password = "";
			
			Class.forName(driver);
			con = DriverManager.getConnection(url, username, password);
			return con;
		}catch(Exception ex){
			JOptionPane.showMessageDialog(null, ex);
			return null;
		}
	}
	
}
