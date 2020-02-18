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
  <h1>Welcome,<%=candidateObject.getCandidateName()%></h1>
  </div>
</div>
<div class="row" style="padding: 30px;">
  	<div class="col-sm-4 text-center" style="padding-top: 60px;" ><img src="../image/profileImageDemo.png" class="img-circle" alt="profileImageDemo"> </div>
    <div  class="col-sm-8" >
		    <div class="row" >
		  		<div class="col-sm-2 bg-primary text-white" style="padding: 10px;">Name</div>
		  		<div class="col-sm-10 bg-info text-white" style="padding: 10px;"><%=candidateObject.getCandidateName()%></div>
		  	</div>	
		  	<div class="row">
		  		<div class="col-sm-2 bg-primary text-white" style="padding: 10px;">Father Name</div>
		  		<div class="col-sm-10 bg-info text-white" style="padding: 10px;"><%=candidateObject.getCandidateFatherName()%></div>
		  	</div>
		  	<div class="row">	
		  		<div class="col-sm-2 bg-primary text-white" style="padding: 10px;">Enquery Date</div>
		  		<div class="col-sm-10 bg-info text-white" style="padding: 10px;"><%=candidateObject.getCandidateCurrentDate()%></div>
		  	</div>
		  	<div class="row">	
		  		<div class="col-sm-2 bg-primary text-white" style="padding: 10px;">Email</div>
		  		<div class="col-sm-10 bg-info text-white" style="padding: 10px;"><%=candidateObject.getCandidateEmail()%></div>
		  	</div>	
		  	<div class="row">	
		  		<div class="col-sm-2 bg-primary text-white" style="padding: 10px;">Mobile</div>
		  		<div class="col-sm-10 bg-info text-white" style="padding: 10px;"><%=candidateObject.getCandidateMobile()%></div>
		  	</div>	
		  	<div class="row">	
		  		<div class="col-sm-2 bg-primary text-white" style="padding: 10px;">College & University</div>
		  		<div class="col-sm-10 bg-info text-white" style="padding: 10px;"><%=candidateObject.getCandidateCollegeUniversity()%></div>
		  	</div>	
		  	<div class="row">	
		  		<div class="col-sm-2 bg-primary text-white" style="padding: 10px;">Qualification</div>
		  		<div class="col-sm-10 bg-info text-white" style="padding: 10px;"><%=candidateObject.getCandidateQualification()%></div>
		  	</div>	
		  	<div class="row">	
		  		<div class="col-sm-2 bg-primary text-white" style="padding: 10px;">PermanentAddress</div>
		  		<div class="col-sm-10 bg-info text-white" style="padding: 10px;"><%=candidateObject.getCandidatePermanentAddress()%></div>
		  	</div>	
		  	<div class="row">	
		  		<div class="col-sm-2 bg-primary text-white" style="padding: 10px;">Course</div>
		  		<div class="col-sm-10 bg-info text-white" style="padding: 10px;"><%=candidateObject.getCandidateCourseOne()%></div>
		  	</div>	
		  	<div class="row">	
		  		<div class="col-sm-2 bg-primary text-white" style="padding: 10px;">Comment</div>
		  		<div class="col-sm-10 bg-info text-white" style="padding: 10px;"><%=candidateObject.getCandidateComment()%></div>
		  	</div>		
		</div>
    </div>
</div>