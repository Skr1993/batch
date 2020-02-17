<%@page import="com.batch.serviceimpl.ServiceCandidateImpl"%>
<%@page import="com.batch.serviceimpl.ServiceCourseImpl"%>
<%@page import="com.batch.service.ServiceCandidate"%>
<jsp:include page="link.html"></jsp:include>
<jsp:include page="navbar.jsp"></jsp:include>
<jsp:useBean id="candidate" class="com.batch.bean.Candidate">
	<jsp:setProperty property="*" name="candidate"/>
</jsp:useBean>
<%
ServiceCandidate candidate2=new ServiceCandidateImpl();
int status=candidate2.saveCandidate(candidate);
if(status>0){
	out.print("<h1 style='color:green'>Please Wait for while your response is coming soon</h1>");
}

else {
	out.print("<h1 style='color:red'> not record inserted </h1>");
    }
%>