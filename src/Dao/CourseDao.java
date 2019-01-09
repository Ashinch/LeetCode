package Dao;

import java.util.List;

import Models.*;

public interface CourseDao {
	public List<Course> getAllCourse();
	public List<Course> getAllCourseByClass(String classify);
	public List<Course> getAllCourseByName(String title);
}
