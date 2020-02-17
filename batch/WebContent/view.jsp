<%@page import="java.util.List"%>
<%@page import="com.batch.bean.Candidate"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.batch.serviceimpl.ServiceCandidateImpl"%>
<%@page import="com.batch.service.ServiceCandidate"%>
<div class="container-fluid">
  <h2>View All Candidate Information</h2>
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Id</th>
        <th>Date</th>
        <th>Candidate Name</th>
        <th>Father Name</th>
        <th>Email</th>
        <th>Mobile</th>
        <th>College & University</th>
        <th>Qualification</th>
        <th>Permanent Address</th>
        <th>Course</th> 
        <th>Comment</th>
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
        <td><%=candidatebean.getCandidateFatherName()%></td>
        <td><%=candidatebean.getCandidateEmail()%></td>
        <td><%=candidatebean.getCandidateMobile()%></td>
        <td><%=candidatebean.getCandidateCollegeUniversity()%></td>
        <td><%=candidatebean.getCandidateQualification()%></td>
        <td><%=candidatebean.getCandidatePermanentAddress()%></td>
        <td><%=candidatebean.getCandidateCourseOne()%></td>
        <td><%=candidatebean.getCandidateComment()%></td>
        <td><input type="button" class="btn-success" value="Update"></td>
        <td><input type="button" class="btn-danger" value="Delete"></td>
       </tr>
     <%} %> 
    </tbody>
  </table>
</div>
