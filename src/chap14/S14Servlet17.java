package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import chap14.javabeans.Employee;

/**
 * Servlet implementation class S14Servlet17
 */
@WebServlet("/S14Servlet17")
public class S14Servlet17 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet17() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			List<Employee> list = new ArrayList<>();
		
			String sql = "SELECT EmployeeID, LastName, FirstName, BirthDate From Employees "
			+"ORDER BY EmployeeID";
			
			ServletContext application = getServletContext();
			DataSource ds = (DataSource) application.getAttribute("dbpool");

			try (Connection con = ds.getConnection(); 
					PreparedStatement pstmt = con.prepareStatement(sql);){
			
			try(ResultSet rs = pstmt.executeQuery();){
			while(rs.next()) {
				Employee emp = new Employee();
				emp.setId(rs.getInt(1));
				emp.setLastName(rs.getString(2));
				emp.setFirstName(rs.getString(3));
				emp.setBirthDate(rs.getString(4));
				
				list.add(emp);
				}
			}
			}catch(Exception e) {
				e.printStackTrace();
			}
			request.setAttribute("employeelist", list);
			
			String path = "WEB-INF/view/chap14/ex11.jsp";
			request.getRequestDispatcher(path).forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String sql = "DELETE From Employees "
				+ "WHERE EmployeeID = ? ";
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");

		int result = 0;
		
		try (Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);){
			
				pstmt.setInt(1, Integer.parseInt(id));
			
				result=pstmt.executeUpdate();
				
		} catch(Exception e) {
			
			e.printStackTrace();
		
		}
		
		
		
		String location = "S14Servlet17";
		
		if (result == 1) {
			location += "?success=true";
		} else {
			location += "?success=false";
		}
		
		response.sendRedirect(location);
		
	}

}
