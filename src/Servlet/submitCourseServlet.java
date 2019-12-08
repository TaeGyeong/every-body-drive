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
import VO.Evaluation;

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
        String jdbcPassword = "111111";
        courseDAO = new CourseDAO(jdbcURL, jdbcUsername, jdbcPassword);
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String name = request.getParameter("name");
		String location = request.getParameter("location");
		String theme = request.getParameter("theme");
		String distance = request.getParameter("distance");
		String totaltime = request.getParameter("totaltime");
		String s_lat = request.getParameter("start_lat");
		String s_lng = request.getParameter("start_lng");
		String e_lat = request.getParameter("end_lat");
		String e_lng = request.getParameter("end_lng");
		try {
			int id = courseDAO.insertSubmit(name, location, theme, distance, totaltime);
			courseDAO.insertLatLng(id, s_lat, s_lng, e_lat, e_lng);
			Course c = courseDAO.detailCourse(String.valueOf(id));
			List<Double> list = courseDAO.getCourseAddr(String.valueOf(id)); 
			List<Evaluation> list2 = courseDAO.getEvaluation(String.valueOf(id));
			request.setAttribute("course", c);
			request.setAttribute("address", list);
			request.setAttribute("evaluation", list2);
			RequestDispatcher dispatcher = request.getRequestDispatcher("viewDetail.jsp");
			dispatcher.forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}