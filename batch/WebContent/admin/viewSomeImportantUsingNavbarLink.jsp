<%@ page errorPage="myErrorPage.jsp" %>
<%@ include file="link.html"%>
<%@ include file="navbar.jsp"%>
<%@page import="java.util.List"%>
<%@page import="com.batch.bean.Candidate"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.batch.serviceimpl.ServiceCandidateImpl"%>
<%@page import="com.batch.service.ServiceCandidate"%>
<div class="container-fluid">
  <h2 class="text-center">View All Candidate Information</h2>
  <table class="table table-bordered">
    <thead >
      <tr>
        <th>Id</th>
        <th>Date</th>
        <th>Candidate Name</th>
        <th>Email</th>
        <th>Mobile</th>
        <th>Qualification</th>
        <th>Course</th> 
    </tr>
    </thead>
    <tbody>
    <%
    ServiceCandidate candidate=new ServiceCandidateImpl();
    List<Candidate> list=candidate.viewAllCandidate();
    for(Candidate candidatebean:list){
    %>   
      <tr>
        <td><%=candidatebean.getCandidateId()%></td>
        <td><%=candidatebean.getCandidateCurrentDate()%></td>
        <td><%=candidatebean.getCandidateName()%></td>
        <td><%=candidatebean.getCandidateEmail()%></td>
        <td><%=candidatebean.getCandidateMobile()%></td>
        <td><%=candidatebean.getCandidateQualification()%></td>
        <td><%=candidatebean.getCandidateCourseOne()%></td>
        <td><a href="viewCandidateProfileById.jsp?candidateId=<%=candidatebean.getCandidateId()%>" class="btn-success">Detail</a></td>
        <td><a href="updateCandidateProfileById.jsp?candidateId=<%=candidatebean.getCandidateId()%>" class="btn-success">Update</a></td>
        <td><a href="deleteCandidateProfileById.jsp?candidateId=<%=candidatebean.getCandidateId()%>" class="btn-success">Delete</a></td>
        <td><a href="approveCandidateProfileById.jsp?candidateId=<%=candidatebean.getCandidateId()%>" class="btn-success">Approve</a></td>
       </tr>
     <%} %> 
    </tbody>
  </table>
</div>