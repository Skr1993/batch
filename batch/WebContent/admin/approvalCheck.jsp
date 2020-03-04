<jsp:useBean id="approveCandidate" class="com.batch.bean.Candidate">
  <jsp:setProperty property="candidateEmail" name="approveCandidate"/>
  <jsp:setProperty property="candidatePassword" name="approveCandidate"/>
  <jsp:setProperty property="candidateRepassword" name="approveCandidate"/>
</jsp:useBean>
<%
String email=approveCandidate.getCandidateEmail();
String repassword=approveCandidate.getCandidateRepassword();
String password=approveCandidate.getCandidatePassword();

ServletContext context=getServletContext();
String approvalEmail=(String)context.getAttribute("approvalEmail");
System.out.print(approvalEmail+" : "+email+"  "+password+"  "+repassword);

if((email != null) 
		&& (!email.isEmpty()) 
		&& (repassword != null) 
		&& (password != null) 
		&& (!repassword.isEmpty()) 
		&& (!password.isEmpty()) 
		&& password.equals(repassword)
		&& (email.equals(approvalEmail))){
	
	out.print(email.equals(approvalEmail));
	
}else{
	
	out.print("Try");
}

%>