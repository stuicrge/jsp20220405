package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import chap14.javabeans.Customer;

/**
 * Servlet implementation class S14Servlet18
 */
@WebServlet("/S14Servlet18")
public class S14Servlet18 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet18() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Customer> list = new ArrayList<>();
		
		String sql = "SELECT CustomerID, CustomerName, City, Country, PostalCode "
				+ "FROM Customers "
				+ "ORDER BY CustomerID";
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");

		try (Connection con = ds.getConnection(); 
				PreparedStatement pstmt = con.prepareStatement(sql);
			){
		try(ResultSet rs = pstmt.executeQuery();){
		
			while(rs.next()) {
			Customer customer = new Customer();
			customer.setId(rs.getInt(1));
			customer.setName(rs.getString(2));
			customer.setCity(rs.getString(3));
			customer.setCountry(rs.getString(4));
			customer.setPostCode(rs.getNString(5));
			
			list.add(customer);
			}
		}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		request.setAttribute("customerlist", list);
		
		String path = "WEB-INF/view/chap14/ex12.jsp";
		request.getRequestDispatcher(path).forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String sql = "DELETE FROM Customers "
				+"WHERE CustomerID = ?";
		
		
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
		String location = "S14Servlet18";
		
		if(result==1) {
			location+="?success=true";
		}else {
			location+="?success=false";
		}
		response.sendRedirect(location);
	}

}
