package com.seclore.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seclore.dao.EmployeeDao;
import com.seclore.entity.Employee;

/**
 * Servlet implementation class CrudEmployeeServlet
 */
@WebServlet("/CrudEmployeeServlet")
public class CrudEmployeeServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		if(action.equals("fetchAll")) {
			
			EmployeeDao dao = new EmployeeDao();
			ArrayList<Employee> allEmployeesList = null;
			try {
				allEmployeesList = (ArrayList<Employee>) dao.getAllEmployees();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("allEmployee", allEmployeesList);
			request.getRequestDispatcher("viewEmployee.jsp").forward(request, response);
		}
		else if(action.equals("delete")) {
			
			EmployeeDao dao = new EmployeeDao();
			int id = Integer.parseInt(request.getParameter("id"));
			try {
				dao.deleteEmployeebyId(id);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.getRequestDispatcher("CrudEmployeeServlet?action=fetchAll").forward(request, response);
		}
		else if(action.equals("add")) {
					
			String name = request.getParameter("name");
			String dept = request.getParameter("department");
			Double salary = Double.parseDouble(request.getParameter("salary"));

			Employee e = new Employee();
			e.setName(name);
			e.setDepartment(dept);
			e.setSalary(salary);
			
			EmployeeDao dao = new EmployeeDao();
			int id;
			try {
				id = dao.addEmployee(e);
				request.setAttribute("employeeId", id);
			} catch (SQLException x) {
				x.printStackTrace();
			}
			request.getRequestDispatcher("/addEmployee.jsp").forward(request, response);
		}
		else if(action.equals("update")) {
			
			int id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			String dept = request.getParameter("department");
			Double salary = Double.parseDouble(request.getParameter("salary"));

			Employee e = new Employee();
			e.setId(id);
			e.setName(name);
			e.setDepartment(dept);
			e.setSalary(salary);
			
			EmployeeDao dao = new EmployeeDao();
			boolean b = dao.updateEmployee(e);
			request.setAttribute("updatedOrNot", b);
			request.getRequestDispatcher("/result.jsp").forward(request, response);
		}
	}

}
