package booktest;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BookControllerServlet
 */
@WebServlet("/BookControllerServlet")
public class BookControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private BookDAO bookDAO;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookControllerServlet() {
        String jdbcURL = 
        		"jdbc:mysql://localhost:3306/test?useTimezone=true&serverTimezone=UTC";
        String jdbcUsername = "root";
        String jdbcPassword = "111111";
        bookDAO = new BookDAO(jdbcURL, jdbcUsername, jdbcPassword);
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			listBook(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}

	private void listBook(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		List<Book> listBook = bookDAO.listAllBooks();
		request.setAttribute("listBook", listBook);
		RequestDispatcher dispatcher = request.getRequestDispatcher("BookList.jsp");
		dispatcher.forward(request, response);
	}
}
