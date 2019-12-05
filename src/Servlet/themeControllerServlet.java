package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class themeControllerServlet
 */
@WebServlet("/themeControllerServlet")
public class themeControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CourseDAO courseDAO; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public themeControllerServlet() {
    	String jdbcURL = 
        		"jdbc:mysql://localhost:3306/bts?useTimezone=true&serverTimezone=UTC";
        String jdbcUsername = "root";
        String jdbcPassword = "wneod78";
        courseDAO = new CourseDAO(jdbcURL, jdbcUsername, jdbcPassword);
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String theme = request.getParameter("theme");
		try {
			List<Course> listCourse = courseDAO.getCourseByTheme(theme);
			request.setAttribute("listCourse", listCourse);
			request.setAttribute("theme", theme);
			RequestDispatcher dispatcher = request.getRequestDispatcher("courseListByTheme.jsp");
			dispatcher.forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		doGet(request, response);
	}

}
