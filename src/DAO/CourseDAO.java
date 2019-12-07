package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import VO.Course;
import VO.Evaluation;


public class CourseDAO {
    private String jdbcURL;
    private String jdbcUsername;
    private String jdbcPassword;
    private Connection jdbcConnection;
     
    public CourseDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) {
        this.jdbcURL = jdbcURL;
        this.jdbcUsername = jdbcUsername;
        this.jdbcPassword = jdbcPassword;
    }
     
    protected void connect() throws SQLException {
        if (jdbcConnection == null || jdbcConnection.isClosed()) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                throw new SQLException(e);
            }
            jdbcConnection = DriverManager.getConnection(
                                        jdbcURL, jdbcUsername, jdbcPassword);
        }
    }
     
    protected void disconnect() throws SQLException {
        if (jdbcConnection != null && !jdbcConnection.isClosed()) {
            jdbcConnection.close();
        }
    }
    
    //////////////////////// SQL METHOD //////////////////////////
    
    public void insertLatLng(int Courseid, String slat, String slng, String elat, String elng) throws SQLException {
    	
    	
    	
    	String sql = "INSERT INTO courseaddr(Addr_ID, depart_lat, depart_long, dest_lat, dest_long)"
    			+ "VALUES(?, ?, ?, ?, ?);";
    	connect();
    	PreparedStatement statement = jdbcConnection.prepareStatement(sql);
    	
    	double one = (double) (Math.round(Double.parseDouble(slat)*10000000))/10000000;
    	double two = (double) (Math.round(Double.parseDouble(slng)*10000000))/10000000;
    	double three = (double) (Math.round(Double.parseDouble(elat)*10000000))/10000000;
    	double four = (double) (Math.round(Double.parseDouble(elng)*10000000))/10000000;
    	
    	statement.setInt(1, Courseid);
    	statement.setString(2, String.format("%f", one));
    	statement.setString(3, String.format("%f", two));
    	statement.setString(4, String.format("%f", three));
    	statement.setString(5, String.format("%f", four));
    	statement.executeUpdate();
    	statement.close();
    	disconnect();
    	
    }
    
    public void insertEval(String id, String star, String text) throws SQLException {
    	String sql = "INSERT INTO courseeval (eval_course_id, star_eval, text_eval) "
    			+ "VALUES (?, ?, ?);";
    	connect();
    	PreparedStatement statement = jdbcConnection.prepareStatement(sql);
    	statement.setString(1, id);
    	statement.setString(2, star);
    	statement.setString(3, text);
    	statement.executeUpdate();
    	statement.close();
    	disconnect();
    }
    
    public List<Evaluation> getEvaluation(String id) throws SQLException {
    	List<Evaluation> list = new ArrayList<Evaluation>();
    	String sql = "SELECT star_eval, text_eval FROM courseeval WHERE eval_course_id = ?";
    	connect();
    	PreparedStatement statement = jdbcConnection.prepareStatement(sql);
    	statement.setString(1, id);
    	ResultSet resultSet = statement.executeQuery();
    	while(resultSet.next()) {
    		float star = resultSet.getFloat("star_eval");
    		String text = resultSet.getString("text_eval");
    		list.add(new Evaluation(star, text));
    	}
    	resultSet.close();
    	statement.close();
    	disconnect();
    	return list;
    }
    
    public List<Double> getCourseAddr(String id) throws SQLException {
    	List<Double> list = new ArrayList<Double>();
    	String sql = "SELECT * FROM courseaddr WHERE addr_id = ?";
    	connect();
    	PreparedStatement statement = jdbcConnection.prepareStatement(sql);
    	statement.setString(1, id);
    	ResultSet resultSet = statement.executeQuery();
    	while(resultSet.next()) {
    		list.add(resultSet.getDouble("depart_lat"));
    		list.add(resultSet.getDouble("depart_long"));
    		list.add(resultSet.getDouble("dest_lat"));
    		list.add(resultSet.getDouble("dest_long"));
    	}
    	resultSet.close();
    	statement.close();
    	disconnect();
    	return list;
    }
    
    public Course detailCourse(String id) throws SQLException {
    	String sql = 
    			"select course_id, course_name, course_loc, sum(star_eval)as sum, count(star_eval) as count, dist, total_time from courseinfo " +
    			"left join courseeval on course_id = eval_course_id " +
    			"left join coursespec on course_id = spec_id " +
    			"left join coursetheme on course_id=coursetheme_id "+
    			"where course_id = ? " +
    			"group by course_id;";
    	connect();
    	PreparedStatement statement = jdbcConnection.prepareStatement(sql);
    	statement.setString(1, id);
    	ResultSet resultSet = statement.executeQuery();
    	Course c = null;
    	while (resultSet.next()) {
    		int courseId = resultSet.getInt("Course_ID");
    		String courseName = resultSet.getString("Course_Name");
    		String location = resultSet.getString("Course_Loc");
    		double dist = resultSet.getDouble("Dist");
    		float summation = resultSet.getFloat("sum");
    		int totalTime = resultSet.getInt("Total_Time");
    		int evalCount = resultSet.getInt("count");
    		if (evalCount == 0) {
    			c = new Course(courseId, courseName, location, dist, totalTime, evalCount, 0);
    		} else {
    			float heart = Math.round((summation * 10) / evalCount) / 10;
    			c = new Course(courseId, courseName, location, dist, totalTime, evalCount, heart);
    		}
    	}
    	resultSet.close();
    	statement.close();
    	disconnect();
    	return c;
    }
    
    public int insertSubmit(String name, String location, String theme, String distance, String totaltime) throws SQLException {
    	int courseId = 0;
    	connect();
    	jdbcConnection.setAutoCommit(false); // 오토커밋 false 설정.
    	PreparedStatement statement = null;
    	ResultSet resultSet = null;
    	try {
    		String sql = "INSERT INTO courseinfo(course_name, course_loc) VALUES (?, ?);";
    		statement = jdbcConnection.prepareStatement(sql);
    		statement.setString(1, name);
    		statement.setString(2, location);
    		statement.executeUpdate();
    		
    		sql = "SELECT course_id FROM courseinfo WHERE course_name = ? AND course_loc = ?;";
    		statement = jdbcConnection.prepareStatement(sql);
    		statement.setString(1, name);
    		statement.setString(2, location);
    		resultSet = statement.executeQuery();
    		while (resultSet.next()) {
    			courseId = resultSet.getInt("course_id");
    		}
    		sql = "INSERT INTO coursespec(spec_ID, Dist, Total_Time) VALUES (?, ?, ?);";
    		statement = jdbcConnection.prepareStatement(sql);
    		statement.setString(1, String.valueOf(courseId));
    		statement.setString(2, distance);
    		statement.setString(3, totaltime);
    		statement.executeUpdate();
    		
    		sql = "INSERT INTO coursetheme(CourseTheme_ID, Theme_ID) VALUES (?,?);";
    		statement = jdbcConnection.prepareStatement(sql);
    		statement.setString(1, String.valueOf(courseId));
    		statement.setString(2, theme);
    		statement.executeUpdate();
    		
    		jdbcConnection.commit();
    		resultSet.close();
    		statement.close();
		} catch (Exception e) {
			e.printStackTrace();
			jdbcConnection.rollback();
		} finally {
			jdbcConnection.setAutoCommit(true);
			disconnect();
		}
    	
    	return courseId;
    }
    
    public List<Course> returnSearch(String location, String theme, String search) throws SQLException {
    	List<Course> listCourse = new ArrayList<>();
    	String sql = null;
    	PreparedStatement statement = null;
    	System.out.println(location);
    	System.out.println(theme);
    	System.out.println(search);
    	connect();
    	
    	if (location.equals("����") && theme.equals("�׸�")) {
    		sql = 
			"SELECT distinct course_id, course_name, course_loc, dist, total_time " + 
			"FROM courseinfo, coursespec " + 
			"WHERE course_id in (" +
				"select courseTheme_ID from courseTheme" +
			") AND spec_id=course_id AND course_name LIKE ?;";
    		statement = jdbcConnection.prepareStatement(sql);
    		statement.setString(1, "%" + search + "%");
    	} else if (theme.equals("�׸�")) {
    		sql = 
			"SELECT distinct course_id, course_name, course_loc, dist, total_time " + 
	    			"FROM courseinfo, coursespec " + 
	    			"WHERE course_id in (" +
	    				"select courseTheme_ID from courseTheme" +
	    				") AND course_loc=? AND spec_id=course_id AND course_name LIKE ?;";
    		statement = jdbcConnection.prepareStatement(sql);
    		statement.setString(1, location);
    		statement.setString(2, "%" + search + "%");
    	} else if (location.equals("����")){
    		sql = 
			"SELECT distinct course_id, course_name, course_loc, dist, total_time " + 
			"FROM courseinfo, coursespec " + 
			"WHERE course_id IN (" +
				"SELECT courseTheme_ID FROM courseTheme WHERE theme_id=?" +
			") AND spec_id=course_id AND course_name LIKE ?;";
    		statement = jdbcConnection.prepareStatement(sql);
    		statement.setString(1, theme);
    		statement.setString(2, "%" + search + "%");
    	} else {
    		sql = 
			"SELECT distinct course_id, course_name, course_loc, dist, total_time " + 
			"FROM courseinfo, coursespec " + 
			"WHERE course_id IN (" +
				"SELECT courseTheme_ID FROM courseTheme WHERE theme_id=?" +
			") AND course_loc = ? AND spec_id=course_id AND course_name LIKE ?;";
    		statement = jdbcConnection.prepareStatement(sql);
    		statement.setString(1, theme);
    		statement.setString(2, location);
    		statement.setString(3, "%" + search + "%");
    	}
    	ResultSet resultSet = statement.executeQuery();
    	
    	while (resultSet.next()) {
    		int courseId = resultSet.getInt("Course_ID");
    		String courseName = resultSet.getString("Course_Name");
    		String loc = resultSet.getString("Course_Loc");
    		double dist = resultSet.getDouble("Dist");
    		int totalTime = resultSet.getInt("Total_Time");
    		listCourse.add(new Course(courseId, courseName, loc, dist, totalTime));
    	}
    	
    	resultSet.close();
    	statement.close();
    	
    	disconnect();
    	
    	return listCourse;
    }
    
    public List<Course> getCourseByTheme(String theme) throws SQLException {
    	List<Course> listCourse = new ArrayList<>();
    	String sql = 
    			"select course_id, course_name, course_loc, sum(star_eval)as sum, count(star_eval) as count, dist, total_time from courseinfo " +
    			"left join courseeval on course_id = eval_course_id " +
    			"left join coursespec on course_id = spec_id " +
    			"left join coursetheme on course_id=coursetheme_id "+
    			"where theme_id = ? " +
    			"group by course_id;";
    	connect();
    	PreparedStatement statement = jdbcConnection.prepareStatement(sql);
    	statement.setString(1, theme);
    	ResultSet resultSet = statement.executeQuery();
    	
    	while (resultSet.next()) {
    		int courseId = resultSet.getInt("Course_ID");
    		String courseName = resultSet.getString("Course_Name");
    		String location = resultSet.getString("Course_Loc");
    		double dist = resultSet.getDouble("Dist");
    		float summation = resultSet.getFloat("sum");
    		int totalTime = resultSet.getInt("Total_Time");
    		int evalCount = resultSet.getInt("count");
    		if (evalCount == 0) {
    			listCourse.add(new Course(courseId, courseName, location, dist, totalTime, evalCount, evalCount));
    		} else {
    			float heart = Math.round((summation * 10) / evalCount) / 10;
    			listCourse.add(new Course(courseId, courseName, location, dist, totalTime, evalCount, heart));
    		}
    		
    	}
    	
    	resultSet.close();
    	statement.close();
    	
    	disconnect();
    	
    	return listCourse;
    }
    
    public List<Course> getCourseByLocation(String loc) throws SQLException {
    	List<Course> listCourse = new ArrayList<>();
    	String sql = 
    	"select course_id, course_name, course_loc, sum(star_eval)as sum, count(star_eval) as count, dist, total_time from courseinfo " +
		"left join courseeval on course_id = eval_course_id " +
		"left join coursespec on course_id = spec_id " +
		"left join coursetheme on course_id=coursetheme_id "+
		"where course_loc = ? " +
		"group by course_id;";
    	connect();
    	PreparedStatement statement = jdbcConnection.prepareStatement(sql);
    	statement.setString(1, loc);
    	ResultSet resultSet = statement.executeQuery();
    	
    	while (resultSet.next()) {
    		int courseId = resultSet.getInt("Course_ID");
    		String courseName = resultSet.getString("Course_Name");
    		String location = resultSet.getString("Course_Loc");
    		double dist = resultSet.getDouble("Dist");
    		float summation = resultSet.getFloat("sum");
    		int totalTime = resultSet.getInt("Total_Time");
    		int evalCount = resultSet.getInt("count");
    		if (evalCount == 0) {
    			listCourse.add(new Course(courseId, courseName, location, dist, totalTime, evalCount, evalCount));
    		} else {
    			float heart = Math.round((summation * 10) / evalCount) / 10;
    			listCourse.add(new Course(courseId, courseName, location, dist, totalTime, evalCount, heart));
    		}
    		
    	}
    	
    	resultSet.close();
    	statement.close();
    	
    	disconnect();
    	
    	return listCourse;
    }
}