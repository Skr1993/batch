<%@ page errorPage="myErrorPage.jsp" %>
<%@page import="com.batch.serviceimpl.ServiceCandidateImpl"%>
<%@page import="com.batch.service.ServiceCandidate"%>
<jsp:useBean id="candidate" class="com.batch.bean.Candidate">
	<jsp:setProperty property="*" name="candidate"/>
</jsp:useBean>
<%
out.print(candidate);
ServiceCandidate serviceCandidate=new ServiceCandidateImpl();
int status=serviceCandidate.updateCandidateById(candidate);
if(status>0){
	response.sendRedirect("viewSomeImportantUsingNavbarLink.jsp");
}else{
	response.sendRedirect("updateCandidateProfileById.jsp");
}
%>