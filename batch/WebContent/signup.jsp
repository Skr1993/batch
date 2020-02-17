<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.batch.bean.Course"%>
<%@page import="java.util.List"%>
<%@page import="com.batch.serviceimpl.ServiceCourseImpl"%>
<%@ include file="link.html"%>
<%@ include file="navbar.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container">
  <form   action="candidateReg.jsp"    method="post">
  	<div class="form-group">
  		  <label for="currentDate">Current Date:</label>
  		   <%LocalDate localDate1 = LocalDate.now();
  		   String currrent=DateTimeFormatter.ofPattern("dd/MM/yyyy").format(localDate1);
  		   System.out.println(currrent);
  		   %>
          <input type="text" class="form-control" id="currentDate" name="candidateCurrentDate" value="<%=currrent%>" readonly="readonly">
    </div>
  	<div class="form-group">
  		  <label for="candidateName">Name of Candidate:</label>
          <input type="text" class="form-control" id="candidateName" placeholder="Enter Name of Candidate" name="candidateName">
    </div>
    <div class="form-group">
    	    <label for="fatherName">Father's Name:</label>
           <input type="text" class="form-control" id="fatherName" placeholder="Enter Father's Name" name="candidateFatherName">
    </div>
    <div class="form-group">
    	   <label for="email">Email ID:</label>
          <input type="email" class="form-control" id="email" placeholder="Enter Email" name="candidateEmail">
    </div>
    <div class="form-group">
    	  <label for="mobile">Mobile No:</label>
          <input type="text" class="form-control" id="mobile" placeholder="Enter Mobile" name="candidateMobile">
    </div>
    <div class="form-group">
    	   <label for="College_University">College & University:</label>
          <input type="text" class="form-control" id="College_University" placeholder="Enter College or University" name="candidateCollegeUniversity">
    </div>
    <div class="form-group">
    	  <label for="qualification">Qualification:</label>
         <input type="text" class="form-control" id="qualification" placeholder="Enter Qualification" name="candidateQualification">
    </div>
    <div class="form-group">
    	  <label for="permanentAddress">Permanent Address:</label>
          <textarea class="form-control" rows="5" id="comment" name="candidatePermanentAddress"></textarea>
    </div>
    <div class="form-group">
    		  <label for="qualification">Training Interested in:</label><br>
		  	  <%
		      ServiceCourseImpl courseImpl=new ServiceCourseImpl();
		      List<Course> list=courseImpl.getAllCourse();
		      for(Course course:list){
		      %>
		      <label class="checkbox-inline">
		      	<input type="checkbox" value="<%=course.getCourseName()%>" name="candidateCourse"><%=course.getCourseName()%>
		      </label>
		  	  <%}%>
    </div>
    
    <div class="form-group">
    	  <label for="reference">How did you hear about us/reference:</label>
          <textarea class="form-control" rows="5" id="comment" name="candidateComment"></textarea>
    </div>
    
     
    <button type="submit" class="btn btn-success" id="mysubmit">Submit</button>
    </form>
</div>
