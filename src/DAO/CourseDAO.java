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
    
    public List<Course> getCourseByTheme(String theme) throws SQLException {
    	List<Course> listCourse = new ArrayList<>();
    	String sql = "SELECT distinct Course_ID, Course_Name, Course_Loc, Dist, Total_Time " + 
    			"FROM courseinfo, coursespec " + 
    			"WHERE Course_ID = Spec_ID and Course_ID in (" + 
	    			"SELECT CourseTheme_ID FROM coursetheme " + 
	    			"WHERE Theme_ID = ?" + 
	    			");";
    	connect();
    	PreparedStatement statement = jdbcConnection.prepareStatement(sql);
    	statement.setString(1, theme);
    	ResultSet resultSet = statement.executeQuery();
    	
    	while (resultSet.next()) {
    		int courseId = resultSet.getInt("Course_ID");
    		String courseName = resultSet.getString("Course_Name");
    		String location = resultSet.getString("Course_Loc");
    		double dist = resultSet.getDouble("Dist");
    		int totalTime = resultSet.getInt("Total_Time");
    		listCourse.add(new Course(courseId, courseName, location, dist, totalTime));
    	}
    	
    	resultSet.close();
    	statement.close();
    	
    	disconnect();
    	
    	return listCourse;
    }
    
    public List<Course> getCourseByLocation(String loc) throws SQLException {
    	List<Course> listCourse = new ArrayList<>();
    	String sql = "SELECT distinct Course_ID, Course_Name, Course_Loc, Dist, Total_Time " +
    			"FROM courseinfo, coursespec " + 
    			"WHERE Course_ID = Spec_ID and Course_Loc in(" + 
    				"SELECT Location FROM location_list " + 
    				"WHERE Location = ?" + 
    				");";
    	connect();
    	PreparedStatement statement = jdbcConnection.prepareStatement(sql);
    	statement.setString(1, loc);
    	ResultSet resultSet = statement.executeQuery();
    	
    	while(resultSet.next()) {
    		int courseId = resultSet.getInt("Course_ID");
    		String courseName = resultSet.getString("Course_Name");
    		String location = resultSet.getString("Course_Loc");
    		double dist = resultSet.getDouble("Dist");
    		int totalTime = resultSet.getInt("Total_Time");
    		listCourse.add(new Course(courseId, courseName, location, dist, totalTime));
    	}
    	
    	resultSet.close();
    	statement.close();
    	
    	disconnect();
    	
    	return listCourse;
    }
}
