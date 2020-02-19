<%@ page errorPage="myErrorPage.jsp" %>
<%@page import="com.batch.bean.Candidate"%>
<%@page import="com.batch.serviceimpl.ServiceCandidateImpl"%>
<%@page import="com.batch.service.ServiceCandidate"%>
<%@ include file="link.html"%>
<%@ include file="navbar.jsp"%>
<jsp:useBean id="candidate" class="com.batch.bean.Candidate">
	<jsp:setProperty property="candidateId" name="candidate"/>
</jsp:useBean>
<%
ServiceCandidate candidateDao=new ServiceCandidateImpl();
Candidate candidateObject=candidateDao.viewCandidateById(candidate.getCandidateId());
%>
<div class="container-fluid">
<div class="row">
  <div class="col-sm-12 bg-success text-white text-center" >
  <h1>Welcome, <%=candidateObject.getCandidateName()%> and Your Id is  <%=candidateObject.getCandidateId()%></h1>
  </div>
</div>
<form action="updateCandidateProfile.jsp" method="post">
<div class="row" style="padding: 30px;">
  	<div class="col-sm-4 text-center" style="padding-top: 60px;" ><img src="../image/profileImageDemo.png" class="img-circle" alt="profileImageDemo"> </div>
    <div  class="col-sm-8" >
		    <div class="row" >
		  		<div class="col-sm-2 bg-primary text-white" style="padding: 10px;">Name</div>
		  		<div class="col-sm-10 bg-info text-white" style="padding: 10px;">
		  		<input type="hidden" name="candidateId" value=<%=candidateObject.getCandidateId()%>>
		  		<input type="text" name="candidateName" value=<%=candidateObject.getCandidateName()%> class="form-control">	  		
		  		</div>
		  	</div>	
		  	<div class="row">
		  		<div class="col-sm-2 bg-primary text-white" style="padding: 10px;">Father Name</div>
		  		<div class="col-sm-10 bg-info text-white" style="padding: 10px;">
		  		<input type="text" name="candidateFatherName" value=<%=candidateObject.getCandidateFatherName()%> class="form-control">
		  		
		  		</div>
		  	</div>
		  	<div class="row">	
		  		<div class="col-sm-2 bg-primary text-white" style="padding: 10px;">Enquiry Date</div>
		  		<div class="col-sm-10 bg-info text-white" style="padding: 10px;">
		  		<input type="text" name="candidateCurrentDate" value=<%=candidateObject.getCandidateCurrentDate()%> class="form-control">
		  		</div>
		  	</div>
		  	<div class="row">	
		  		<div class="col-sm-2 bg-primary text-white" style="padding: 10px;">Email</div>
		  		<div class="col-sm-10 bg-info text-white" style="padding: 10px;">
		  		<input type="text" name="candidateEmail" value=<%=candidateObject.getCandidateEmail()%> class="form-control">
		  		</div>
		  	</div>	
		  	<div class="row">	
		  		<div class="col-sm-2 bg-primary text-white" style="padding: 10px;">Mobile</div>
		  		<div class="col-sm-10 bg-info text-white" style="padding: 10px;">
		  		<input type="text" name="candidateMobile" value=<%=candidateObject.getCandidateMobile()%> class="form-control">
		  		</div>
		  	</div>	
		  	<div class="row">	
		  		<div class="col-sm-2 bg-primary text-white" style="padding: 10px;">College & University</div>
		  		<div class="col-sm-10 bg-info text-white" style="padding: 10px;">
		  		<input type="text" name="candidateCollegeUniversity" value=<%=candidateObject.getCandidateCollegeUniversity()%> class="form-control">
		  		</div>
		  	</div>	
		  	<div class="row">	
		  		<div class="col-sm-2 bg-primary text-white" style="padding: 10px;">Qualification</div>
		  		<div class="col-sm-10 bg-info text-white" style="padding: 10px;">
		  		<input type="text" name="candidateQualification" value=<%=candidateObject.getCandidateQualification()%> class="form-control">
		  		</div>
		  	</div>	
		  	<div class="row">	
		  		<div class="col-sm-2 bg-primary text-white" style="padding: 10px;">PermanentAddress</div>
		  		<div class="col-sm-10 bg-info text-white" style="padding: 10px;">
		  		<input type="text" name="candidatePermanentAddress" value=<%=candidateObject.getCandidatePermanentAddress()%> class="form-control">
		  		</div>
		  	</div>	
		  	<div class="row">	
		  		<div class="col-sm-2 bg-primary text-white" style="padding: 10px;">Course</div>
		  		<div class="col-sm-10 bg-info text-white" style="padding: 10px;">
		  		<input type="text" name="candidateCourseOne" value=<%=candidateObject.getCandidateCourseOne()%> class="form-control">
		  		</div>
		  	</div>	
		  	<div class="row">	
		  		<div class="col-sm-2 bg-primary text-white" style="padding: 10px;">Comment</div>
		  		<div class="col-sm-10 bg-info text-white" style="padding: 10px;">
		  		<input type="text" name="candidateComment" value=<%=candidateObject.getCandidateComment()%> class="form-control">
		  		</div>
		  	</div>	
		  	<div class="row">	
		  		<div class="row">
			  		<div class="col-sm-6 " style="padding: 10px;">
			  			<input type="submit" value="Update" class="form-control  bg-success text-white">
			  		</div>
			  		<div class="col-sm-6 " style="padding: 10px;">
			  			<a href="viewSomeImportantUsingNavbarLink.jsp" class="form-control  bg-success text-white text-center">Cancel</a>
			  		</div>
			  	</div>	
		  	</div>			
		</div>
    </div>
  </form>  
</div>