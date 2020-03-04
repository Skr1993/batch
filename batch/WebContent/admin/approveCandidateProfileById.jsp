<%@page import="com.batch.serviceimpl.ServiceEmailImpl"%>
<%@page import="com.batch.service.ServiceEmail"%>
<%@page import="javax.websocket.Session"%>
<%@page import="java.net.PasswordAuthentication"%>
<%@page import="org.apache.catalina.Authenticator"%>
<%@page import="java.util.Properties"%>
<%@page import="com.batch.bean.Candidate"%>
<%@page import="com.batch.serviceimpl.ServiceCandidateImpl"%>
<%@page import="com.batch.service.ServiceCandidate"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="java.util.Properties"%>
<%
String id=request.getParameter("candidateId");
int covId=Integer.parseInt(id);
boolean b=Pattern.matches("[0-9]{1,2}", id);
if((!id.isEmpty()) && (id != null) && (b)){
	ServiceCandidate candidate=new ServiceCandidateImpl();
	Candidate candidate2=candidate.viewCandidateById(covId);
	String To=candidate.getCandidateEmailById(candidate2);
	ServletContext context=getServletContext();
	context.setAttribute("approvalEmail",To);
	ServiceEmail serviceEmail=new ServiceEmailImpl();
	serviceEmail.sendEmail(To);
	
	System.out.println("DONE");
	response.sendRedirect("viewSomeImportantUsingNavbarLink.jsp");
}else{
	response.sendRedirect("viewSomeImportantUsingNavbarLink.jsp");
}
%>