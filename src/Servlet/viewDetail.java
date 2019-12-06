package Servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CourseDAO;
import VO.Course;

/**
 * Servlet implementation class viewDetail
 */
@WebServlet("/viewDetail")
public class viewDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CourseDAO courseDAO;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewDetail() {
    	String jdbcURL = 
        		"jdbc:mysql://localhost:3306/bts?useTimezone=true&serverTimezone=UTC";
        String jdbcUsername = "root";
        String jdbcPassword = "111111";
        courseDAO = new CourseDAO(jdbcURL, jdbcUsername, jdbcPassword);
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("courseId");
		try {
			Course c = courseDAO.detailCourse(id);
			List<Double> list = courseDAO.getCourseAddr(id); 
			request.setAttribute("course", c);
			request.setAttribute("address", list);
			RequestDispatcher dispatcher = request.getRequestDispatcher("viewDetail.jsp");
			dispatcher.forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		doGet(request, response);
	}

}
