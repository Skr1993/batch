package com.batch.serviceimpl;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.batch.DBConnectionInfo;
import com.batch.bean.Course;
import com.batch.service.ServiceCourse;

public class ServiceCourseImpl implements ServiceCourse {
	
	DBConnectionInfo info=null;
	List<Course> list=null;
	
	public ServiceCourseImpl() {
		 info=new DBConnectionInfo();
	}

	@Override
	public List<Course> getAllCourse() {
		try{
			Connection connection=info.getDBConnectionInfo();
			CallableStatement statement=connection.prepareCall("{call batch.AllCourse()}");
			ResultSet set=statement.executeQuery();
			list=new ArrayList<Course>();
			while (set.next()) {
				  Course course=new Course();
				  course.setCourseId(set.getInt("courseId"));
				  course.setCourseName(set.getString("courseName"));
				  list.add(course);
			}
		}catch (Exception e) {
			System.out.println("ServiceCourseImpl:getAllCourse:"+e);
		}
		return list;
	}
	
	/*public static void main(String[] args) {
		ServiceCourse  serviceCourse=new ServiceCourseImpl();
		List<Course> list=serviceCourse.getAllCourse();
		for (Course course : list) {
			System.out.println(course);
		}
	}*/

}
