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
 * Servlet implementation class insertEval
 */
@WebServlet("/insertEval")
public class insertEval extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private CourseDAO courseDAO;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertEval() {
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
		String id = request.getParameter("id");
		String star = request.getParameter("star");
		String text = request.getParameter("comment");
		
		try {
			courseDAO.insertEval(id, star, text);
			Course c = courseDAO.detailCourse(id);
			List<Double> list = courseDAO.getCourseAddr(id); 
			List<Evaluation> list2 = courseDAO.getEvaluation(id);
			request.setAttribute("course", c);
			request.setAttribute("address", list);
			request.setAttribute("evaluation", list2);
			RequestDispatcher dispatcher = request.getRequestDispatcher("viewDetail.jsp");
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
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		doGet(request, response);
	}

}
