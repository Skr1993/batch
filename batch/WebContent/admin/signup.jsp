<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.batch.bean.Course"%>
<%@page import="java.util.List"%>
<%@page import="com.batch.serviceimpl.ServiceCourseImpl"%>
<%@ include file="link.html"%>
<%@ include file="navbar.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container">
	<h1 class="text-center">Admin Registration Form</h1>
  <form   action="adminReg.jsp"    method="post">
  	
  	<div class="form-group">
  		  <label for="adminName">Name of Admin</label>
          <input type="text" class="form-control" id="adminName" placeholder="Enter Name of admin" name="adminName">
    </div>
    <div class="form-group">
    	   <label for="adminEmail">Email ID:</label>
          <input type="email" class="form-control" id="adminEmail" placeholder="Enter Email" name="adminEmail">
    </div>
    <div class="form-group">
    	  <label for="adminMobile">Mobile No:</label>
          <input type="text" class="form-control" id="adminMobile" placeholder="Enter Mobile" name="adminMobile">
    </div>
    <div class="form-group">
    	  <label for="designation">Designation:</label>
          <input type="text" class="form-control" id="adminDesignation" placeholder="Enter Designation" name="adminDesignation">
    </div>
    <div class="form-group">
    	  <label for="adminPassword">Password:</label>
          <input type="password" class="form-control" id="adminPassword" placeholder="Enter Password" name="adminPassword">
    </div>
   <div class="form-group">
    	  <label for="adminRepassword">Re-Password:</label>
          <input type="password" class="form-control" id="adminRepassword" placeholder="Enter Re-Password" name="adminRepassword">
    </div>
    <button type="submit" class="btn btn-success" id="mysubmit">Submit</button>
    </form>
</div>
