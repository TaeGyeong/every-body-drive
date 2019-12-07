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
 * Servlet implementation class submitCourseServlet
 */
@WebServlet("/submitCourseServlet")
public class submitCourseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CourseDAO courseDAO;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public submitCourseServlet() {
    	String jdbcURL = 
        		"jdbc:mysql://localhost:3306/bts?useTimezone=true&serverTimezone=UTC";
        String jdbcUsername = "root";
        String jdbcPassword = "123456";
        courseDAO = new CourseDAO(jdbcURL, jdbcUsername, jdbcPassword);
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String location = request.getParameter("location");
		String theme = request.getParameter("theme");
		String distance = request.getParameter("distance");
		String totaltime = request.getParameter("totaltime");
		
		try {
			List<Course> listCourse = courseDAO.insertSubmit(name, location, theme, distance, totaltime);
			request.setAttribute("listCourse", listCourse);
			RequestDispatcher dispatcher = request.getRequestDispatcher("submit.jsp"); // 자원을 넘기는 역할
			dispatcher.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		/*
		 * String name = request.getParameter("name"); String location =
		 * request.getParameter("location"); String theme =
		 * request.getParameter("theme"); String distance =
		 * request.getParameter("distance"); String totaltime =
		 * request.getParameter("totaltime");
		 * 
		 * try { List<Course> listCourse = courseDAO.insertSubmit(name, location, theme,
		 * distance, totaltime); request.setAttribute("listCourse", listCourse);
		 * RequestDispatcher dispatcher = request.getRequestDispatcher("submit.jsp"); //
		 * 자원을 넘기는 역할 dispatcher.forward(request, response); } catch (SQLException e) {
		 * // TODO Auto-generated catch block e.printStackTrace(); }
		 */
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		doGet(request, response);
	}

}
