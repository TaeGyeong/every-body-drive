package VO;

import java.util.Date;

public class Course {
	private int courseId;
	private String courseName;
	private String location;
	private double dist;
	private int totalTime;
	private int evalCount;
	private float heart;
	public Course() {
	}

	public Course(int courseId, String courseName, String location, double dist, int totalTime) {
		this.courseId = courseId;
		this.courseName = courseName;
		this.location = location;
		this.dist = dist;
		this.totalTime = totalTime;
		this.evalCount = 0;
	}
	
	public Course(int courseId, String courseName, String location, double dist, int totalTime, int evalCount, float heart) {
		this.courseId = courseId;
		this.courseName = courseName;
		this.location = location;
		this.dist = dist;
		this.totalTime = totalTime;
		this.evalCount = evalCount;
		this.heart = heart;
	}
	
	public float getHeart() {
		return heart;
	}

	public void setHeart(float heart) {
		this.heart = heart;
	}

	public int getEvalCount() {
		return evalCount;
	}

	public void setEvalCount(int evalCount) {
		this.evalCount = evalCount;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public double getDist() {
		return dist;
	}

	public void setDist(double dist) {
		this.dist = dist;
	}

	public int getTotalTime() {
		return totalTime;
	}

	public void setTotalTime(int totalTime) {
		this.totalTime = totalTime;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + courseId;
		result = prime * result + ((courseName == null) ? 0 : courseName.hashCode());
		long temp;
		temp = Double.doubleToLongBits(dist);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + evalCount;
		result = prime * result + Float.floatToIntBits(heart);
		result = prime * result + ((location == null) ? 0 : location.hashCode());
		result = prime * result + totalTime;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Course other = (Course) obj;
		if (courseId != other.courseId)
			return false;
		if (courseName == null) {
			if (other.courseName != null)
				return false;
		} else if (!courseName.equals(other.courseName))
			return false;
		if (Double.doubleToLongBits(dist) != Double.doubleToLongBits(other.dist))
			return false;
		if (evalCount != other.evalCount)
			return false;
		if (Float.floatToIntBits(heart) != Float.floatToIntBits(other.heart))
			return false;
		if (location == null) {
			if (other.location != null)
				return false;
		} else if (!location.equals(other.location))
			return false;
		if (totalTime != other.totalTime)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Course [courseId=" + courseId + ", courseName=" + courseName + ", location=" + location + ", dist="
				+ dist + ", totalTime=" + totalTime + ", evalCount=" + evalCount + ", heart=" + heart + "]";
	}

}
