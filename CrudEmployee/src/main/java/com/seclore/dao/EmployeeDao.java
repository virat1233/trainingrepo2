package com.seclore.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.seclore.entity.Employee;

public class EmployeeDao {

	public List<Employee> getAllEmployees() throws SQLException {
	    Connection conn = null;
	    ArrayList<Employee> list = new ArrayList();
	    try {
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/training", "root", "root");
	    	Statement s = conn.createStatement();
	    	ResultSet rs = s.executeQuery("Select * from Employee_Information");
	    	
	    	while(rs.next()) {
	    		Employee e = new Employee();
	    		e.setId(rs.getInt(1));
	    		e.setName(rs.getString(2));
	    		e.setDepartment(rs.getString(3));
	    		e.setSalary(rs.getDouble(4));
	    		list.add(e);
//	    		System.out.println(e.getId());
//	    		System.out.println(e.getName());
//	    		System.out.println(e.getSalary());

	    	}
	    	return list;
	    	
	    } catch (Exception e) {
	        e.printStackTrace();
	        return list;
	    } 
	    finally {
			try {
				conn.close();
			}
			catch(Exception e) {
				
			}
		  } 
	    
	}
	
	
	public boolean deleteEmployeebyId(int emp_id) throws SQLException {
	    Connection conn = null;
	    try {
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/training", "root", "root");
	    	PreparedStatement s = conn.prepareStatement("DELETE FROM Employee_Information WHERE id = ?");
	        s.setInt(1, emp_id);
	        int rs = s.executeUpdate();
	    	return true;
	    	
	    } catch (Exception e) {
	        e.printStackTrace();
	        return false;
	    } 
	    finally {
			try {
				conn.close();
			}
			catch(Exception e) {
				
			}
		  } 
	    
	}
	
	public int addEmployee(Employee e) throws SQLException {
	    Connection conn = null;
	    try {
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/training", "root", "root");
	    	PreparedStatement s = conn.prepareStatement("INSERT INTO Employee_Information (id, name, department, salary) VALUES (?, ?, ?)");
	        s.setString(1, e.getName());
	        s.setString(2, e.getDepartment());
	        s.setDouble(3, e.getSalary());
	        s.executeUpdate();
	    	
	        ResultSet rs = s.getGeneratedKeys();
		    
		    if (rs.next()) {
		    	return  rs.getInt(1);
			}
		    return -1;
	    	
	    } catch (Exception x) {
	        x.printStackTrace();
	        return -1;
	    } 
	    finally {
			try {
				conn.close();
			}
			catch(Exception x) {
				
			}
		  } 
	    
	}


	public boolean updateEmployee(Employee e) {
		Connection conn = null;
	    PreparedStatement stmt = null;
	    try {
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/training", "root", "root");
	    	PreparedStatement s = conn.prepareStatement("Update FROM Employee_Information WHERE id = ?");
	        s.setInt(1, e.getId());
	        System.out.println("idhar tkk to aagyaa");
	        return true;
	    } catch (Exception x) {
	        x.printStackTrace();
	        return false;
	    } 
	    finally {
			try {
				conn.close();
			}
			catch(Exception x) {
				
			}
		  } 
	}



}
